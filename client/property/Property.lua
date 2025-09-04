--[[@class Property
  Basic representation of a property owned by players. Handles zone and blip
  creation plus helper callbacks for metadata stored on the server.
]]

local Property = {}
Property.__index = Property

---Create a new property instance
---@param id number|string
---@param data table
function Property:new(id, data)
  local obj = setmetatable({
    id = id,
    owner = data.owner,
    ownerType = data.ownerType,
    label = data.label,
    address = data.address,
    price = data.price,
    rentPrice = data.rentPrice or 0,
    type = string.lower(data.type),
    blip = {},
    doorLocked = data.metadata and data.metadata.doorLocked or false,
    doors = {},
    buildingId = data.buildingId,
    keyHolders = data.keyHolders or {},
    forSale = data.forSale,
    forRent = Config.EnableRenting and data.forRent or false,
    additionalLocks = {},
    spawnedFurniture = {inside = {}, outside = {}},
    interactablePoints = {},
    metadata = data.metadata or {},
    rentData = data.rentData,
  }, Property)

  obj:createZones()
  obj:createBlip()
  return obj
end

---Fetch extended metadata from the server
function Property:getMetadata()
  local result = lib.callback.await("nolag_properties:server:property:getPropertyMetadata", false, self.id)
  if not result then
    result = {images = {}, description = "", tags = {}}
  end
  return result
end

function Property:getPurchaseInfo()
  local result = lib.callback.await("nolag_properties:server:property:getPropertyPurchaseInfo", false, self.id)
  if not result then
    result = {purchaseDate = nil, purchasePrice = nil}
  end
  return result
end

function Property:getAdditionalLocks()
  local result = lib.callback.await("nolag_properties:server:property:getPropertyAdditionalLocks", false, self.id)
  if not result then result = {} end
  return result
end

function Property:getRentData()
  local result = lib.callback.await("nolag_properties:server:property:getPropertyRentData", false, self.id)
  if not result then result = {} end
  return result
end

---Create interaction zones for entering the property
function Property:createZones()
  if not self.metadata.enterData then return end

  self.enterPropertyZone = lib.zones.sphere({
    coords = self.metadata.enterData,
    radius = 1.5,
    onEnter = function()
      self:enterPropertyZone()
    end,
    onExit = function()
      self:exitPropertyZone()
    end,
  })

  -- big yard zone used for showing markers and blips
  self.bigZone = lib.zones.sphere({
    coords = self.metadata.enterData,
    radius = 25.0,
    onEnter = function()
      self:enterBigZone()
    end,
    onExit = function()
      self:exitBigZone()
    end,
  })
end

---Remove zones
function Property:deleteZones()
  if self.enterPropertyZone then
    self.enterPropertyZone:remove()
    self.enterPropertyZone = nil
  end
  if self.bigZone then
    self.bigZone:remove()
    self.bigZone = nil
  end
end

---(placeholder) Called when the player enters the small property zone
function Property:enterPropertyZone()
  lib.print.debug("Entered property zone: " .. self.id)
end

function Property:exitPropertyZone()
  lib.print.debug("Exited property zone: " .. self.id)
end

function Property:enterBigZone()
  -- can be used to show markers or hints
end

function Property:exitBigZone()
  -- hide markers
end

---Create a map blip for the property
function Property:createBlip()
  self:removeBlip()
  if not self.metadata.enterData then return end
  local coords = self.metadata.enterData
  self.blip.id = AddBlipForCoord(coords.x, coords.y, coords.z)
  SetBlipSprite(self.blip.id, 40)
  SetBlipColour(self.blip.id, 3)
  SetBlipAsShortRange(self.blip.id, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(self.label)
  EndTextCommandSetBlipName(self.blip.id)
end

function Property:removeBlip()
  if self.blip.id then
    RemoveBlip(self.blip.id)
    self.blip.id = nil
  end
end

---Delete property data and cleanup
function Property:delete()
  self:deleteZones()
  self:removeBlip()
end

return Property

