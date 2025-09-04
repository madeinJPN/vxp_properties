--[[@class Furniture
  Represents a single piece of furniture that can be placed inside a property.
  Handles spawning, editing and cleanup of the underlying entity.
]]

local Furniture = {}
Furniture.__index = Furniture

---Create a new furniture instance
---@param data table
function Furniture:new(data)
  local obj = setmetatable({
    id = data.id,
    propertyId = data.propertyId or Client.furnitureInfo.propertyId,
    coords = data.coords or GetNewCoords(),
    rotation = data.rotation or GetEntityRotation(cache.ped, 2),
    label = data.label,
    model = data.model,
    modelJoaat = GetHashKey(data.model),
    obj = nil,
    price = data.price or 0,
    bought = data.bought or false,
    requireKeys = data.requireKeys,
    environment = data.environment or Client.furnitureInfo.furnitureType,
    type = data.type or "furniture",
    stored = data.stored or false,
    onSave = data.onSave,
    onCancel = data.onCancel,
    disableCliping = data.disableCliping or false,
    focused = false,
  }, Furniture)

  if obj.propertyId == nil then
    lib.print.error(("Property ID is nil, for furniture with model %s and id %s"):format(obj.model, obj.id))
  end

  return obj
end

---Spawn the actual object in the world
function Furniture:spawn()
  if self.obj then return end
  lib.print.debug("Spawning furniture: " .. self.id)
  self.obj = CreateObject(self.modelJoaat, self.coords.x, self.coords.y, self.coords.z, false, false, false)
  SetEntityRotation(self.obj, self.rotation.x, self.rotation.y, self.rotation.z, 2, true)
  FreezeEntityPosition(self.obj, true)
end

---Delete the object from the world
function Furniture:delete()
  if self.obj then
    DeleteEntity(self.obj)
    self.obj = nil
  end
end

---Begin editing this piece of furniture
function Furniture:startEditing()
  self.focused = true
end

---Stop editing and call the onSave callback
function Furniture:stopEditing()
  self.focused = false
  if self.onSave then
    self:onSave()
  end
end

---Revert the object to its original position
function Furniture:revertCoords()
  if not self.obj then return end
  SetEntityCoords(self.obj, self.coords.x, self.coords.y, self.coords.z)
  SetEntityRotation(self.obj, self.rotation.x, self.rotation.y, self.rotation.z, 2, true)
end

return Furniture

