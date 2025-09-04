-- Ensure required dependencies
assert(lib.checkDependency('ox_lib', '3.30.4'), 'ox_lib v3.30.4 or higher is required')

-- Clean up spawned entities when the resource stops
AddEventHandler('onResourceStop', function(resource)
    if resource ~= cache.resource then return end

    ForcedExit = true

    if PlayerData.currentProperty then
        PlayerData.currentProperty:exit()
    end

    if PlayerData.insideBigZone then
        for propertyId, inside in pairs(PlayerData.insideBigZone) do
            if inside then
                local property = PropertyManager:getPropertyById(propertyId)
                property:despawnCamera()
                property:despawnFurniture('inside')
                property:despawnFurniture('outside')
            end
        end
    end

    Wait(100)
    DoScreenFadeIn(100)
end)

--- Load every building defined in GlobalState
local function loadBuildings()
    local buildings = GlobalState.buildings
    if not buildings or #buildings == 0 then
        lib.print.debug('No buildings found')
        return
    end

    for _, id in pairs(buildings) do
        local data = GlobalState[('building.%s'):format(id)]
        BuildingManager:createBuilding(id, data)
        Wait(0)
    end

    BuildingManager.buildingsLoaded = true
end
LoadBuildings = loadBuildings

--- Load every property defined in GlobalState
local function loadProperties()
    local properties = GlobalState.properties
    if not properties or #properties == 0 then
        lib.print.debug('No properties found')
        return
    end

    for _, id in pairs(properties) do
        local data = GlobalState[('property.%s'):format(id)]
        PropertyManager:createProperty(id, data)
        Wait(0)
    end

    PropertyManager.propertiesLoaded = true
end
LoadProperties = loadProperties

--- Remove all spawned properties
local function deleteProperties()
    PropertyManager:deleteAllProperties()
end
DeleteProperties = deleteProperties

--- Remove all spawned buildings
local function deleteBuildings()
    BuildingManager:deleteAllBuildings()
end
DeleteBuildings = deleteBuildings

-- Generic notification helper
RegisterNetEvent('nolag_properties:client:notify', function(msg)
    Framework.Notify(msg)
end)

-- Update furniture for a property when broadcasted by the server
RegisterNetEvent('nolag_properties:client:updateFurniture', function(propertyId, furnitureType, furnitureId, data, sourceServerId)
    if PlayerData.insideProperty and LocalPlayer.state.instance ~= propertyId then
        return
    end

    if not PlayerData.insideProperty then
        if not PlayerData.insideYards[propertyId] then
            return
        end
    end

    if sourceServerId == cache.serverId then
        return
    end

    local property = PropertyManager:getPropertyById(propertyId)
    if property then
        lib.print.debug(('Updating furniture for property: %s, fType: %s, fId: %s'):format(propertyId, furnitureType, furnitureId))
        property:updateFurniture(furnitureType, tostring(furnitureId), data)
    end
end)

-- Re-enter a property to refresh its IPL
RegisterNetEvent('nolag_properties:client:refreshIpl', function(propertyId)
    if LocalPlayer.state.instance ~= propertyId then return end
    local property = PropertyManager:getPropertyById(propertyId)
    if property then
        property:exit()
        property:enter()
    end
end)

-- Play a doorbell sound and send a notification
RegisterNetEvent('nolag_properties:client:doorBell', function()
    while not RequestScriptAudioBank('audiodirectory/properties_sounds', false) do
        Wait(0)
    end

    lib.print.debug('Audio bank loaded')
    local soundId = GetSoundId()
    PlaySoundFrontend(soundId, 'house-doorbell', 'properties', true)
    ReleaseSoundId(soundId)
    ReleaseNamedScriptAudioBank('audiodirectory/properties_sounds')

    Framework.Notify({
        title = locale('doorbell'),
        description = locale('doorbell_notify'),
        type = 'info',
        duration = 5000,
        icon = 'fas fa-bell'
    })
end)

-- Delete a property by id
RegisterNetEvent('nolag_properties:client:deleteProperty', function(id)
    PropertyManager:deletePropertyById(id)
end)

-- Delete a building by id
RegisterNetEvent('nolag_properties:client:deleteBuilding', function(id)
    local building = BuildingManager:getBuildingById(id)
    if building then
        building:delete()
    end
end)

-- Ensure the player leaves a property after selling it
RegisterNetEvent('nolag_properties:client:sellProperty', function(id)
    local property = PropertyManager:getPropertyById(id)
    if property and property == PlayerData.currentProperty then
        property:exit()
    end
end)

--- Check if coords are inside the property boundaries
--- @param propertyId number
--- @param coords vector3
function IsPointInside(propertyId, coords)
    local property = PropertyManager:getPropertyById(propertyId)
    return property and property:isPointInside(coords) or false
end

-- React to property updates in GlobalState
AddStateBagChangeHandler('', 'global', function(_, key, value)
    if not PlayerData.loaded then return end
    local id = tonumber(key:match('property%.([%w_]+)'))
    if not id then return end

    if value == nil then
        lib.print.debug(('Deleting property: %s'):format(id))
        PropertyManager:deletePropertyById(id)
    else
        local property = PropertyManager:getPropertyById(id)
        if property then
            lib.print.debug(('Updating property: %s'):format(id))
            property:updateData(value)
        else
            lib.print.debug(('Creating property: %s'):format(id))
            PropertyManager:createProperty(id, value)
        end
    end
end)

-- React to building updates in GlobalState
AddStateBagChangeHandler('', 'global', function(_, key, value)
    if not PlayerData.loaded then return end
    local id = tonumber(key:match('building%.([%w_]+)'))
    if not id then return end

    if value == nil then
        lib.print.debug(('Deleting building: %s'):format(id))
        BuildingManager:deleteBuildingById(id)
    else
        local building = BuildingManager:getBuildingById(id)
        if building then
            lib.print.debug(('Updating building: %s'):format(id))
            building:updateData(value)
        else
            lib.print.debug(('Creating building: %s'):format(id))
            BuildingManager:createBuilding(id, value)
        end
    end
end)

local concealedPlayers = {}

-- Conceal players not inside the instance
RegisterNetEvent('nolag_properties:client:concealPlayers', function(serverIds)
    local players = GetActivePlayers()
    for i = 1, #players do
        NetworkConcealPlayer(players[i], false, false)
    end

    concealedPlayers = serverIds
    if PlayerData.isConcealing then return end
    PlayerData.isConcealing = true

    while PlayerData.isConcealing do
        local active = GetActivePlayers()
        for i = 1, #active do
            local serverId = GetPlayerServerId(active[i])
            if not lib.table.contains(concealedPlayers, serverId) then
                NetworkConcealPlayer(active[i], true, false)
            end
        end
        Wait(3000)
    end
end)

-- Reveal all players
RegisterNetEvent('nolag_properties:client:revealPlayers', function()
    local players = GetActivePlayers()
    for i = 1, #players do
        NetworkConcealPlayer(players[i], false, false)
    end
    PlayerData.isConcealing = false
end)

--- Open the property management menu for all properties the player is near
function OpenPropertyMenu()
    if PlayerData.insideProperty then
        if PlayerData.currentProperty then
            PlayerData.currentProperty:manageProperty()
        end
        return
    end

    if not PlayerData.insideYards then return end

    local options = {}
    for id, inside in pairs(PlayerData.insideYards) do
        if inside then
            local property = PropertyManager:getPropertyById(id)
            options[#options + 1] = {
                id = id,
                title = property.label,
                icon = 'fa-solid fa-building',
                onSelect = function()
                    property:manageProperty()
                end
            }
        end
    end

    if #options == 0 then return end
    if #options == 1 then
        options[1].onSelect()
        return
    end

    lib.registerContext({
        id = 'properties_menu',
        title = locale('properties_menu_title'),
        icon = 'fa-solid fa-building',
        options = options
    })
    lib.showContext('properties_menu')
end
