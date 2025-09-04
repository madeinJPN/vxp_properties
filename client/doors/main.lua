-- Door management: handling door registration, drawing and state sync

local spriteIcons = Config.DoorLock.SpriteIcons
Config.DoorLock.DrawSprite = {
    [0] = {spriteIcons.unlocked.dict, spriteIcons.unlocked.texture, spriteIcons.unlocked.x, spriteIcons.unlocked.y, spriteIcons.unlocked.width, spriteIcons.unlocked.height, 0, 255, 255, 255, 255},
    [1] = {spriteIcons.locked.dict,   spriteIcons.locked.texture,   spriteIcons.locked.x,   spriteIcons.locked.y,   spriteIcons.locked.width,   spriteIcons.locked.height,   0, 255, 255, 255, 255},
}

local DoorManager = {}
DoorManager.doors = DoorManager.doors or {}
doors = DoorManager.doors -- global access for utils
ClosestDoor = nil

--- Register a door or double door with the game door system and the
-- internal grid used for distance checks.
-- @param data table
function DoorManager.addDoor(data)
    if DoorManager.doors[data.id] then
        lib.grid.removeEntry(DoorManager.doors[data.id])
    end

    DoorManager.doors[data.id] = data
    data.zone = GetLabelText(GetNameOfZone(data.coords.x, data.coords.y, data.coords.z))
    data.radius = data.maxDistance

    local property = PropertyManager:getPropertyById(data.propertyId)
    if property then property:addDoor(data) end

    local function registerDoor(door)
        AddDoorToSystem(door.hash, door.model, door.coords.x, door.coords.y, door.coords.z, false, false, false)
        DoorSystemSetDoorState(door.hash, 4, false, false)
        DoorSystemSetDoorState(door.hash, data.state, false, false)
        if data.doorRate or data.auto then
            DoorSystemSetAutomaticRate(door.hash, data.doorRate or 10.0, false, false)
        end
    end

    if data.doors then
        for _, d in ipairs(data.doors) do
            registerDoor(d)
        end
    else
        registerDoor(data)
    end

    lib.grid.addEntry(data)
end
exports('addDoor', DoorManager.addDoor)

--- Update the state for a door and all of its entities.
-- @param id number
-- @param state number
-- @param fromLockpick boolean
function DoorManager.setDoorState(id, state, fromLockpick)
    local door = DoorManager.doors[id]
    if not door then return end
    door.state = state

    local entries = door.doors or { door }
    for _, d in ipairs(entries) do
        DoorSystemSetDoorState(d.hash, state, false, fromLockpick or false)
    end
end
RegisterNetEvent('nolag_properties:client:setDoorState', DoorManager.setDoorState)

-- Main loop: find nearby doors, track the closest one and draw sprites
CreateThread(function()
    local drawData = Config.DoorLock.DrawSprite
    while true do
        local pedCoords = GetEntityCoords(cache.ped)
        local nearby = lib.grid.getNearbyEntries(pedCoords)
        ClosestDoor = nil
        local closestDist = 999.0

        for _, door in ipairs(nearby) do
            local dist = #(door.coords - pedCoords)
            door.distance = dist
            if dist < closestDist then
                ClosestDoor = door
                closestDist = dist
            end

            if dist < door.maxDistance and door.canInteract then
                local onScreen, x, y = GetScreenCoordFromWorldCoord(door.coords.x, door.coords.y, door.coords.z)
                if onScreen then
                    local sprite = drawData[door.state]
                    DrawSprite(sprite[1], sprite[2], x, y, sprite[3], sprite[4], 0.0, sprite[8], sprite[9], sprite[10], sprite[11])
                end
            end
        end

        Wait(0)
    end
end)

return DoorManager

