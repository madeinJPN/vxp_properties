local doors = {}

-- Convert a door table to JSON for database storage
local function encodeDoor(data)
  return json.encode({
    auto = data.auto,
    autolock = data.autolock,
    coords = data.coords,
    doors = data.doors and {
      { coords = data.doors[1].coords, heading = data.doors[1].heading, model = data.doors[1].model },
      { coords = data.doors[2].coords, heading = data.doors[2].heading, model = data.doors[2].model },
    } or nil,
    characters = data.characters,
    groups = data.groups,
    heading = data.heading,
    items = data.items,
    lockpick = data.lockpick,
    hideUi = data.hideUi,
    holdOpen = data.holdOpen,
    lockSound = data.lockSound,
    maxDistance = data.maxDistance,
    doorRate = data.doorRate,
    model = data.model,
    state = data.state,
    unlockSound = data.unlockSound,
    passcode = data.passcode,
    lockpickDifficulty = data.lockpickDifficulty,
  })
end

-- Return door table when passed either an id or door instance
local function getDoorData(source)
  if type(source) == 'table' then
    return source
  end
  return doors[source]
end

---Export to fetch a door by id
exports('getDoor', function(id)
  local door = doors[id]
  if not door then return end
  return {
    id = door.id,
    name = door.name,
    state = door.state,
    coords = door.coords,
    characters = door.characters,
    groups = door.groups,
    items = door.items,
    maxDistance = door.maxDistance,
  }
end)

---Export to fetch a door by name
exports('getDoorFromName', function(name)
  for _, door in pairs(doors) do
    if door.name == name then
      return exports.getDoor(door.id)
    end
  end
end)

---Update an existing door and broadcast the changes to clients
---@param id number
---@param changes table
function EditDoor(id, changes)
  local door = doors[id]
  if not door then return end

  for key, value in pairs(changes) do
    if key ~= 'id' then
      door[key] = (value ~= '' and value) or nil
    end
  end

  MySQL.update('UPDATE properties_doors SET name = ?, data = ? WHERE id = ?', {
    door.name,
    encodeDoor(door),
    id
  })

  TriggerClientEvent('nolag_properties:client:editDoor', -1, id, door)
end

---Register a door for a property
---@param id number
---@param data table
---@param name string
---@param propertyId number
function RegisterDoor(id, data, name, propertyId)
  data.id = id
  data.name = name
  data.propertyId = propertyId

  if data.doors then
    for i = 1, 2 do
      local info = data.doors[i]
      info.hash = joaat(('property_door_%s_%s'):format(id, i))
    end
  end

  doors[id] = data
end

return {
  register = RegisterDoor,
  edit = EditDoor,
  encode = encodeDoor,
  get = getDoorData,
  list = doors
}
