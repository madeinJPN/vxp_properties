-- Helper utilities for door interactions and creation

local DoorUtils = {}

--- Find the door table associated with an entity or door id.
-- @param entity number|table entity handle or door table
-- @return table|nil
local function doorFromEntity(entity)
    local ent = type(entity) == 'table' and entity.entity or entity
    if not ent then return end

    local state = Entity(ent).state
    local id = state and state.doorId
    if not id then return end

    local door = doors[id]
    if not door then
        state.doorId = nil
    end
    return door
end
DoorUtils.doorFromEntity = doorFromEntity

--- Determine if an entity represents a door managed by this resource.
-- @param entity number|table
-- @return boolean
function DoorUtils.isDoor(entity)
    return doorFromEntity(entity) ~= nil
end

PickingLock = false

--- Check if the player is able to attempt a lockpick on the given door.
-- @param entity number|table
function DoorUtils.canLockpick(entity)
    local door = doorFromEntity(entity)
    if not door or PickingLock then return false end
    if not door.lockpick then return false end
    if not Config.CanPickUnlockedDoors and door.state ~= 1 then return false end
    return true
end

--- Attempt to lockpick the provided door. Handles animation, skill check
-- and success/failure notifications.
-- @param entity number|table
function DoorUtils.lockpick(entity)
    local door = doorFromEntity(entity)
    if not DoorUtils.canLockpick(door) then return end

    PickingLock = true
    TaskTurnPedToFaceCoord(cache.ped, door.coords.x, door.coords.y, door.coords.z, 4000)
    Wait(500)
    lib.requestAnimDict('mp_common_heist')
    TaskPlayAnim(cache.ped, 'mp_common_heist', 'pick_door', 3.0, 1.0, -1, 49, 0, true, true, true)

    local success = lib.skillCheck(door.lockpickDifficulty or Config.LockDifficulty)
    local breakChance = math.random(1, success and 100 or 5)

    if success then
        TriggerServerEvent('nolag_properties:server:setDoorState', door.id, door.state == 1 and 0 or 1, true)
    end

    if breakChance == 1 then
        TriggerServerEvent('properties_doors:breakLockpick')
        Framework.Notify({ type = 'error', description = locale('lockpick_broke') })
    end

    StopEntityAnim(cache.ped, 'pick_door', 'mp_common_heist', 0)
    PickingLock = false
end

exports('pickClosestDoor', function()
    if ClosestDoor then
        DoorUtils.lockpick(ClosestDoor.entity)
    end
end)

-- Door creation -----------------------------------------------------------

local collectedDoors = {}

--- Collect data from an entity to later create a door on the server.
-- Stores model, coords and heading in a buffer table.
-- @param entity number|table
function DoorUtils.collectDoor(entity)
    local ent = type(entity) == 'number' and entity or entity.entity
    if not ent then return end

    local model = GetEntityModel(ent)
    local coords = GetEntityCoords(ent)

    AddDoorToSystem(1826661658, model, coords.x, coords.y, coords.z, false, false, false)
    DoorSystemSetDoorState(1826661658, 4, false, false)

    collectedDoors[#collectedDoors + 1] = {
        entity = ent,
        model = model,
        coords = coords,
        heading = math.floor(GetEntityHeading(ent) + 0.5),
    }

    RemoveDoorFromSystem(1826661658)
end

exports('collectDoor', DoorUtils.collectDoor)

--- NUI callback used by the door creation UI. Validates data with the
-- server and, if allowed, sends the collected door information.
RegisterNUICallback('createDoor', function(data, cb)
    cb(1)

    local ok, err = lib.callback.await('nolag_properties:server:canCreateDoor', false, data)
    if not ok then
        return lib.notify({ type = 'error', description = err })
    end

    data.state = data.state and 1 or 0
    if data.items and not next(data.items) then data.items = nil end
    if data.characters and not next(data.characters) then data.characters = nil end
    if data.lockpickDifficulty == '' then data.lockpickDifficulty = nil end

    TriggerServerEvent('nolag_properties:server:createDoor', data, collectedDoors)
    collectedDoors = {}
end)

return DoorUtils

