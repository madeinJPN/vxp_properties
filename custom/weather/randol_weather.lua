--[[
    Here you have the weather tyme configuration, you can modify it or even
    create your own! In case your inventory is not here, you can ask the
    creator to create a file following this example and add it!
]]

if Config.Weather ~= "randol_weather" then
    return
end

RegisterNetEvent("nolag_properties:client:weatherSync")
AddEventHandler("nolag_properties:client:weatherSync", function(bool)
    if bool then
        Wait(150)
        exports.randol_weather:ToggleSync(false)
        NetworkOverrideClockTime(2, 0, 0)     -- 20:00 time inside the house
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist("CLEAR")
        SetWeatherTypeNow("CLEAR")
        SetWeatherTypeNowPersist("CLEAR")
        lib.print.debug('The time changed to CLEAR because you are indoors.')
    else
        Wait(150)
        exports.randol_weather:ToggleSync(true)
        lib.print.debug('Time resynchronized as he stepped out of the interior.')
    end
end)
