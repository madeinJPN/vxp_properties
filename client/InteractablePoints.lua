local currentSelectHandler

-- Primary interaction keybind used across all zones
PrimaryKeybind = lib.addKeybind({
  name = "properties_interact",
  description = locale("keybind_properties_interact"),
  defaultKey = Config.Keybinds.Interact,
  onPressed = function()
    if currentSelectHandler then
      currentSelectHandler()
    end
  end
})

---Represents an interactable point inside a property
---@class InteractablePoint
---@field id any Identifier returned by the active library
---@field isActive boolean Whether the zone is currently active
---@field handler table|number Data returned by the active library
---@field data table Original definition passed on creation
local InteractablePoint = {}
InteractablePoint.__index = InteractablePoint

---Create a new interactable point
---@param data table Definition containing coords, options and property
---@return InteractablePoint
function InteractablePoint.new(data)
  local self = setmetatable({
    isActive = false,
    handler = nil,
    data = data
  }, InteractablePoint)

  self.id = data.options.id
  data.id = data.options.uniqueId

  self:createZone(true)
  return self
end

---(Re)create the zone for this interactable point
---@param initial boolean? whether this is the first creation
function InteractablePoint:createZone(initial)
  local coords = self.data.coords
  local opts = self.data.options
  local property = self.data.property
  local object = self.data.object

  if initial and opts.onCreate then
    opts.onCreate(property, coords, self)
  end

  self.handler = self:createZoneByType(self.data, coords, opts, property, object)
end

---Builds a function executed when the primary keybind is pressed
---@param opts table Options configured for the interactable point
---@param property table Property instance used for key checks
---@param pointData table Original data for the interactable point
---@return fun() handler Function executed on interaction
function InteractablePoint:createOnSelectFunction(opts, property, pointData)
  return function()
    if opts.canInteract then
      local allowed, reason = opts.canInteract(property)
      if not allowed then
        Framework.Notify({ description = reason, type = "error" })
        return false
      end
    end

    if opts.requireKeys and not property:hasKey(pointData.options.lock) then
      if opts.breakable then
        if Config.EnableLockpick then
          local success = Config.LockPick(0.5, 2, 5)
          if not success then
            Framework.Notify({
              description = locale("lockpick_failed"),
              type = "error"
            })
            return false
          end
        elseif Config.PoliceRaid.Enabled then
          if Framework.isPlayerAuthorizedToRaid() then
            local success = Config.LockPick(0.5, 2, 5)
            if not success then
              Framework.Notify({
                description = locale("failed_to_raid_property"),
                type = "error"
              })
              return false
            end
          else
            Framework.Notify({
              description = locale("no_keys"),
              type = "error"
            })
            return false
          end
        else
          Framework.Notify({ description = locale("no_keys"), type = "error" })
          return false
        end
      else
        Framework.Notify({ description = locale("no_keys"), type = "error" })
        return false
      end
    end

    opts.onSelect(property, pointData)
    return true
  end
end

---Create a basic lib zone used as a fallback for all libraries
function InteractablePoint:createDefaultZone(pointData, coords, opts, property)
  return lib.zones.sphere({
    coords = coords,
    radius = opts.radius or 1.0,
    debug = Config.Debug,
    debugColour = Config.ColorTheme.laser,
    zone = true,
    onEnter = function()
      if not opts.hideTextUI and opts.label then
        Framework.showTextUI(opts.label, { icon = opts.icon })
      end

      if opts.onSelect then
        currentSelectHandler = self:createOnSelectFunction(opts, property, pointData)
      end

      if opts.onEnter then
        opts.onEnter(property, pointData)
      end

      self.isActive = true
    end,
    onExit = function()
      if not opts.hideTextUI and opts.label then
        Framework.hideTextUI()
      end

      if opts.onExit then
        opts.onExit(property, coords, pointData)
      end

      self.isActive = false
      currentSelectHandler = nil
    end,
    inside = opts.inside and function()
      opts.inside(property, pointData)
    end or nil
  })
end

-- Zone creation helpers for different interaction libraries -----------------

function InteractablePoint:createOxTargetZone(pointData, coords, opts, property, object)
  if opts.zone or opts.inside or opts.onExit or opts.onEnter then
    return self:createDefaultZone(pointData, coords, opts, property)
  end

  if opts.useObject and object then
    exports.ox_target:addLocalEntity(object, {
      {
        icon = opts.icon,
        label = opts.label,
        distance = opts.distance or Config.InteractDistance,
        onSelect = self:createOnSelectFunction(opts, property, pointData)
      }
    })
    return object
  end

  return exports.ox_target:addSphereZone({
    coords = coords,
    radius = opts.radius or Config.InteractRadius,
    debug = Config.Debug,
    debugColour = Config.ColorTheme.laser,
    options = {
      {
        icon = opts.icon,
        label = opts.label,
        distance = opts.distance or Config.InteractDistance,
        onSelect = self:createOnSelectFunction(opts, property, pointData)
      }
    }
  })
end

function InteractablePoint:createInteractZone(pointData, coords, opts, property, object)
  if opts.zone or opts.inside or opts.onExit or opts.onEnter then
    return self:createDefaultZone(pointData, coords, opts, property)
  end

  if opts.useObject and object then
    exports.interact:AddLocalEntityInteraction({
      entity = object,
      distance = opts.radius or Config.InteractRadius,
      interactDst = opts.distance or Config.InteractDistance,
      options = {
        {
          label = opts.label,
          action = self:createOnSelectFunction(opts, property, pointData)
        }
      }
    })
    return object
  end

  local id = exports.interact:AddInteraction({
    coords = vector3(coords.x, coords.y, coords.z),
    distance = opts.radius or Config.InteractDistance,
    interactDst = opts.distance or Config.InteractDistance,
    options = {
      {
        label = opts.label,
        action = self:createOnSelectFunction(opts, property, pointData)
      }
    }
  })

  return { coords = coords, radius = opts.radius, id = id }
end

function InteractablePoint:createSleeplessInteractZone(pointData, coords, opts, property, object)
  if opts.zone or opts.inside or opts.onExit or opts.onEnter then
    return self:createDefaultZone(pointData, coords, opts, property)
  end

  local radius = opts.radius or Config.InteractRadius
  local distance = opts.distance or Config.InteractDistance

  if opts.useObject and object then
    exports.sleepless_interact:addLocalEntity(object, {
      label = opts.label,
      distance = distance,
      icon = opts.icon,
      onSelect = self:createOnSelectFunction(opts, property, pointData)
    })
    return object
  end

  local id = exports.sleepless_interact:addCoords(coords.xyz, {
    label = opts.label,
    distance = distance,
    icon = opts.icon,
    onSelect = self:createOnSelectFunction(opts, property, pointData)
  })

  return { coords = coords, radius = radius, id = id }
end

function InteractablePoint:createSleeplessInteractV2Zone(pointData, coords, opts, property, object)
  if opts.zone or opts.inside or opts.onExit or opts.onEnter then
    return self:createDefaultZone(pointData, coords, opts, property)
  end

  local spriteData = {
    coords = object and GetEntityCoords(object) or coords,
    key = PrimaryKeybind:getCurrentKey(),
    shape = "hex",
    distance = opts.radius or Config.InteractRadius,
    onEnter = function()
      currentSelectHandler = self:createOnSelectFunction(opts, property, pointData)
    end,
    onExit = function()
      currentSelectHandler = nil
    end
  }

  if opts.useObject and object then
    spriteData.entity = object
    return exports.bl_sprites:spriteOnEntity(spriteData)
  end

  return exports.bl_sprites:sprite(spriteData)
end

function InteractablePoint:createBlSpritesZone(pointData, coords, opts, property, object)
  return self:createSleeplessInteractV2Zone(pointData, coords, opts, property, object)
end

---Creates a zone using the configured interaction library
function InteractablePoint:createZoneByType(pointData, coords, opts, property, object)
  local creators = {
    ox_target = self.createOxTargetZone,
    interact = self.createInteractZone,
    sleepless_interact = self.createSleeplessInteractZone,
    sleepless_interactv2 = self.createSleeplessInteractV2Zone,
    bl_sprites = self.createBlSpritesZone
  }

  local creator = creators[Config.InteractOption]
  if creator then
    return creator(self, pointData, coords, opts, property, object)
  end

  return self:createDefaultZone(pointData, coords, opts, property, object)
end

---Change the label shown to the player
function InteractablePoint:setLabel(label)
  self.data.options.label = label
  self:remove()
  self:createZone()
end

---Change the interaction radius
function InteractablePoint:setRadius(radius)
  self.data.options.radius = radius
  self:remove()
  self:createZone()
end

---Toggle whether the player needs keys for the interaction
function InteractablePoint:setRequireKeys(enabled)
  self.data.options.requireKeys = enabled
end

---Move the zone to new coordinates
function InteractablePoint:setCoords(coords)
  if self.data.options.useObject then return end
  self.data.coords = coords
  self:remove()
  self:createZone()
end

---Remove the zone and clean up
function InteractablePoint:remove()
  local handler = self.handler
  local coords = self.data.coords
  local opts = self.data.options
  local property = self.data.property
  local object = self.data.object

  if type(handler) ~= "number" and self.isActive then
    currentSelectHandler = nil
    if opts.onExit then
      opts.onExit(property, coords)
    end
  end

  if not opts.hideTextUI and opts.label then
    Framework.hideTextUI()
  end

  if opts.onRemove then
    opts.onRemove(property, coords)
  end

  local option = Config.InteractOption

  if option == "ox_target" then
    if not opts.zone then
      if opts.useObject and object then
        exports.ox_target:removeLocalEntity(handler)
      else
        exports.ox_target:removeZone(handler)
      end
    end
  elseif option == "interact" then
    if not opts.zone then
      if opts.useObject and object then
        exports.interact:RemoveLocalEntityInteraction(handler)
      else
        exports.interact:RemoveInteraction(handler.id)
      end
    end
  elseif option == "sleepless_interact" then
    if not opts.zone then
      if opts.useObject and object then
        exports.sleepless_interact:removeLocalEntity(handler)
      else
        exports.sleepless_interact:removeById(handler.id, false)
      end
    end
  elseif option == "sleepless_interactv2" then
    if not opts.zone then
      if opts.useObject and object then
        exports.sleepless_interact:removeLocalEntity(handler)
      else
        exports.sleepless_interact:removeCoords(handler.id, false)
      end
    end
  elseif option == "bl_sprites" then
    if not opts.zone then
      handler.removeSprite(handler)
    end
  else
    handler.remove(handler)
  end
end

return InteractablePoint

