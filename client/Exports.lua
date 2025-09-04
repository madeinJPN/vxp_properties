-- Human-readable exports for property management

-- Return the ID of the property the player is currently in, or nil
exports("GetCurrentPropertyId", function()
    local currentProperty = PlayerData.currentProperty
    if currentProperty then
        return currentProperty.id
    end

    local insideYards = PlayerData.insideYards
    if insideYards then
        for propertyId, isInside in pairs(insideYards) do
            if isInside then
                return propertyId
            end
        end
    end

    return nil
end)

-- Return a table with information about the property the player is currently in
exports("GetCurrentProperty", function()
    local current = PlayerData.currentProperty
    if not current then
        return nil
    end

    local propertyInfo = {
        id = current.id,
        owner = current.owner,
        label = current.label,
        price = current.price,
        type = current.type,
        doorLocked = current:getDoorLockedState(),
        keyHolders = current.keyHolders
    }

    function propertyInfo.hasKey(identifier)
        return current:hasKey(identifier)
    end

    function propertyInfo.isOwner()
        return current:isOwner()
    end

    return propertyInfo
end)

exports("IsPointInsideProperty", IsPointInside)
exports("OpenPropertyMenu", OpenPropertyMenu)

-- Remove a key holder from a property
exports("RemoveKey", function(propertyId, identifier)
    local property = PropertyManager:getPropertyById(propertyId)
    if not property then
        return false
    end
    return property:removeKeyHolder(identifier)
end)

-- Add a key holder to a property
exports("AddKey", function(propertyId, identifier)
    local property = PropertyManager:getPropertyById(propertyId)
    if not property then
        return false
    end
    return property:addKeyHolder(identifier)
end)

-- Set a waypoint to a property's location
exports("SetWaypointToProperty", function(propertyId)
    local property = PropertyManager:getPropertyById(propertyId)
    if not property then
        return false
    end
    property:setWaypoint()
end)

-- Get all properties owned by the player or their job/society
exports("GetAllProperties", function(ownerType)
    local results = {}
    local jobName = PlayerData.job.name
    local identifier = PlayerData.identifier

    for _, property in pairs(PropertyManager.properties) do
        local ownedByPlayer = property.owner == identifier
        local ownedByJob = property.owner == jobName

        local allowed
        if ownerType == "both" then
            allowed = ownedByPlayer or ownedByJob
        else
            allowed = ownedByPlayer
        end

        if allowed and property.ownerType == ownerType then
            results[#results + 1] = {
                id = property.id,
                label = property.label,
                price = property.price,
                type = property.type,
                doorLocked = property:getDoorLockedState(),
                keyHolders = property.keyHolders
            }
        end
    end

    return results
end)

-- Return the key holders of a property
exports("GetKeyHolders", function(propertyId)
    local property = PropertyManager:getPropertyById(propertyId)
    if not property then return end
    return property.keyHolders
end)

-- Find the closest property to the player when inside a yard
exports("GetClosestProperty", function()
    local current = PlayerData.currentProperty
    if current then
        return current
    end

    local insideYards = PlayerData.insideYards
    if not insideYards then
        return nil
    end

    local playerCoords = GetEntityCoords(cache.ped)
    local closestProperty
    local closestDistance

    for propertyId, isInside in pairs(insideYards) do
        if isInside then
            local property = LoadedProperties[propertyId]
            if property then
                local managePoint = property.metadata.managePoint
                local distance = #(managePoint - playerCoords)
                if not closestDistance or distance < closestDistance then
                    closestDistance = distance
                    closestProperty = property
                end
            end
        end
    end

    return closestProperty
end)

