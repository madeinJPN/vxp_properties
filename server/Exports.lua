-- Human-readable exports for server-side property interactions

-- Return simplified information about all loaded properties
exports('GetAllProperties', function()
    local properties = {}

    for id, property in pairs(LoadedProperties) do
        local data = property.propertyData
        properties[#properties + 1] = {
            id = id,
            owner = data.owner,
            ownerType = data.ownerType,
            label = data.label,
            price = data.price,
            rentPrice = data.rentPrice,
            type = data.type,
            doorLocked = data.doorLocked,
            keyHolders = data.keyHolders
        }
    end

    return properties
end)

-- Return the full ServerProperty object for a given property ID
exports('GetProperty', function(propertyId)
    return LoadedProperties[tonumber(propertyId)]
end)

-- Return the key holders for a given property ID
exports('GetKeyHolders', function(propertyId)
    local property = LoadedProperties[tonumber(propertyId)]
    if not property then
        return nil
    end
    return property.propertyData.keyHolders
end)
