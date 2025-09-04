local activeCamera

-- Spawn a shell object at the given coordinates
function SpawnShell(modelName, coords)
  local model = LoadModel(modelName)
  if not model.success then
    lib.print.error(model.error)
    return 0, vector3(0.0, 0.0, 0.0)
  end

  local object = CreateObject(model.model, coords.x, coords.y, coords.z, false, false, false)
  SetModelAsNoLongerNeeded(model.model)
  FreezeEntityPosition(object, true)
  SetEntityHeading(object, 0.0)
  return object, GetEntityCoords(object)
end

-- Create or update a scripted camera
function SetCamCoords(position, rotation)
  SetFocusPosAndVel(position.x, position.y, position.z, position.x, position.y, position.z)

  if not activeCamera then
    activeCamera = CreateCamWithParams(
      "DEFAULT_SCRIPTED_CAMERA",
      position.x,
      position.y,
      position.z,
      0.0,
      0.0,
      0.0,
      80.0,
      false,
      0
    )
  end

  SetCamCoord(activeCamera, position.x, position.y, position.z)
  SetCamRot(activeCamera, rotation.x, rotation.y, rotation.z, 2)
  SetCamActive(activeCamera, true)
  RenderScriptCams(true, false, 0, true, true)
  FreezeEntityPosition(cache.ped, true)
end

-- Destroy the active scripted camera
function DestroyCamera()
  ClearExtraTimecycleModifier()
  SetCamActive(activeCamera, false)
  DestroyCam(activeCamera, true)
  RenderScriptCams(false, false, 0, true, true)
  ClearFocus()
  FreezeEntityPosition(cache.ped, false)
  activeCamera = nil
end

-- Display a security camera feed
function SecurityCam(data, propertyId)
  DoScreenFadeOut(500)
  Wait(500)

  if propertyId then
    TriggerEvent("nolag_properties:client:weatherSync", false)
    ClearExtraTimecycleModifier()
    lib.callback.await("nolag_properties:server:property:watchCamera", false, propertyId, true)
  end

  local rotation = data.camRotation
  SetCamCoords(data.camCoords, rotation)

  SetExtraTimecycleModifier(Config.SecurityCamFilter)
  SetExtraTimecycleModifierStrength(Config.SecurityCamFilterStrength)
  DisplayHelp(locale("exit_camera"), true)
  DoScreenFadeIn(500)

  CreateThread(function()
    while activeCamera do
      Wait(1)
      DisplayHelp(locale("exit_camera"), true)

      if IsControlPressed(0, 174) then
        rotation = rotation + vector3(0.0, 0.0, 0.5)
        SetCamRot(activeCamera, rotation.x, rotation.y, rotation.z, 2)
      end

      if IsControlPressed(0, 175) then
        rotation = rotation - vector3(0.0, 0.0, 0.5)
        SetCamRot(activeCamera, rotation.x, rotation.y, rotation.z, 2)
      end

      if IsControlPressed(0, 172) then
        rotation = rotation + vector3(0.5, 0.0, 0.0)
        SetCamRot(activeCamera, rotation.x, rotation.y, rotation.z, 2)
      end

      if IsControlPressed(0, 173) then
        rotation = rotation - vector3(0.5, 0.0, 0.0)
        SetCamRot(activeCamera, rotation.x, rotation.y, rotation.z, 2)
      end

      if IsControlJustPressed(0, 194) or not PlayerData.currentCamera then
        DoScreenFadeOut(500)
        Wait(500)
        DestroyCamera()
        ClearHelpText()

        if propertyId then
          TriggerEvent("nolag_properties:client:weatherSync", true)
          SetExtraTimecycleModifier("INT_NOdirectLight")
          lib.callback.await("nolag_properties:server:property:watchCamera", false, propertyId, false)
        end

        DoScreenFadeIn(500)
        PlayerData.currentCamera = nil
      end
    end
  end)
end

-- Create a new interactable point helper
function CreateInteractablePoint(coords, options, property, object)
  return InteractablePoint.new({
    coords = coords,
    options = options,
    property = property,
    object = object
  })
end

-- Resource start setup
AddEventHandler("onResourceStart", function(resource)
  if resource ~= GetCurrentResourceName() then
    return
  end

  LoadInventoryWardrobeObjects()
  Wait(2000)
  AddBlipCategoryLabels()
  PlayerData.loaded = true

  if not PlayerData.firstSpawn then
    PlayerData.firstSpawn = true
    LoadBuildings()
    LoadProperties()
    GetDoors()
  end
end)

-- Player loaded event
RegisterNetEvent(OnPlayerLoadedEvent, function()
  ForcedExit = false
  PlayerData.loaded = true

  if not PlayerData.firstSpawn then
    PlayerData.firstSpawn = true
    AddBlipCategoryLabels()
    LoadInventoryWardrobeObjects()
    LoadBuildings()
    LoadProperties()
    LoadFurnitureConfig()
    LoadUi()
    GetDoors()
  end
end)

-- Player unloaded event
RegisterNetEvent(OnPlayerUnloadedEvent, function()
  ForcedExit = true
  PlayerData.firstSpawn = false
  PlayerData.loaded = false
  DeleteProperties()
  DeleteBuildings()
end)

-- Job update event
RegisterNetEvent(OnJobUpdateEvent, function()
  PropertyManager:refreshBlips()
  BuildingManager:refreshBlips()
end)

-- Clear help text on screen
function ClearHelpText()
  ClearAllHelpMessages()
  ClearHelp(true)
end

-- Show a help text entry
function DisplayHelp(text, thisFrame)
  AddTextEntry(GetCurrentResourceName(), text)
  BeginTextCommandDisplayHelp(GetCurrentResourceName())
  EndTextCommandDisplayHelp(0, false, thisFrame == true, -1)
end

-- Show a one-off help message
function ShowHelpText(text)
  BeginTextCommandDisplayHelp(GetCurrentResourceName())
  AddTextComponentSubstringPlayerName(text)
  EndTextCommandDisplayHelp(0, false, true, -1)
end

-- Append furniture items into a target category
function InsertFurniture(targetCategory, items)
  if not targetCategory.items then
    targetCategory.items = {}
  end

  for _, item in ipairs(items) do
    targetCategory.items[#targetCategory.items + 1] = item
  end
end

-- Register or update a furniture category
function InsertFurnitureCategory(category, label, image, icon)
  local cfg = FurnitureConfig.Furniture[category]
  if not cfg then
    FurnitureConfig.Furniture[category] = {
      label = label,
      image = image or nil,
      icon = icon or "fa6-solid:couch",
      items = {}
    }
    return
  end

  lib.print.error(("Furniture category %s already exists!"):format(category))
  cfg.label = label
  if image then
    cfg.image = image
  end
  if icon then
    cfg.icon = icon
  end
end

-- Wait until a property is available
function GetPropertyById(id)
  id = tonumber(id)
  local property = PropertyManager:getPropertyById(id)
  local attempts = 0

  while not property and attempts < 100 do
    property = PropertyManager:getPropertyById(id)
    attempts = attempts + 1
    Wait(100)
  end

  return property
end

-- Extract RGB values from an rgba string
function ExtractRGB(text)
  local r, g, b = string.match(text, "rgba%((%d+),%s*(%d+),%s*(%d+)")
  return r, g, b
end

-- Load a model and wait until it's ready
function LoadModel(model)
  if type(model) == "string" then
    local hashed = GetHashKey(model)
    model = hashed or model
  end

  if not IsModelInCdimage(model) then
    return { success = false, error = ("Model %s does not exist (not in cd image)."):format(model) }
  end

  local timeout = GetGameTimer() + Config.ModelRequestTime
  RequestModel(model)

  while true do
    if HasModelLoaded(model) then
      break
    end
    Wait(0)
    if GetGameTimer() > timeout then
      return { success = false, error = "Loading model timed out." }
    end
  end

  return { success = true, model = model }
end

