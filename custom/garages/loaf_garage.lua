--[[
    Within this section, you'll discover the setup details for the chosen garage.
    If your system isn't listed here, feel free to reach out to the garage creator
    and request the inclusion of its exports in any of these files. Alternatively,
    you can utilize these files to generate your own configuration, which would greatly
    benefit our community.
]]

if Config.Garage ~= "loaf_garage" then
    return
end


Config.Functions["OpenGarageMenu"] = {
    type = "outside",   -- inside or outside
    zone = true,        -- If the interaction is a zone or ox_target
    maxPerProperty = 1, -- The maximum amount of garage menu's per property
    radius = 2.0,       -- The radius of the interaction
    requireKeys = true, -- If the player needs to have keys to interact with the interaction
    label = "Garage Menu",
    icon = "fas fa-car",
    onSelect = function(property)
        local vehicle = cache.vehicle
        if vehicle then
            local garage = property.id
            if DoesEntityExist(vehicle) and garage then
                exports.loaf_garage:StoreVehicle("property_" .. property.id, vehicle)
                DeleteVehicle(vehicle)
            end
        else
            local coords = vector4(GetEntityCoords(cache.ped).x, GetEntityCoords(cache.ped).y, GetEntityCoords(cache.ped).z, GetEntityHeading(cache.ped))
            exports.loaf_garage:BrowseVehicles("property_" .. property.id, coords)
        end
    end,
}
