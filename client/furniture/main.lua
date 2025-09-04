local L0_1, L1_1, L2_1, L3_1
L0_1 = false
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = FurnitureConfig
  L0_2 = L0_2.FreeCam
  if L0_2 then
    L0_2 = GetEntityCoords
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    L1_2 = SetFreecamEnabled
    L2_2 = true
    L1_2(L2_2)
    L1_2 = SetFreecamPosition
    L2_2 = L0_2.x
    L3_2 = L0_2.y
    L4_2 = L0_2.z
    L4_2 = L4_2 + 0.5
    L1_2(L2_2, L3_2, L4_2)
  end
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L1_2 = L0_2
  L0_2 = L0_2.set
  L2_2 = "editingFurniture"
  L3_2 = true
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = pcall
    L1_2 = Config
    L1_2 = L1_2.ToggleHud
    L2_2 = false
    L0_2, L1_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.warn
      L3_2 = "Failed to toggle HUD: %s. Ensure your \"ToggleHud\" export is correctly defined in config.lua."
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = true
    L0_1 = L2_2
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "setFurnitureMenuVisible"
  L0_2(L1_2)
end
OpenFurniture = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = FurnitureConfig
  L0_2 = L0_2.FreeCam
  if L0_2 then
    L0_2 = SetFreecamFrozen
    L1_2 = false
    L0_2(L1_2)
    L0_2 = SetFreecamEnabled
    L1_2 = false
    L0_2(L1_2)
  end
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L1_2 = L0_2
  L0_2 = L0_2.set
  L2_2 = "editingFurniture"
  L3_2 = false
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L0_1
  if L0_2 then
    L0_2 = pcall
    L1_2 = Config
    L1_2 = L1_2.ToggleHud
    L2_2 = true
    L0_2, L1_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.warn
      L3_2 = "Failed to toggle HUD: %s. Ensure your \"ToggleHud\" export is correctly defined in config.lua."
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = false
    L0_1 = L2_2
  end
  L0_2 = Client
  L0_2 = L0_2.gizmoEntity
  if L0_2 then
    L0_2 = Client
    L0_2 = L0_2.gizmoEntity
    L0_2 = L0_2.bought
    if L0_2 then
      L0_2 = Client
      L0_2 = L0_2.gizmoEntity
      L0_2 = L0_2.stored
      if not L0_2 then
        L0_2 = Client
        L0_2 = L0_2.gizmoEntity
        L1_2 = L0_2
        L0_2 = L0_2.revertCoords
        L0_2(L1_2)
        L0_2 = Client
        L0_2 = L0_2.gizmoEntity
        L1_2 = L0_2
        L0_2 = L0_2.stopEditing
        L0_2(L1_2)
    end
    else
      L0_2 = Client
      L0_2 = L0_2.gizmoEntity
      L0_2 = L0_2.stored
      if L0_2 then
        L0_2 = Client
        L0_2 = L0_2.gizmoEntity
        L1_2 = L0_2
        L0_2 = L0_2.despawnObject
        L0_2(L1_2)
      else
        L0_2 = Client
        L0_2 = L0_2.gizmoEntity
        L1_2 = L0_2
        L0_2 = L0_2.delete
        L0_2(L1_2)
      end
    end
  end
  L0_2 = Client
  L0_2 = L0_2.furnitureInfo
  L0_2 = L0_2.focusedFurniture
  if L0_2 then
    L0_2 = Client
    L0_2 = L0_2.furnitureInfo
    L0_2 = L0_2.focusedFurniture
    L1_2 = L0_2
    L0_2 = L0_2.unfocus
    L0_2(L1_2)
  end
  L0_2 = Client
  L0_2 = L0_2.furnitureInfo
  L0_2 = L0_2.rayCastActive
  if not L0_2 then
    L0_2 = lib
    L0_2 = L0_2.print
    L0_2 = L0_2.debug
    L1_2 = "Setting furniture info to nil"
    L0_2(L1_2)
    L0_2 = Client
    L1_2 = {}
    L0_2.furnitureInfo = L1_2
  end
end
ExitFurniture = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = FurnitureConfig
  L0_2 = L0_2.FreeCam
  if L0_2 then
    L0_2 = 3
    L1_2 = GetFinalRenderedCamRot
    L1_2 = L1_2()
    L2_2 = GetFinalRenderedCamCoord
    L2_2 = L2_2()
    L3_2 = FUNC
    L3_2 = L3_2.rotationToDirection
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = vec3
    L5_2 = L2_2.x
    L6_2 = L3_2.x
    L6_2 = L6_2 * L0_2
    L5_2 = L5_2 + L6_2
    L6_2 = L2_2.y
    L7_2 = L3_2.y
    L7_2 = L7_2 * L0_2
    L6_2 = L6_2 + L7_2
    L7_2 = L2_2.z
    L8_2 = L3_2.z
    L8_2 = L8_2 * L0_2
    L7_2 = L7_2 + L8_2
    return L4_2(L5_2, L6_2, L7_2)
  else
    L0_2 = GetEntityCoords
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    L1_2 = GetEntityForwardVector
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 * 2.0
    L1_2 = L1_2 + L0_2
    return L1_2
  end
end
GetNewCoords = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = FUNC
  L2_2 = L2_2.screenPositionToCameraRay
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = 10 * L3_2
  L4_2 = L2_2 + L4_2
  L5_2 = StartShapeTestLosProbe
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = 511
  L13_2 = cache
  L13_2 = L13_2.ped
  L14_2 = 4
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  while true do
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = GetShapeTestResultIncludingMaterial
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    if 1 ~= L6_2 then
      return L11_2
    end
  end
end
RaycastFromMouse = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetActiveScreenResolution
  L1_2, L2_2 = L1_2()
  L3_2 = A0_2.mouseX
  L3_2 = L3_2 / L1_2
  L4_2 = A0_2.mouseY
  L4_2 = L4_2 / L2_2
  L5_2 = RaycastFromMouse
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = IsEntitySpawnedWithOBSPW
  L7_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2)
  if not L6_2 or not L7_2 then
    return
  end
  L9_2 = L7_2
  L8_2 = L7_2.edit
  L8_2(L9_2)
end
LMB = L1_1
L1_1 = RegisterNUICallback
L2_1 = "furniture:exit"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = ExitFurniture
  L2_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:LMB"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = LMB
  L3_2 = A0_2
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:editEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.spawnedFurniture
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.furnitureType
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2.id
  L4_2 = L3_2[L4_2]
  L6_2 = L4_2
  L5_2 = L4_2.edit
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:outlineEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.spawnedFurniture
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.furnitureType
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2.id
  L4_2 = L3_2[L4_2]
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.focus
    L5_2(L6_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:stopOutliningEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.spawnedFurniture
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.furnitureType
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2.id
  L4_2 = L3_2[L4_2]
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.unfocus
    L5_2(L6_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:spawnEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = {}
  L2_2.coords = nil
  L2_2.rotation = nil
  L3_2 = Client
  L3_2 = L3_2.gizmoEntity
  if L3_2 then
    L3_2 = A0_2.id
    if L3_2 then
      L3_2 = Client
      L3_2 = L3_2.gizmoEntity
      L3_2 = L3_2.id
      L4_2 = A0_2.id
      if L3_2 == L4_2 then
        return
      end
    end
    L3_2 = Client
    L3_2 = L3_2.gizmoEntity
    L3_2 = L3_2.bought
    if L3_2 then
      L3_2 = Client
      L3_2 = L3_2.gizmoEntity
      L4_2 = L3_2
      L3_2 = L3_2.save
      L3_2(L4_2)
      L3_2 = Client
      L3_2.gizmoEntity = nil
    else
      L3_2 = Client
      L3_2 = L3_2.gizmoEntity
      L3_2 = L3_2.coords
      L2_2.coords = L3_2
      L3_2 = Client
      L3_2 = L3_2.gizmoEntity
      L3_2 = L3_2.rotation
      L2_2.rotation = L3_2
      L3_2 = Client
      L3_2 = L3_2.gizmoEntity
      L4_2 = L3_2
      L3_2 = L3_2.delete
      L3_2(L4_2)
    end
  end
  L3_2 = Client
  L4_2 = Furniture
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = A0_2.id
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.id = L7_2
  L7_2 = Client
  L7_2 = L7_2.furnitureInfo
  L7_2 = L7_2.propertyId
  L6_2.propertyId = L7_2
  L7_2 = L2_2.coords
  L6_2.coords = L7_2
  L7_2 = L2_2.rotation
  L6_2.rotation = L7_2
  L7_2 = A0_2.object
  L6_2.model = L7_2
  L7_2 = A0_2.label
  L6_2.label = L7_2
  L7_2 = A0_2.price
  L6_2.price = L7_2
  L7_2 = A0_2.type
  L6_2.type = L7_2
  L7_2 = A0_2.bought
  if not L7_2 then
    L7_2 = false
  end
  L6_2.bought = L7_2
  L7_2 = A0_2.stored
  if not L7_2 then
    L7_2 = false
  end
  L6_2.stored = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.gizmoEntity = L4_2
  L3_2 = Client
  L3_2 = L3_2.gizmoEntity
  if nil ~= L3_2 then
    L3_2 = Client
    L3_2 = L3_2.gizmoEntity
    L4_2 = L3_2
    L3_2 = L3_2.edit
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:confirmEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.save
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:freeMoveEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.rayCast
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:importEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = A0_2.position
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  if L3_2 then
    L3_2 = L3_2.coords
  end
  if L3_2 then
    L3_2 = L3_2.x
  end
  if L3_2 then
    L3_2 = L2_2
    if L3_2 then
      L3_2 = L3_2.coords
    end
    if L3_2 then
      L3_2 = L3_2.y
    end
    if L3_2 then
      L3_2 = L2_2
      if L3_2 then
        L3_2 = L3_2.coords
      end
      if L3_2 then
        L3_2 = L3_2.z
      end
      if L3_2 then
        goto lbl_36
      end
    end
  end
  do return end
  ::lbl_36::
  L3_2 = L2_2
  if L3_2 then
    L3_2 = L3_2.rotation
  end
  if L3_2 then
    L3_2 = L3_2.x
  end
  if L3_2 then
    L3_2 = L2_2
    if L3_2 then
      L3_2 = L3_2.rotation
    end
    if L3_2 then
      L3_2 = L3_2.y
    end
    if L3_2 then
      L3_2 = L2_2
      if L3_2 then
        L3_2 = L3_2.rotation
      end
      if L3_2 then
        L3_2 = L3_2.z
      end
      if L3_2 then
        goto lbl_64
      end
    end
  end
  do return end
  ::lbl_64::
  L3_2 = Client
  L3_2 = L3_2.gizmoEntity
  L4_2 = L3_2
  L3_2 = L3_2.setCoordsAndRotation
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:deleteEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.delete
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = 0
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:sellEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.sell
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = 0
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:storeEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.store
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = 0
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:bringEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.bring
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:moveEntity"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setCoordsAndRotation
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:setEntityCoords"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setCoordsAndRotation
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:snapEntityToGround"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = GetFurnitureFromObject
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.snapToGround
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:getPlacedObjects"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.spawnedFurniture
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.furnitureType
  L3_2 = L3_2[L4_2]
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.obj
    if nil ~= L11_2 then
      L11_2 = lib
      L11_2 = L11_2.print
      L11_2 = L11_2.debug
      L12_2 = "Add entity to data with key: "
      L13_2 = L9_2
      L12_2 = L12_2 .. L13_2
      L11_2(L12_2)
      L11_2 = #L4_2
      L11_2 = L11_2 + 1
      L13_2 = L10_2
      L12_2 = L10_2.getData
      L12_2 = L12_2(L13_2)
      L4_2[L11_2] = L12_2
    end
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:getStoredObjects"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Getting stored objects"
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:getFurniture"
  L4_2 = false
  L5_2 = A0_2.propertyId
  L6_2 = Client
  L6_2 = L6_2.furnitureInfo
  L6_2 = L6_2.furnitureType
  L7_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2[1]
    L11_2 = L9_2[2]
    L12_2 = L9_2[3]
    L13_2 = L9_2[4]
    L14_2 = L9_2[5]
    L15_2 = L9_2[6]
    L16_2 = L9_2[7]
    L17_2 = L9_2[8]
    L18_2 = #L3_2
    L18_2 = L18_2 + 1
    L19_2 = {}
    L19_2.uId = L10_2
    L19_2.id = L8_2
    L19_2.object = L11_2
    L19_2.label = L12_2
    L20_2 = {}
    L21_2 = L15_2[1]
    L20_2.x = L21_2
    L21_2 = L15_2[2]
    L20_2.y = L21_2
    L21_2 = L15_2[3]
    L20_2.z = L21_2
    L19_2.coords = L20_2
    L20_2 = {}
    L21_2 = L16_2[1]
    L20_2.x = L21_2
    L21_2 = L16_2[2]
    L20_2.y = L21_2
    L21_2 = L16_2[3]
    L20_2.z = L21_2
    L19_2.rotation = L20_2
    L19_2.price = L13_2
    if L13_2 then
      L20_2 = FurnitureConfig
      L20_2 = L20_2.SellPercentage
      if not L20_2 then
        L20_2 = 50
      end
      L20_2 = L13_2 * L20_2
      L20_2 = L20_2 / 100
      if L20_2 then
        goto lbl_73
      end
    end
    L20_2 = 0
    ::lbl_73::
    L19_2.sellPrice = L20_2
    L19_2.type = L17_2
    L19_2.bought = true
    L3_2[L18_2] = L19_2
  end
  L4_2 = lib
  L4_2 = L4_2.print
  L4_2 = L4_2.debug
  L5_2 = "Stored objects"
  L4_2(L5_2)
  L4_2 = lib
  L4_2 = L4_2.print
  L4_2 = L4_2.debug
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "furniture:loadCategory"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.category
  if L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.debug
    L4_2 = "Loading furniture category: "
    L5_2 = L2_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = LoadFurnitureCategory
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "No category specified for furniture loading"
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = Client
  L3_2 = L3_2.furnitureInfo
  L3_2 = L3_2.propertyId
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == A0_2 or "0" == A0_2 then
    L2_2 = Client
    L2_2 = L2_2.gizmoEntity
    return L2_2
  else
    L2_2 = L1_2.spawnedFurniture
    L3_2 = Client
    L3_2 = L3_2.furnitureInfo
    L3_2 = L3_2.furnitureType
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A0_2]
    return L2_2
  end
end
GetFurnitureFromObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.id
  L2_2 = Entity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.propertyId
  if not L2_2 then
    return
  end
  L3_2 = Client
  L3_2 = L3_2.furnitureInfo
  L3_2 = L3_2.propertyId
  if L2_2 ~= L3_2 then
    return
  end
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = tonumber
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L1_2
  L5_2 = L3_2.spawnedFurniture
  L6_2 = Client
  L6_2 = L6_2.furnitureInfo
  L6_2 = L6_2.furnitureType
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2[L1_2]
  return L4_2, L5_2
end
IsEntitySpawnedWithOBSPW = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Client
  L1_2 = {}
  L0_2.furnitureInfo = L1_2
end
StopEditingFurniture = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetEntityDrawOutlineShader
  L1_2 = 1
  L0_2(L1_2)
  L0_2 = SetEntityDrawOutlineColor
  L1_2 = 200
  L2_2 = 200
  L3_2 = 250
  L4_2 = 180
  L0_2(L1_2, L2_2, L3_2, L4_2)
  while true do
    L0_2 = Client
    L0_2 = L0_2.gizmoEntity
    if L0_2 then
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.action = "setCameraPosition"
      L2_2 = {}
      L3_2 = GetFinalRenderedCamCoord
      L3_2 = L3_2()
      L2_2.position = L3_2
      L3_2 = GetFinalRenderedCamRot
      L3_2 = L3_2()
      L2_2.rotation = L3_2
      L1_2.data = L2_2
      L0_2(L1_2)
      L0_2 = Client
      L0_2 = L0_2.outlinedEntity
      if L0_2 then
        L0_2 = SetEntityDrawOutline
        L1_2 = Client
        L1_2 = L1_2.outlinedEntity
        L2_2 = false
        L0_2(L1_2, L2_2)
      end
      L0_2 = Client
      L1_2 = Client
      L1_2 = L1_2.gizmoEntity
      L1_2 = L1_2.obj
      L0_2.outlinedEntity = L1_2
      L0_2 = SetEntityDrawOutline
      L1_2 = Client
      L1_2 = L1_2.outlinedEntity
      L2_2 = true
      L0_2(L1_2, L2_2)
    else
      L0_2 = Client
      L0_2 = L0_2.outlinedEntity
      if L0_2 then
        L0_2 = SetEntityDrawOutline
        L1_2 = Client
        L1_2 = L1_2.outlinedEntity
        L2_2 = false
        L0_2(L1_2, L2_2)
        L0_2 = Client
        L0_2.outlinedEntity = nil
      end
      L0_2 = Wait
      L1_2 = 250
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L1_1(L2_1)
L1_1 = exports
L2_1 = "addFurniture"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerData
  L1_2 = L1_2.currentProperty
  if not L1_2 then
    return
  end
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L2_2 = PlayerData
  L2_2 = L2_2.currentProperty
  L2_2 = L2_2.id
  L1_2.propertyId = L2_2
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L2_2 = PlayerData
  L2_2 = L2_2.insideProperty
  if L2_2 then
    L2_2 = "inside"
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = "outside"
  ::lbl_22::
  L1_2.furnitureType = L2_2
  L1_2 = Client
  L2_2 = Furniture
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.id = 0
  L5_2 = Client
  L5_2 = L5_2.furnitureInfo
  L5_2 = L5_2.propertyId
  L4_2.propertyId = L5_2
  L5_2 = tostring
  L6_2 = A0_2.model
  L5_2 = L5_2(L6_2)
  L4_2.model = L5_2
  L5_2 = A0_2.label
  L4_2.label = L5_2
  L5_2 = A0_2.price
  L4_2.price = L5_2
  L4_2.bought = true
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.gizmoEntity = L2_2
  L1_2 = Client
  L1_2 = L1_2.gizmoEntity
  if nil ~= L1_2 then
    L1_2 = Client
    L1_2 = L1_2.gizmoEntity
    L2_2 = L1_2
    L1_2 = L1_2.edit
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
