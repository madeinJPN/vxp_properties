local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
RESOURCE_NAME = L0_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = rawget
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if nil == L2_2 then
      L2_2 = print
      L3_2 = "[LOG ERROR]: ^3Log '"
      L4_2 = A1_2
      L5_2 = "' does not exist in the logs.^7"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      function L2_2()
        local L0_3, L1_3
      end
      return L2_2
  end
  else
    L2_2 = rawget
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1.__index = L1_1
LogsMetaTable = L0_1
L0_1 = {}
Shared = L0_1
L0_1 = GetResourceState
L1_1 = "ox_lib"
L0_1 = L0_1(L1_1)
L1_1 = L0_1
L0_1 = L0_1.find
L2_1 = "start"
L0_1 = L0_1(L1_1, L2_1)
if not L0_1 then
  L0_1 = print
  L1_1 = "^1ox_lib should be started before this resource^0"
  L2_1 = 2
  L0_1(L1_1, L2_1)
end
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
GetDictionaryLenght = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = ipairs
  L4_2 = ShellsCreators
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L8_2 == A1_2 then
      L2_2 = true
      break
    end
  end
  if not L2_2 then
    L3_2 = ShellsCreators
    L4_2 = ShellsCreators
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = A1_2
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = ShellsData
    L9_2[L7_2] = L8_2
    L9_2 = ShellsData
    L9_2 = L9_2[L7_2]
    L9_2.creator = A1_2
    L9_2 = ShellsDataIds
    L10_2 = ShellsDataIds
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L9_2[L10_2] = L7_2
  end
end
InsertInteriors = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = pairs
  L2_2 = FurnitureConfig
  L2_2 = L2_2.Furniture
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2.items
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.object
      if L13_2 == A0_2 then
        return L12_2
      else
        L13_2 = L12_2.group_items
        if L13_2 then
          L13_2 = ipairs
          L14_2 = L12_2.group_items
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
            L19_2 = L18_2.object
            if L19_2 == A0_2 then
              return L18_2
            end
          end
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
GetFurnitureDataFromObject = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Config
  L0_2 = L0_2.Functions
  L0_2 = L0_2.ClothingMenu
  if L0_2 then
    L0_2 = ipairs
    L1_2 = Config
    L1_2 = L1_2.WardrobeObjects
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = GetFurnitureDataFromObject
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = lib
        L7_2 = L7_2.print
        L7_2 = L7_2.debug
        L8_2 = "Adding wardrobe object %s"
        L9_2 = L8_2
        L8_2 = L8_2.format
        L10_2 = L5_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = Config
        L7_2 = L7_2.InteractableProps
        L8_2 = lib
        L8_2 = L8_2.table
        L8_2 = L8_2.deepclone
        L9_2 = Config
        L9_2 = L9_2.Functions
        L9_2 = L9_2.ClothingMenu
        L8_2 = L8_2(L9_2)
        L7_2[L5_2] = L8_2
        L7_2 = Config
        L7_2 = L7_2.InteractableProps
        L7_2 = L7_2[L5_2]
        L8_2 = L6_2.label
        L7_2.label = L8_2
        L7_2 = Config
        L7_2 = L7_2.InteractableProps
        L7_2 = L7_2[L5_2]
        L7_2.useObject = true
        L7_2 = Config
        L7_2 = L7_2.InteractableProps
        L7_2 = L7_2[L5_2]
        L7_2.radius = 2.5
      else
        L7_2 = lib
        L7_2 = L7_2.print
        L7_2 = L7_2.error
        L8_2 = "Object %s is not a furniture"
        L9_2 = L8_2
        L8_2 = L8_2.format
        L10_2 = L5_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.InventoryObjects
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = type
    L7_2 = L5_2.slots
    L6_2 = L6_2(L7_2)
    if "number" == L6_2 then
      L6_2 = type
      L7_2 = L5_2.weight
      L6_2 = L6_2(L7_2)
      if "number" == L6_2 then
        L6_2 = GetFurnitureDataFromObject
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L7_2 = lib
          L7_2 = L7_2.print
          L7_2 = L7_2.debug
          L8_2 = "Adding inventory object %s"
          L9_2 = L8_2
          L8_2 = L8_2.format
          L10_2 = L4_2
          L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
          L7_2(L8_2, L9_2, L10_2)
          L7_2 = Config
          L7_2 = L7_2.InteractableProps
          L8_2 = {}
          L9_2 = L5_2.label
          if not L9_2 then
            L9_2 = L6_2.label
          end
          L8_2.label = L9_2
          L9_2 = L5_2.icon
          if not L9_2 then
            L9_2 = "fas fa-box"
          end
          L8_2.icon = L9_2
          L9_2 = L5_2.radius
          if not L9_2 then
            L9_2 = 2.5
          end
          L8_2.radius = L9_2
          L8_2.useObject = true
          L9_2 = L5_2.maxPerProperty
          if not L9_2 then
            L9_2 = 1
          end
          L8_2.maxPerProperty = L9_2
          L9_2 = L5_2.breakable
          if not L9_2 then
            L9_2 = false
          end
          L8_2.breakable = L9_2
          L9_2 = {}
          L10_2 = L5_2.label
          if not L10_2 then
            L10_2 = L6_2.label
          end
          L9_2.label = L10_2
          L10_2 = L5_2.slots
          L9_2.slots = L10_2
          L10_2 = L5_2.weight
          L9_2.weight = L10_2
          L8_2.inventory = L9_2
          L7_2[L4_2] = L8_2
        else
          L7_2 = lib
          L7_2 = L7_2.print
          L7_2 = L7_2.error
          L8_2 = "Object %s is not a furniture"
          L9_2 = L8_2
          L8_2 = L8_2.format
          L10_2 = L4_2
          L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
          L7_2(L8_2, L9_2, L10_2)
        end
    end
    else
      L6_2 = lib
      L6_2 = L6_2.print
      L6_2 = L6_2.error
      L7_2 = "Inventory object %s is not properly configured"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L4_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
end
LoadInventoryWardrobeObjects = L0_1
L0_1 = IsDuplicityVersion
L0_1 = L0_1()
if L0_1 then
  L0_1 = {}
  Server = L0_1
else
  L0_1 = {}
  L1_1 = {}
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.all
  L1_1.all = L2_1
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.owned
  L1_1.owned = L2_1
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.forSale
  L1_1.forSale = L2_1
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.forRent
  L1_1.forRent = L2_1
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.renter
  L1_1.renter = L2_1
  L2_1 = Config
  L2_1 = L2_1.Blips
  L2_1 = L2_1.DefaultVisibility
  L2_1 = L2_1.keyholder
  L1_1.keyholder = L2_1
  L0_1.blipsVisibility = L1_1
  L1_1 = {}
  L0_1.menuVisibility = L1_1
  L1_1 = {}
  L0_1.furnitureInfo = L1_1
  L0_1.managePropertyId = nil
  Client = L0_1
  L0_1 = {}
  L0_1.furnitureMenuVisibility = true
  L0_1.objectMenuVisibility = true
  L1_1 = {}
  L2_1 = {}
  function L3_1()
    local L0_2, L1_2
    L0_2 = ExitFurniture
    L0_2()
  end
  L2_1.furnitureMenuVisibility = L3_1
  function L3_1()
    local L0_2, L1_2
    L0_2 = ExitFurniture
    L0_2()
  end
  L2_1.objectMenuVisibility = L3_1
  function L3_1()
    local L0_2, L1_2
    L0_2 = Client
    L0_2.managePropertyId = nil
  end
  L2_1.managePropertyMenuVisibility = L3_1
  function L3_1()
    local L0_2, L1_2
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "init"
    L0_2(L1_2)
  end
  LoadUi = L3_1
  function L3_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L0_2 = {}
    L1_2 = pairs
    L2_2 = FurnitureConfig
    L2_2 = L2_2.Furniture
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = {}
      L8_2 = L6_2.label
      L7_2.label = L8_2
      L8_2 = L6_2.icon
      L7_2.icon = L8_2
      L8_2 = L6_2.image
      L7_2.image = L8_2
      L8_2 = {}
      L7_2.items = L8_2
      L0_2[L5_2] = L7_2
    end
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "setFurniture"
    L2_2.data = L0_2
    L1_2(L2_2)
  end
  LoadFurnitureConfig = L3_1
  function L3_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2
    if A0_2 then
      L1_2 = FurnitureConfig
      L1_2 = L1_2.Furniture
      L1_2 = L1_2[A0_2]
      if L1_2 then
        L1_2 = {}
        L2_2 = FurnitureConfig
        L2_2 = L2_2.Furniture
        L2_2 = L2_2[A0_2]
        L1_2[A0_2] = L2_2
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "setFurnitureCategory"
        L3_2.data = L1_2
        L2_2(L3_2)
    end
    else
      L1_2 = lib
      L1_2 = L1_2.print
      L1_2 = L1_2.error
      L2_2 = "Invalid furniture category: "
      L3_2 = tostring
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
    end
  end
  LoadFurnitureCategory = L3_1
  function L3_1(A0_2)
    local L1_2, L2_2, L3_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "showHelper"
    L3_2 = {}
    L3_2.keyActions = A0_2
    L2_2.data = L3_2
    L1_2(L2_2)
  end
  ShowHelper = L3_1
  function L3_1()
    local L0_2, L1_2
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "hideHelper"
    L0_2(L1_2)
  end
  HideHelper = L3_1
  L3_1 = RegisterNUICallback
  L4_1 = "init"
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L2_2 = {}
    L3_2 = lib
    L3_2 = L3_2.getLocales
    L3_2 = L3_2()
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L11_2 = L8_2
      L10_2 = L8_2.find
      L12_2 = "^ui_"
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L2_2[L8_2] = L9_2
      end
    end
    L4_2 = L3_2["$"]
    L2_2["$"] = L4_2
    L4_2 = A1_2
    L5_2 = {}
    L5_2.locales = L2_2
    L6_2 = {}
    L7_2 = Config
    L7_2 = L7_2.ColorTheme
    L7_2 = L7_2.useOxTheme
    if L7_2 then
      L7_2 = GetConvar
      L8_2 = "ox:primaryColor"
      L9_2 = "blue"
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        goto lbl_42
      end
    end
    L7_2 = GetConvar
    L8_2 = "nolag:primaryColor"
    L9_2 = "violet"
    L7_2 = L7_2(L8_2, L9_2)
    ::lbl_42::
    L6_2.primaryColor = L7_2
    L7_2 = Config
    L7_2 = L7_2.ColorTheme
    L7_2 = L7_2.useOxTheme
    if L7_2 then
      L7_2 = GetConvarInt
      L8_2 = "ox:primaryShade"
      L9_2 = 8
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        goto lbl_58
      end
    end
    L7_2 = GetConvarInt
    L8_2 = "nolag:primaryShade"
    L9_2 = 8
    L7_2 = L7_2(L8_2, L9_2)
    ::lbl_58::
    L6_2.primaryShade = L7_2
    L7_2 = FurnitureConfig
    L7_2 = L7_2.Furniture
    L6_2.furniture = L7_2
    L7_2 = Config
    L7_2 = L7_2.PropertiesPerPage
    L6_2.propertiesPerPage = L7_2
    L7_2 = Config
    L7_2 = L7_2.EnableRenting
    L6_2.enableRenting = L7_2
    L7_2 = Config
    L7_2 = L7_2.EnableForceSale
    L6_2.enableForceSale = L7_2
    L7_2 = Config
    L7_2 = L7_2.EnableSellProperty
    L6_2.enableSellProperty = L7_2
    L7_2 = Config
    L7_2 = L7_2.Debug
    L6_2.debug = L7_2
    L7_2 = Config
    L7_2 = L7_2.EnableMap
    L6_2.enableMap = L7_2
    L7_2 = Config
    L7_2 = L7_2.MaxRentDays
    L6_2.maxRentDays = L7_2
    L7_2 = Config
    L7_2 = L7_2.DisableSocietyBuying
    L6_2.disableSocietyBuying = L7_2
    L7_2 = Config
    L7_2 = L7_2.DisableSocietyRenting
    L6_2.disableSocietyRenting = L7_2
    L7_2 = FurnitureConfig
    L7_2 = L7_2.DisplayType
    if not L7_2 then
      L7_2 = "both"
    end
    L6_2.furnitureDisplayType = L7_2
    L7_2 = {}
    L8_2 = Config
    L8_2 = L8_2.StarterApartment
    L8_2 = L8_2.DisableForceSale
    L7_2.DisableForceSale = L8_2
    L8_2 = Config
    L8_2 = L8_2.StarterApartment
    L8_2 = L8_2.DisableSell
    L7_2.DisableSell = L8_2
    L8_2 = Config
    L8_2 = L8_2.StarterApartment
    L8_2 = L8_2.DisableRent
    L7_2.DisableRent = L8_2
    L8_2 = Config
    L8_2 = L8_2.StarterApartment
    L8_2 = L8_2.DisableInactivity
    L7_2.DisableInactivity = L8_2
    L6_2.starterApartment = L7_2
    L5_2.config = L6_2
    L4_2(L5_2)
  end
  L3_1(L4_1, L5_1)
  L3_1 = RegisterNUICallback
  L4_1 = "sendPrimaryColor"
  function L5_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L2_2 = A1_2
    L3_2 = 1
    L2_2(L3_2)
    L2_2 = Config
    L2_2 = L2_2.ColorTheme
    L2_2 = L2_2.laserBasedOnTheme
    if L2_2 then
      L2_2 = ExtractRGB
      L3_2 = A0_2.rgba
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      L5_2 = Config
      L5_2 = L5_2.ColorTheme
      L6_2 = {}
      L7_2 = tonumber
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      L6_2.r = L7_2
      L7_2 = tonumber
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      L6_2.g = L7_2
      L7_2 = tonumber
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      L6_2.b = L7_2
      L6_2.a = 200
      L5_2.laser = L6_2
    end
  end
  L3_1(L4_1, L5_1)
  function L3_1(A0_2)
    local L1_2
    L1_2 = Client
    L1_2 = L1_2.menuVisibility
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  GetMenuVisibility = L3_1
  function L3_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
    L0_2 = pairs
    L1_2 = Client
    L1_2 = L1_2.menuVisibility
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 then
        L6_2 = true
        return L6_2
      end
    end
    L0_2 = false
    return L0_2
  end
  IsAnyMenuOpen = L3_1
  function L3_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Setting visibility of menu %s to %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Client
    L2_2 = L2_2.menuVisibility
    L2_2[A0_2] = A1_2
    if not A1_2 then
      L2_2 = IsAnyMenuOpen
      L2_2 = L2_2()
      if not L2_2 then
        L2_2 = SetNuiFocus
        L3_2 = false
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = L2_1
        L2_2 = L2_2[A0_2]
        if L2_2 then
          L2_2 = L2_1
          L2_2 = L2_2[A0_2]
          L2_2()
        end
    end
    elseif A1_2 then
      L2_2 = IsFreecamEnabled
      L2_2 = L2_2()
      if not L2_2 then
        L2_2 = L1_1
        L2_2 = L2_2[A0_2]
        if not L2_2 then
          L2_2 = lib
          L2_2 = L2_2.print
          L2_2 = L2_2.debug
          L3_2 = "Setting cursor visibility to %s"
          L4_2 = L3_2
          L3_2 = L3_2.format
          L5_2 = A1_2
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
          L2_2(L3_2, L4_2, L5_2, L6_2)
          L2_2 = SetNuiFocus
          L3_2 = true
          L4_2 = true
          L2_2(L3_2, L4_2)
          L2_2 = SetNuiFocusKeepInput
          L3_2 = L0_1
          L3_2 = L3_2[A0_2]
          L2_2(L3_2)
        end
      end
    end
  end
  L4_1 = RegisterNUICallback
  L5_1 = "syncVisibilityAtoms"
  function L6_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L3_1
    L3_2 = A0_2.menu
    L4_2 = A0_2.value
    L2_2(L3_2, L4_2)
    L2_2 = A1_2
    L3_2 = "ok"
    L2_2(L3_2)
  end
  L4_1(L5_1, L6_1)
end
