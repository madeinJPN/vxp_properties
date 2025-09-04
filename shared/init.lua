-- Shared helpers and basic state used by both client and server.

-- Name of this resource (useful for debugging)
RESOURCE_NAME = GetCurrentResourceName()

--[[
  LogsMetaTable
  Some logging scripts set a metatable on a `Logs` table so missing
  log types do not throw an error.  When a key does not exist we print a
  helpful message and return a dummy function.
]]
LogsMetaTable = {
  __index = function(tbl, key)
    if type(key) ~= 'string' then
      return rawget(tbl, key)
    end

    local fn = rawget(tbl, key)
    if not fn then
      print(('[LOG ERROR]: ^3Log %q does not exist in the logs.^7'):format(key))
      return function() end
    end

    return fn
  end,
}

-- Used as a container for shared exports if required in the future
Shared = {}

-- Warn the user if ox_lib is not running. Many features rely on it.
if not GetResourceState('ox_lib'):find('start') then
  print('^1ox_lib should be started before this resource^0', 2)
end

-- Counts the number of entries in a dictionary style table
function GetDictionaryLength(tbl)
  local count = 0
  for _ in pairs(tbl) do
    count = count + 1
  end
  return count
end

--[[
  InsertInteriors(data, creator)
  Registers a bundle of shell data.  Each interior is stored in
  `ShellsData` and its id inserted into `ShellsDataIds`.  The `creator`
  string is tracked so shells can be attributed to their source.
]]
function InsertInteriors(data, creator)
  local exists = false
  for _, name in ipairs(ShellsCreators) do
    if name == creator then
      exists = true
      break
    end
  end

  if not exists then
    table.insert(ShellsCreators, creator)
  end

  for id, info in pairs(data) do
    ShellsData[id] = info
    ShellsData[id].creator = creator
    table.insert(ShellsDataIds, id)
  end
end

--[[
  GetFurnitureDataFromObject(object)
  Searches the furniture configuration for an entry matching the given
  object name.  Returns the item data or `nil` if no match is found.
]]
function GetFurnitureDataFromObject(object)
  for _, category in pairs(FurnitureConfig.Furniture) do
    for _, item in ipairs(category.items) do
      if item.object == object then
        return item
      end
      if item.group_items then
        for _, groupItem in ipairs(item.group_items) do
          if groupItem.object == object then
            return groupItem
          end
        end
      end
    end
  end
  return nil
end

--[[
  LoadInventoryWardrobeObjects()
  Populates `Config.InteractableProps` with any wardrobe or inventory
  objects defined in the configuration.  The function validates the
  supplied data and prints helpful debug information.
]]
function LoadInventoryWardrobeObjects()
  -- Clothing / wardrobe objects
  if Config.Functions.ClothingMenu then
    for _, object in ipairs(Config.WardrobeObjects) do
      local data = GetFurnitureDataFromObject(object)
      if data then
        lib.print.debug(('Adding wardrobe object %s'):format(object))
        Config.InteractableProps[object] = lib.table.deepclone(Config.Functions.ClothingMenu)
        local entry = Config.InteractableProps[object]
        entry.label = data.label
        entry.useObject = true
        entry.radius = 2.5
      else
        lib.print.error(('Object %s is not a furniture'):format(object))
      end
    end
  end

  -- Inventory objects
  for object, info in pairs(Config.InventoryObjects) do
    if type(info.slots) == 'number' and type(info.weight) == 'number' then
      local data = GetFurnitureDataFromObject(object)
      if data then
        lib.print.debug(('Adding inventory object %s'):format(object))
        Config.InteractableProps[object] = {
          label = info.label or data.label,
          icon = info.icon or 'fas fa-box',
          radius = info.radius or 2.5,
          useObject = true,
          maxPerProperty = info.maxPerProperty or 1,
          breakable = info.breakable or false,
          inventory = {
            label = info.label or data.label,
            slots = info.slots,
            weight = info.weight,
          }
        }
      else
        lib.print.error(('Object %s is not a furniture'):format(object))
      end
    else
      lib.print.error(('Inventory object %s is not properly configured'):format(object))
    end
  end
end

-- ========================================================================
-- Environment specific logic
-- ========================================================================

if IsDuplicityVersion() then
  -- Server side: placeholder for future shared utilities
  Server = {}
  return
end

-- Client side state ------------------------------------------------------

Client = {
  blipsVisibility = {
    all = Config.Blips.DefaultVisibility.all,
    owned = Config.Blips.DefaultVisibility.owned,
    forSale = Config.Blips.DefaultVisibility.forSale,
    forRent = Config.Blips.DefaultVisibility.forRent,
    renter = Config.Blips.DefaultVisibility.renter,
    keyholder = Config.Blips.DefaultVisibility.keyholder,
  },
  menuVisibility = {},      -- menu name -> boolean
  furnitureInfo = {},       -- dynamic info used by the furniture editor
  managePropertyId = nil,   -- property currently being managed
}

-- Menus that should keep player input while focused
local keepInput = {
  furnitureMenuVisibility = true,
  objectMenuVisibility = true,
}

-- Cleanup functions when a menu is fully closed
local menuCleanup = {
  furnitureMenuVisibility = function() ExitFurniture() end,
  objectMenuVisibility = function() ExitFurniture() end,
  managePropertyMenuVisibility = function() Client.managePropertyId = nil end,
}

-- Sends the initial message so the NUI loads locales and config
function LoadUi()
  SendNUIMessage({ action = 'init' })
end

-- Sends all furniture categories to the NUI
function LoadFurnitureConfig()
  local categories = {}
  for id, category in pairs(FurnitureConfig.Furniture) do
    categories[id] = {
      label = category.label,
      icon = category.icon,
      image = category.image,
      items = {},
    }
  end
  SendNUIMessage({ action = 'setFurniture', data = categories })
end

-- Sends a single furniture category to the NUI
function LoadFurnitureCategory(category)
  local data = FurnitureConfig.Furniture[category]
  if data then
    SendNUIMessage({ action = 'setFurnitureCategory', data = { [category] = data } })
  else
    lib.print.error('Invalid furniture category: ' .. tostring(category))
  end
end

-- Displays a small helper block in the UI
function ShowHelper(keyActions)
  SendNUIMessage({ action = 'showHelper', data = { keyActions = keyActions } })
end

function HideHelper()
  SendNUIMessage({ action = 'hideHelper' })
end

-- Initialises the UI and sends basic configuration and locale strings
RegisterNUICallback('init', function(_, cb)
  local locales = {}
  for k, v in pairs(lib.getLocales()) do
    if k:find('^ui_') then
      locales[k] = v
    end
  end
  locales['$'] = lib.getLocales()['$']

  cb({
    locales = locales,
    config = {
      primaryColor = GetConvar('ox:primaryColor', GetConvar('nolag:primaryColor', 'violet')),
      primaryShade = GetConvarInt('ox:primaryShade', GetConvarInt('nolag:primaryShade', 8)),
      furniture = FurnitureConfig.Furniture,
      propertiesPerPage = Config.PropertiesPerPage,
      enableRenting = Config.EnableRenting,
      enableForceSale = Config.EnableForceSale,
      enableSellProperty = Config.EnableSellProperty,
      debug = Config.Debug,
      enableMap = Config.EnableMap,
    }
  })
end)

-- Allows the UI to send the resolved primary color so we can tint lasers
RegisterNUICallback('sendPrimaryColor', function(data, cb)
  cb(1)
  if Config.ColorTheme.laserBasedOnTheme then
    local r, g, b = ExtractRGB(data.rgba)
    Config.ColorTheme.laser = {
      r = tonumber(r),
      g = tonumber(g),
      b = tonumber(b),
      a = 200,
    }
  end
end)

-- Returns whether a specific menu is visible
function GetMenuVisibility(menu)
  return Client.menuVisibility[menu]
end

-- Checks if any menu is currently open
function IsAnyMenuOpen()
  for _, visible in pairs(Client.menuVisibility) do
    if visible then return true end
  end
  return false
end

-- Sets the visibility of a menu and manages focus
function SetMenuVisibility(menu, visible)
  lib.print.debug(('Setting visibility of menu %s to %s'):format(menu, visible))
  Client.menuVisibility[menu] = visible

  if not visible then
    if not IsAnyMenuOpen() then
      SetNuiFocus(false, false)
      if menuCleanup[menu] then menuCleanup[menu]() end
    end
    return
  end

  -- Opening a menu
  if not IsFreecamEnabled() then
    lib.print.debug(('Setting cursor visibility to %s'):format(visible))
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(keepInput[menu] or false)
  end
end

-- UI asks to sync menu visibility (e.g. when user closes a window)
RegisterNUICallback('syncVisibilityAtoms', function(data, cb)
  SetMenuVisibility(data.menu, data.value)
  cb('ok')
end)

