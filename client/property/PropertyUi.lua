--[[
  Simplified NUI helpers for property interactions. Handles listing available
  properties and running actions selected in the UI.
]]

local UI = {}
UI.__index = UI

function UI.open(properties)
  SendNUIMessage({action = "setProperties", properties = properties})
  SendNUIMessage({action = "propertyUi", show = true})
  SetNuiFocus(true, true)
end

function UI.close()
  SendNUIMessage({action = "propertyUi", show = false})
  SetNuiFocus(false, false)
end

-- NUI callbacks
RegisterNUICallback("property/close", function(_, cb)
  UI.close()
  cb({})
end)

RegisterNUICallback("property/action", function(data, cb)
  if data.action == "purchase" then
    TriggerServerEvent("nolag_properties:server:purchaseProperty", data.id)
  elseif data.action == "enter" then
    TriggerEvent("nolag_properties:client:enterProperty", data.id)
  elseif data.action == "sell" then
    TriggerServerEvent("nolag_properties:server:sellProperty", data.id)
  end
  cb({})
end)

return UI

