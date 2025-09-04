---@class ServerBuilding
---@field id number
---@field name string
---@field label string
---@field metadata table
local ServerBuilding = {}
ServerBuilding.__index = ServerBuilding

---Create a new building instance from database data.
---@param data table
function ServerBuilding.new(data)
  local self = setmetatable({}, ServerBuilding)
  self.id = data.id
  self.name = data.name
  self.label = data.label
  -- Metadata is stored in the database as JSON; ConvertToVector converts vec types
  self.metadata = ConvertToVector(data.metadata)

  AddLoadedBuilding(self.id)
  self:sync()
  return self
end

---Persist building data to the database.
---@param fields? string|string[] optional field or list of fields to save
function ServerBuilding:save(fields)
  -- Always refresh global state before persisting
  self:sync()

  local payload = { building_id = self.id }
  local allowed = {
    label = true,
    name = true,
    metadata = true,
  }

  local function copy(key)
    if allowed[key] and self[key] ~= nil then
      payload[key] = self[key]
    end
  end

  if not fields then
    for key in pairs(allowed) do copy(key) end
  elseif type(fields) == 'string' then
    copy(fields)
  elseif type(fields) == 'table' then
    for _, key in ipairs(fields) do copy(key) end
  end

  BuildingSQL.UpdateBuilding(payload)
end

---Set the garage point for the building.
---@param point vector3
---@return boolean, string success, message
function ServerBuilding:setGaragePoint(point)
  self.metadata.garagePoint = point
  self:save('metadata')
  self:sync()
  return true, 'Garage point updated successfully'
end

---Sync building data to GlobalState so clients can access it.
function ServerBuilding:sync()
  GlobalState[string.format('building.%s', self.id)] = self
end

return ServerBuilding
