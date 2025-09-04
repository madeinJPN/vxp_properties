-- Manage furniture editing state and freecam helpers

local hudHidden = false

---Enable the furniture editor NUI and optional freecam
function OpenFurniture()
  if FurnitureConfig.FreeCam then
    local pos = GetEntityCoords(cache.ped)
    SetFreecamEnabled(true)
    SetFreecamPosition(pos.x, pos.y, pos.z + 0.5)
  end

  LocalPlayer.state:set("editingFurniture", true, false)

  if not hudHidden then
    local ok, err = pcall(Config.ToggleHud, false)
    if not ok then
      lib.print.warn("Failed to toggle HUD: %s", err)
    end
    hudHidden = true
  end

  SendNUIMessage({action = "setFurnitureMenuVisible"})
end

---Close the furniture editor and restore player state
function CloseFurniture()
  if FurnitureConfig.FreeCam then
    SetFreecamFrozen(false)
    SetFreecamEnabled(false)
  end

  LocalPlayer.state:set("editingFurniture", false, false)

  if hudHidden then
    local ok, err = pcall(Config.ToggleHud, true)
    if not ok then
      lib.print.warn("Failed to toggle HUD: %s", err)
    end
    hudHidden = false
  end

  if Client.gizmoEntity then
    if Client.gizmoEntity.bought and not Client.gizmoEntity.stored then
      Client.gizmoEntity:revertCoords()
      Client.gizmoEntity:stopEditing()
    else
      Client.gizmoEntity:delete()
    end
    Client.gizmoEntity = nil
  end

  SendNUIMessage({action = "setFurnitureMenuInvisible"})
  SetNuiFocus(false, false)
  SetNuiFocusKeepInput(false)
end

