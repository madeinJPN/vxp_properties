--[[
  Furniture control lock
  Disables movement while the furniture UI is open or an entity is being edited.
  Right click toggles freecam movement so players can reposition objects precisely.
]]

local furnitureExport = exports.nolag_properties
local freecamPressed = false

-- all controls that should be blocked while editing
local blockedControls = {
  0, 1, 2, 16, 17, 22, 23, 24, 25, 26,
  30, 31, 36, 37, 44, 47, 55, 69, 81,
  82, 91, 92, 99, 106, 114, 115, 121,
  122, 135, 140, 142, 199, 200, 245,
  257
}

CreateThread(function()
  DisableIdleCamera(true)

  while true do
    local menuVisible = Client.menuVisibility.furnitureMenuVisibility
    local editingEntity = Client.gizmoEntity ~= nil

    if menuVisible or editingEntity then
      for _, control in ipairs(blockedControls) do
        DisableControlAction(0, control, true)
      end

      if IsDisabledControlPressed(0, 25) then -- right mouse button
        if FurnitureConfig.FreeCam and not freecamPressed then
          freecamPressed = true
          SetFreecamFrozen(not IsFreecamFrozen())
          SetNuiFocus(true, IsFreecamFrozen())
          SetNuiFocusKeepInput(true)
          lib.print.debug("FreecamFrozen: " .. tostring(IsFreecamFrozen()))
        end
        -- allow basic look/move while the button is held
        EnableControlAction(0, 1, true)
        EnableControlAction(0, 2, true)
        EnableControlAction(0, 30, true)
        EnableControlAction(0, 31, true)
        EnableControlAction(0, 22, true)
        EnableControlAction(0, 23, true)
      elseif freecamPressed then
        lib.print.debug("JustPressed")
        freecamPressed = false
      end

      Wait(0)
    else
      Wait(500)
    end
  end
end)

