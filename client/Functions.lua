local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = LoadModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.success
  if not L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = L2_2.error
    L3_2(L4_2)
    L3_2 = 0
    L4_2 = vector3
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  end
  L3_2 = CreateObject
  L4_2 = L2_2.model
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = L2_2.model
  L4_2(L5_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityHeading
  L5_2 = L3_2
  L6_2 = 0.0
  L4_2(L5_2, L6_2)
  L4_2 = L3_2
  L5_2 = GetEntityCoords
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
end
SpawnShell = L0_1
L0_1 = nil
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = SetFocusPosAndVel
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L0_1
  if nil == L2_2 then
    L2_2 = CreateCamWithParams
    L3_2 = "DEFAULT_SCRIPTED_CAMERA"
    L4_2 = A0_2.x
    L5_2 = A0_2.y
    L6_2 = A0_2.z
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 80.0
    L11_2 = false
    L12_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L0_1 = L2_2
  end
  L2_2 = SetCamCoord
  L3_2 = L0_1
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetCamRot
  L3_2 = L0_1
  L4_2 = A1_2.x
  L5_2 = A1_2.y
  L6_2 = A1_2.z
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetCamActive
  L3_2 = L0_1
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = RenderScriptCams
  L3_2 = true
  L4_2 = false
  L5_2 = 0
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = FreezeEntityPosition
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = true
  L2_2(L3_2, L4_2)
end
SetCamCoords = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ClearExtraTimecycleModifier
  L0_2()
  L0_2 = SetCamActive
  L1_2 = L0_1
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = DestroyCam
  L1_2 = L0_1
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = true
  L5_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = ClearFocus
  L0_2()
  L0_2 = FreezeEntityPosition
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = nil
  L0_1 = L0_2
end
DestroyCamera = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = DoScreenFadeOut
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  if A1_2 then
    L2_2 = TriggerEvent
    L3_2 = "nolag_properties:client:weatherSync"
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = ClearExtraTimecycleModifier
    L2_2()
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "nolag_properties:server:property:watchCamera"
    L4_2 = false
    L5_2 = A1_2
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = A0_2.camRotation
  L3_2 = SetCamCoords
  L4_2 = A0_2.camCoords
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = SetExtraTimecycleModifier
  L4_2 = Config
  L4_2 = L4_2.SecurityCamFilter
  L3_2(L4_2)
  L3_2 = SetExtraTimecycleModifierStrength
  L4_2 = Config
  L4_2 = L4_2.SecurityCamFilterStrength
  L3_2(L4_2)
  L3_2 = DisplayHelp
  L4_2 = locale
  L5_2 = "exit_camera"
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = DoScreenFadeIn
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = DisplayHelp
      L1_3 = locale
      L2_3 = "exit_camera"
      L1_3, L2_3, L3_3, L4_3, L5_3 = L1_3(L2_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 174
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L2_2
        L1_3 = vector3
        L2_3 = 0.0
        L3_3 = 0.0
        L4_3 = 0.5
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L0_3 = L0_3 + L1_3
        L2_2 = L0_3
        L0_3 = SetCamRot
        L1_3 = L0_1
        L2_3 = L2_2.x
        L3_3 = L2_2.y
        L4_3 = L2_2.z
        L5_3 = 2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 175
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L2_2
        L1_3 = vector3
        L2_3 = 0.0
        L3_3 = 0.0
        L4_3 = 0.5
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L0_3 = L0_3 - L1_3
        L2_2 = L0_3
        L0_3 = SetCamRot
        L1_3 = L0_1
        L2_3 = L2_2.x
        L3_3 = L2_2.y
        L4_3 = L2_2.z
        L5_3 = 2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 172
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L2_2
        L1_3 = vector3
        L2_3 = 0.5
        L3_3 = 0.0
        L4_3 = 0.0
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L0_3 = L0_3 + L1_3
        L2_2 = L0_3
        L0_3 = SetCamRot
        L1_3 = L0_1
        L2_3 = L2_2.x
        L3_3 = L2_2.y
        L4_3 = L2_2.z
        L5_3 = 2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 173
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L2_2
        L1_3 = vector3
        L2_3 = 0.5
        L3_3 = 0.0
        L4_3 = 0.0
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L0_3 = L0_3 - L1_3
        L2_2 = L0_3
        L0_3 = SetCamRot
        L1_3 = L0_1
        L2_3 = L2_2.x
        L3_3 = L2_2.y
        L4_3 = L2_2.z
        L5_3 = 2
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 194
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = PlayerData
        L0_3 = L0_3.currentCamera
        if nil ~= L0_3 then
          goto lbl_143
        end
      end
      L0_3 = DoScreenFadeOut
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = DestroyCamera
      L0_3()
      L0_3 = ClearHelpText
      L0_3()
      L0_3 = A1_2
      if L0_3 then
        L0_3 = TriggerEvent
        L1_3 = "nolag_properties:client:weatherSync"
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = SetExtraTimecycleModifier
        L1_3 = "INT_NOdirectLight"
        L0_3(L1_3)
        L0_3 = lib
        L0_3 = L0_3.callback
        L0_3 = L0_3.await
        L1_3 = "nolag_properties:server:property:watchCamera"
        L2_3 = false
        L3_3 = A1_2
        L4_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L0_3 = DoScreenFadeIn
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = PlayerData
      L0_3.currentCamera = nil
      ::lbl_143::
    end
  end
  L3_2(L4_2)
end
SecurityCam = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = InteractablePoint
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.coords = A0_2
  L6_2.options = A1_2
  L6_2.property = A2_2
  L6_2.object = A3_2
  return L4_2(L5_2, L6_2)
end
CreateInteractablePoint = L1_1
L1_1 = AddEventHandler
L2_1 = "onResourceStart"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = LoadInventoryWardrobeObjects
  L1_2()
  L1_2 = Wait
  L2_2 = 2000
  L1_2(L2_2)
  L1_2 = AddBlipCategoryLabels
  L1_2()
  L1_2 = PlayerData
  L1_2.loaded = true
  L1_2 = PlayerData
  L1_2 = L1_2.firstSpawn
  if not L1_2 then
    L1_2 = PlayerData
    L1_2.firstSpawn = true
    L1_2 = LoadBuildings
    L1_2()
    L1_2 = LoadProperties
    L1_2()
    L1_2 = GetDoors
    L1_2()
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = OnPlayerLoadedEvent
function L3_1()
  local L0_2, L1_2
  ForcedExit = false
  L0_2 = PlayerData
  L0_2.loaded = true
  L0_2 = PlayerData
  L0_2 = L0_2.firstSpawn
  if not L0_2 then
    L0_2 = PlayerData
    L0_2.firstSpawn = true
    L0_2 = AddBlipCategoryLabels
    L0_2()
    L0_2 = LoadInventoryWardrobeObjects
    L0_2()
    L0_2 = LoadBuildings
    L0_2()
    L0_2 = LoadProperties
    L0_2()
    L0_2 = LoadFurnitureConfig
    L0_2()
    L0_2 = LoadUi
    L0_2()
    L0_2 = GetDoors
    L0_2()
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = OnPlayerUnloadedEvent
function L3_1()
  local L0_2, L1_2
  ForcedExit = true
  L0_2 = PlayerData
  L0_2.firstSpawn = false
  L0_2 = PlayerData
  L0_2.loaded = false
  L0_2 = DeleteProperties
  L0_2()
  L0_2 = DeleteBuildings
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = OnJobUpdateEvent
function L3_1()
  local L0_2, L1_2
  L0_2 = PropertyManager
  L1_2 = L0_2
  L0_2 = L0_2.refreshBlips
  L0_2(L1_2)
  L0_2 = BuildingManager
  L1_2 = L0_2
  L0_2 = L0_2.refreshBlips
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = ClearAllHelpMessages
  L0_2()
  L0_2 = ClearHelp
  L1_2 = true
  L0_2(L1_2)
end
ClearHelpText = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = AddTextEntry
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = BeginTextCommandDisplayHelp
  L3_2 = GetCurrentResourceName
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = EndTextCommandDisplayHelp
  L3_2 = 0
  L4_2 = false
  L5_2 = true == A1_2
  L6_2 = -1
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
DisplayHelp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = BeginTextCommandDisplayHelp
  L2_2 = GetCurrentResourceName
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = AddTextComponentSubstringPlayerName
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = EndTextCommandDisplayHelp
  L2_2 = 0
  L3_2 = false
  L4_2 = true
  L5_2 = -1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
ShowHelpText = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.items
  if not L2_2 then
    L2_2 = {}
    A0_2.items = L2_2
  end
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2.items
    L9_2 = A0_2.items
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L8_2[L9_2] = L7_2
  end
end
InsertFurniture = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = FurnitureConfig
  L4_2 = L4_2.Furniture
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = FurnitureConfig
    L4_2 = L4_2.Furniture
    L5_2 = {}
    L5_2.label = A1_2
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = nil
    end
    L5_2.image = L6_2
    L6_2 = A3_2 or L6_2
    if not A3_2 then
      L6_2 = "fa6-solid:couch"
    end
    L5_2.icon = L6_2
    L6_2 = {}
    L5_2.items = L6_2
    L4_2[A0_2] = L5_2
  else
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Furniture category %s already exists!"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = FurnitureConfig
    L4_2 = L4_2.Furniture
    L4_2 = L4_2[A0_2]
    L4_2.label = A1_2
    if A2_2 then
      L4_2 = FurnitureConfig
      L4_2 = L4_2.Furniture
      L4_2 = L4_2[A0_2]
      L4_2.image = A2_2
    end
    if A3_2 then
      L4_2 = FurnitureConfig
      L4_2 = L4_2.Furniture
      L4_2 = L4_2[A0_2]
      L4_2.icon = A3_2
    end
  end
end
InsertFurnitureCategory = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0
  while not L1_2 and L2_2 < 100 do
    L3_2 = PropertyManager
    L4_2 = L3_2
    L3_2 = L3_2.getPropertyById
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    L1_2 = L3_2
    L2_2 = L2_2 + 1
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  return L1_2
end
GetPropertyById = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "rgba%((%d+),%s*(%d+),%s*(%d+)"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
ExtractRGB = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2 or A0_2
    if not L1_2 then
    end
  end
  L1_2 = IsModelInCdimage
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
    L1_2.success = false
    L2_2 = "Model "
    L3_2 = A0_2
    L4_2 = " does not exist (not in cd image)."
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2.error = L2_2
    return L1_2
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = Config
  L2_2 = L2_2.ModelRequestTime
  L1_2 = L1_2 + L2_2
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = {}
      L2_2.success = false
      L2_2.error = "Loading model timed out."
      return L2_2
    end
  end
  L2_2 = {}
  L2_2.success = true
  L2_2.model = A0_2
  return L2_2
end
LoadModel = L1_1
