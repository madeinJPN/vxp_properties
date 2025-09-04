local Property = require('client.property.Property')

local PropertyManager = {}
PropertyManager.__index = PropertyManager

---Create a new manager instance
function PropertyManager.new()
  return setmetatable({
    properties = {},
    loadingProperties = false,
    propertiesLoaded = false,
  }, PropertyManager)
end

---Create and store a property instance if not already present
---@param id number|string
---@param data table
---@return table
function PropertyManager:createProperty(id, data)
  lib.print.debug("Creating property: " .. id)
  if self.properties[id] then
    return self.properties[id]
  end
  local property = Property:new(id, data)
  self.properties[id] = property
  return property
end

---Retrieve a property by id, waiting for loading if necessary
function PropertyManager:getPropertyById(id)
  if not self.propertiesLoaded then
    lib.print.debug("Properties not loaded, waiting...")
    lib.waitFor(function()
      return self.propertiesLoaded
    end, "Properties not loaded", 10000)
  end
  return self.properties[id]
end

---Delete a property and remove from manager
function PropertyManager:deletePropertyById(id)
  local property = self.properties[id]
  if property then
    property:delete()
    self.properties[id] = nil
  end
end

---Return all tracked properties
function PropertyManager:getAllProperties()
  local list = {}
  for _, property in pairs(self.properties) do
    table.insert(list, property)
  end
  return list
end

---Delete every property and reset state
function PropertyManager:deleteAllProperties()
  lib.print.debug("Deleting all properties")
  for id, property in pairs(self.properties) do
    if property and property.id then
      lib.print.debug("Deleting property: " .. property.id)
      property:delete()
      Wait(1000)
      self.properties[id] = nil
    end
  end
  self.properties = {}
  self.loadingProperties = false
  self.propertiesLoaded = false
end

PropertyManager = PropertyManager.new()

return PropertyManager

