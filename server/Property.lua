---@class ServerProperty
---@field id number
---@field name string
---@field label string
---@field price number
---@field owner string|nil
---@field tenant string|nil
---@field metadata table
---@field keyHolders table<string, boolean>
local ServerProperty = {}
ServerProperty.__index = ServerProperty

---Create a property instance from database data
---@param data table
function ServerProperty.new(data)
  local self = setmetatable({}, ServerProperty)
  self.id = data.id
  self.name = data.name
  self.label = data.label
  self.price = data.price or 0
  self.owner = data.owner
  self.tenant = data.tenant
  self.metadata = ConvertToVector(data.metadata or {})
  self.keyHolders = data.keyHolders or {}

  AddLoadedProperty(self.id)
  self:sync()
  return self
end

---Sync property state to clients
function ServerProperty:sync()
  GlobalState[string.format('property.%s', self.id)] = self
end

---Save specified fields to the database
---@param fields? string|string[]
function ServerProperty:save(fields)
  self:sync()

  local payload = { property_id = self.id }
  local allowed = {
    label = true,
    name = true,
    metadata = true,
    owner = true,
    tenant = true,
    keyHolders = true,
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
  else
    for _, key in ipairs(fields) do copy(key) end
  end

  PropertySQL.UpdateProperty(payload)
end

---Set the owner of the property
---@param identifier string
function ServerProperty:setOwner(identifier)
  self.owner = identifier
  self.tenant = nil
  self:save({ 'owner', 'tenant' })
  self:sync()
end

---Add a key holder to the property
---@param identifier string
function ServerProperty:addKeyHolder(identifier)
  self.keyHolders[identifier] = true
  self:save('keyHolders')
  self:sync()
end

---Remove a key holder from the property
---@param identifier string
function ServerProperty:removeKeyHolder(identifier)
  self.keyHolders[identifier] = nil
  self:save('keyHolders')
  self:sync()
end

return ServerProperty
