local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
L0_1 = 21
L1_1 = 19
L2_1 = 1
L3_1 = 2
L4_1 = 44
L5_1 = 38
L6_1 = 31
L7_1 = 30
L8_1 = nil
L9_1 = false
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = {}
L17_1.fov = 55.0
L17_1.mouseSensitivityX = 5
L17_1.mouseSensitivityY = 5
L17_1.normalMoveMultiplier = 0.4
L17_1.fastMoveMultiplier = 1.0
L17_1.slowMoveMultiplier = 0.1
L17_1.enableEasing = true
L17_1.easingDuration = 1000
function L18_1()
  local L0_2, L1_2
  L0_2 = L8_1
  return L0_2
end
GetFreecam = L18_1
function L18_1()
  local L0_2, L1_2
  L0_2 = L9_1
  return L0_2
end
IsFreecamFrozen = L18_1
function L18_1(A0_2)
  local L1_2
  L1_2 = true == A0_2
  L9_1 = L1_2
end
SetFreecamFrozen = L18_1
function L18_1()
  local L0_2, L1_2
  L0_2 = L11_1
  return L0_2
end
GetFreecamPosition = L18_1
L18_1 = 0
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = vector3
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = GetInteriorAtCoords
  L5_2 = L3_2.x
  L6_2 = L3_2.y
  L7_2 = L3_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = Config
  L5_2 = L5_2.limitFreeCam
  if L5_2 then
    L5_2 = L10_1
    L5_2 = L5_2 - L3_2
    L5_2 = #L5_2
    L6_2 = Config
    L6_2 = L6_2.limitFreeCamDistance
    if L5_2 > L6_2 then
      L6_2 = L18_1
      L7_2 = GetGameTimer
      L7_2 = L7_2()
      if L6_2 < L7_2 then
        L6_2 = GetGameTimer
        L6_2 = L6_2()
        L6_2 = L6_2 + 10000
        L18_1 = L6_2
        L6_2 = Framework
        L6_2 = L6_2.Notify
        L7_2 = {}
        L8_2 = locale
        L9_2 = "create_property_mlo_outside_limit"
        L8_2 = L8_2(L9_2)
        L7_2.description = L8_2
        L8_2 = locale
        L9_2 = "property"
        L8_2 = L8_2(L9_2)
        L7_2.title = L8_2
        L7_2.type = "error"
        L7_2.duration = 5000
        L6_2(L7_2)
      end
      return
    end
  end
  L5_2 = LoadInterior
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = SetFocusArea
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = LockMinimapPosition
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = SetCamCoord
  L6_2 = L8_1
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L11_1 = L3_2
end
SetFreecamPosition = L19_1
function L19_1()
  local L0_2, L1_2
  L0_2 = L12_1
  return L0_2
end
GetFreecamRotation = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Clamp
  L4_2 = A0_2
  L5_2 = -90.0
  L6_2 = 90.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2 % 360
  L5_2 = A2_2 % 360
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = EulerToMatrix
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2)
  L10_2 = LockMinimapAngle
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = L5_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = SetCamRot
  L11_2 = L8_1
  L12_2 = L6_2.x
  L13_2 = L6_2.y
  L14_2 = L6_2.z
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L12_1 = L6_2
  L14_1 = L7_2
  L15_1 = L8_2
  L16_1 = L9_2
end
SetFreecamRotation = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CreateCam
  L2_2 = "DEFAULT_SCRIPTED_CAMERA"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = SetCamCoord
  L3_2 = L1_2
  L4_2 = L11_1.x
  L5_2 = L11_1.y
  L6_2 = L11_1.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = PointCamAtEntity
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = GetCamRot
  L3_2 = L1_2
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = DestroyCam
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = SetFreecamRotation
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2)
end
SetFreecamPointAtEntity = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = vector3
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = EulerToMatrix
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  L7_2 = SetCamRot
  L8_2 = L8_1
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L12_1 = L3_2
  L14_1 = L4_2
  L15_1 = L5_2
  L16_1 = L6_2
end
SetFreecamRotationRaw = L19_1
function L19_1()
  local L0_2, L1_2
  L0_2 = L13_1
  return L0_2
end
GetFreecamFov = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Clamp
  L2_2 = A0_2
  L3_2 = 0.0
  L4_2 = 90.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = SetCamFov
  L3_2 = L8_1
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L13_1 = L1_2
end
SetFreecamFov = L19_1
function L19_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L14_1
  L1_2 = L15_1
  L2_2 = L16_1
  L3_2 = L11_1
  return L0_2, L1_2, L2_2, L3_2
end
GetFreecamMatrix = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  L2_2 = L15_1
  L2_2 = L2_2 * A0_2
  L1_2 = L1_2 + L2_2
  return L1_2
end
GetFreecamTarget = L19_1
function L19_1()
  local L0_2, L1_2
  L0_2 = IsCamActive
  L1_2 = L8_1
  return L0_2(L1_2)
end
IsFreecamEnabled = L19_1
function L19_1()
  local L0_2, L1_2, L2_2
  L0_2 = IsDisabledControlPressed
  L1_2 = 0
  L2_2 = L0_1
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L17_1.fastMoveMultiplier
    return L0_2
  else
    L0_2 = IsDisabledControlPressed
    L1_2 = 0
    L2_2 = L1_1
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = L17_1.slowMoveMultiplier
      return L0_2
    end
  end
  L0_2 = L17_1.normalMoveMultiplier
  return L0_2
end
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = IsFreecamEnabled
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = IsPauseMenuActive
    L0_2 = L0_2()
    if not L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = IsFreecamFrozen
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = GetFreecamMatrix
    L0_2, L1_2 = L0_2()
    L2_2 = vector3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = GetFreecamPosition
    L3_2 = L3_2()
    L4_2 = GetFreecamRotation
    L4_2 = L4_2()
    L5_2 = GetFrameTime
    L5_2 = L5_2()
    L5_2 = L5_2 * 15
    L6_2 = L19_1
    L6_2 = L6_2()
    L6_2 = L6_2 * L5_2
    L7_2 = GetDisabledControlNormal
    L8_2 = 0
    L9_2 = L2_1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = GetDisabledControlNormal
    L9_2 = 0
    L10_2 = L3_1
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = GetDisabledControlNormal
    L10_2 = 0
    L11_2 = L6_1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = GetDisabledControlNormal
    L11_2 = 0
    L12_2 = L7_1
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = GetDisabledControlNormalBetween
    L12_2 = 0
    L13_2 = L4_1
    L14_2 = L5_1
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = L4_2.x
    L13_2 = -L8_2
    L14_2 = L17_1.mouseSensitivityY
    L13_2 = L13_2 * L14_2
    L12_2 = L12_2 + L13_2
    L13_2 = L4_2.z
    L14_2 = -L7_2
    L15_2 = L17_1.mouseSensitivityX
    L14_2 = L14_2 * L15_2
    L13_2 = L13_2 + L14_2
    L14_2 = 0.0
    L15_2 = L0_2 * L10_2
    L15_2 = L15_2 * L6_2
    L3_2 = L3_2 + L15_2
    L15_2 = -L9_2
    L15_2 = L1_2 * L15_2
    L15_2 = L15_2 * L6_2
    L3_2 = L3_2 + L15_2
    L15_2 = L2_2 * L11_2
    L15_2 = L15_2 * L6_2
    L3_2 = L3_2 + L15_2
    L15_2 = vector3
    L16_2 = L12_2
    L17_2 = L14_2
    L18_2 = L13_2
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L4_2 = L15_2
    L15_2 = SetFreecamPosition
    L16_2 = L3_2.x
    L17_2 = L3_2.y
    L18_2 = L3_2.z
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = SetFreecamRotation
    L16_2 = L4_2.x
    L17_2 = L4_2.y
    L18_2 = L4_2.z
    L15_2(L16_2, L17_2, L18_2)
  end
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = IsFreecamEnabled
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    return
  end
  if A0_2 then
    L1_2 = GetGameplayCamCoord
    L1_2 = L1_2()
    L2_2 = GetGameplayCamRot
    L2_2 = L2_2()
    L3_2 = CreateCam
    L4_2 = "DEFAULT_SCRIPTED_CAMERA"
    L5_2 = true
    L3_2 = L3_2(L4_2, L5_2)
    L8_1 = L3_2
    L10_1 = L1_2
    L3_2 = SetFreecamFov
    L4_2 = L17_1.fov
    L3_2(L4_2)
    L3_2 = SetFreecamPosition
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = L1_2.z
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetFreecamRotation
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L6_2 = L2_2.z
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = IsFreecamEnabled
        L0_3 = L0_3()
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = LocalPlayer
        L0_3 = L0_3.state
        L0_3 = L0_3.isDead
        if L0_3 then
          L0_3 = SetNuiFocus
          L1_3 = false
          L2_3 = false
          L0_3(L1_3, L2_3)
          L0_3 = ExitFurniture
          return L0_3()
        end
        L0_3 = DisableAllControlActions
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 249
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L20_1
        L0_3()
      end
    end
    L3_2(L4_2)
  else
    L1_2 = DestroyCam
    L2_2 = L8_1
    L1_2(L2_2)
    L1_2 = ClearFocus
    L1_2()
    L1_2 = UnlockMinimapPosition
    L1_2()
    L1_2 = UnlockMinimapAngle
    L1_2()
  end
  L1_2 = RenderScriptCams
  L2_2 = A0_2
  L3_2 = L17_1.enableEasing
  L4_2 = L17_1.easingDuration
  L1_2(L2_2, L3_2, L4_2)
end
SetFreecamEnabled = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A2_2
  return L3_2(L4_2, L5_2)
end
Clamp = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = GetDisabledControlNormal
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetDisabledControlNormal
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2 - L4_2
  return L5_2
end
GetDisabledControlNormalBetween = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.cos
  L10_2 = L3_2
  L9_2 = L9_2(L10_2)
  L10_2 = math
  L10_2 = L10_2.cos
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.cos
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = {}
  L13_2 = {}
  L14_2 = {}
  L15_2 = L10_2 * L11_2
  L12_2.x = L15_2
  L15_2 = L10_2 * L8_2
  L12_2.y = L15_2
  L15_2 = -L7_2
  L12_2.z = L15_2
  L15_2 = L11_2 * L6_2
  L15_2 = L15_2 * L7_2
  L16_2 = L9_2 * L8_2
  L15_2 = L15_2 - L16_2
  L13_2.x = L15_2
  L15_2 = L9_2 * L11_2
  L16_2 = L6_2 * L7_2
  L16_2 = L16_2 * L8_2
  L15_2 = L15_2 - L16_2
  L13_2.y = L15_2
  L15_2 = L10_2 * L6_2
  L13_2.z = L15_2
  L15_2 = -L9_2
  L15_2 = L15_2 * L11_2
  L15_2 = L15_2 * L7_2
  L16_2 = L6_2 * L8_2
  L15_2 = L15_2 + L16_2
  L14_2.x = L15_2
  L15_2 = -L11_2
  L15_2 = L15_2 * L6_2
  L16_2 = L9_2 * L7_2
  L16_2 = L16_2 * L8_2
  L15_2 = L15_2 + L16_2
  L14_2.y = L15_2
  L15_2 = L9_2 * L10_2
  L14_2.z = L15_2
  L15_2 = vector3
  L16_2 = L12_2.x
  L17_2 = L12_2.y
  L18_2 = L12_2.z
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L12_2 = L15_2
  L15_2 = vector3
  L16_2 = L13_2.x
  L17_2 = L13_2.y
  L18_2 = L13_2.z
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L13_2 = L15_2
  L15_2 = vector3
  L16_2 = L14_2.x
  L17_2 = L14_2.y
  L18_2 = L14_2.z
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L14_2 = L15_2
  L15_2 = L12_2
  L16_2 = L13_2
  L17_2 = L14_2
  return L15_2, L16_2, L17_2
end
EulerToMatrix = L21_1
L21_1 = AddEventHandler
L22_1 = "onResourceStop"
function L23_1(A0_2)
  local L1_2, L2_2
  L1_2 = cache
  L1_2 = L1_2.resource
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = SetFreecamEnabled
  L2_2 = false
  L1_2(L2_2)
end
L21_1(L22_1, L23_1)
