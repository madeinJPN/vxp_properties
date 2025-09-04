local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = exports
L0_1 = L0_1.nolag_properties
L1_1 = nil
L2_1 = nil
L3_1 = nil
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Framework
  L2_2 = L2_2.Notify
  L3_2 = {}
  L4_2 = locale
  L5_2 = "notify_set_property_cam"
  L4_2 = L4_2(L5_2)
  L3_2.description = L4_2
  L4_2 = locale
  L5_2 = "property"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.type = "info"
  L3_2.duration = 8000
  L2_2(L3_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = GetEntityRotation
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = "prop_cctv_cam_04c"
  L7_2 = {}
  L7_2.id = 0
  L8_2 = A1_2 or L8_2
  if not A1_2 then
    L8_2 = 0
  end
  L7_2.propertyId = L8_2
  L7_2.coords = L4_2
  L7_2.rotation = L5_2
  L7_2.model = L6_2
  L7_2.disableCliping = true
  L8_2 = Furniture
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L3_2 = L8_2
  if L3_2 then
    L9_2 = L3_2
    L8_2 = L3_2.edit
    L8_2(L9_2)
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L1_3 = A1_2
      if L1_3 then
        L1_3 = IsPointInside
        L2_3 = A1_2
        L3_3 = vector3
        L4_3 = A0_3.coords
        L4_3 = L4_3.x
        L5_3 = A0_3.coords
        L5_3 = L5_3.y
        L6_3 = A0_3.coords
        L6_3 = L6_3.z
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3, L6_3)
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        if not L1_3 then
          L1_3 = Framework
          L1_3 = L1_3.Notify
          L2_3 = {}
          L2_3.title = "Furniture Tool"
          L3_3 = locale
          L4_3 = "not_inside"
          L3_3 = L3_3(L4_3)
          L2_3.description = L3_3
          L2_3.type = "error"
          L1_3(L2_3)
          L2_3 = A0_3
          L1_3 = A0_3.despawnObject
          L1_3(L2_3)
          L1_3 = false
          L2_2 = L1_3
          return
        end
      end
      L1_3 = lib
      L1_3 = L1_3.print
      L1_3 = L1_3.debug
      L2_3 = "Saved "
      L3_3 = A0_3.obj
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = {}
      L2_3 = GetEntityCoords
      L3_3 = A0_3.obj
      L2_3 = L2_3(L3_3)
      L1_3.camObjectCoords = L2_3
      L2_3 = GetEntityRotation
      L3_3 = A0_3.obj
      L2_3 = L2_3(L3_3)
      L1_3.camObjectRotation = L2_3
      L2_3 = GetOffsetFromEntityInWorldCoords
      L3_3 = A0_3.obj
      L4_3 = 0.0
      L5_3 = -0.4
      L6_3 = -0.25
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3.camCoords = L2_3
      L2_3 = GetEntityRotation
      L3_3 = A0_3.obj
      L2_3 = L2_3(L3_3)
      L3_3 = vector3
      L4_3 = -20.0
      L5_3 = 0.0
      L6_3 = 180.0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L2_3 = L2_3 + L3_3
      L1_3.camRotation = L2_3
      L2_2 = L1_3
      L1_3 = A0_2
      if L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.despawnObject
        L1_3(L2_3)
      end
    end
    L3_2.onSave = L8_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = lib
      L1_3 = L1_3.print
      L1_3 = L1_3.debug
      L2_3 = "Canceled "
      L3_3 = A0_3.obj
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L2_3 = A0_3
      L1_3 = A0_3.despawnObject
      L1_3(L2_3)
      L1_3 = false
      L2_2 = L1_3
    end
    L3_2.onCancel = L8_2
  end
  while nil == L2_2 do
    L8_2 = Wait
    L9_2 = 1
    L8_2(L9_2)
  end
  L8_2 = L2_2
  L9_2 = L3_2
  return L8_2, L9_2
end
GetCamData = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = ChooseIpl
  L0_2()
  while true do
    L0_2 = L3_1
    if nil ~= L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 10
    L0_2(L1_2)
    L0_2 = L3_1
    if false == L0_2 then
      L0_2 = nil
      L3_1 = L0_2
      return
    end
  end
  L0_2 = L3_1
  L0_2 = L0_2[1]
  L1_2 = L3_1
  L1_2 = L1_2[2]
  L2_2 = L3_1
  L2_2 = L2_2[3]
  L3_2 = L3_1
  L3_2 = L3_2[4]
  return L0_2, L1_2, L2_2, L3_2
end
GetIPL = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = false
  L2_2 = {}
  L3_2 = pairs
  L4_2 = IPLsData
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L10_2.value = L7_2
    L11_2 = L8_2.label
    L10_2.label = L11_2
    L2_2[L9_2] = L10_2
  end
  L3_2 = SetEntityCoords
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = IPLsData
  L6_2 = L2_2[1]
  L6_2 = L6_2.value
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.insideCoords
  L5_2 = L5_2.x
  L6_2 = IPLsData
  L7_2 = L2_2[1]
  L7_2 = L7_2.value
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.insideCoords
  L6_2 = L6_2.y
  L7_2 = IPLsData
  L8_2 = L2_2[1]
  L8_2 = L8_2.value
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.insideCoords
  L7_2 = L7_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = lib
  L3_2 = L3_2.registerMenu
  L4_2 = {}
  L4_2.id = "choose_ipl"
  L5_2 = locale
  L6_2 = "choose_interior"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.position = "top-right"
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = SetEntityCoords
    L4_3 = cache
    L4_3 = L4_3.ped
    L5_3 = IPLsData
    L6_3 = L2_2
    L6_3 = L6_3[A1_3]
    L6_3 = L6_3.value
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.insideCoords
    L5_3 = L5_3.x
    L6_3 = IPLsData
    L7_3 = L2_2
    L7_3 = L7_3[A1_3]
    L7_3 = L7_3.value
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.insideCoords
    L6_3 = L6_3.y
    L7_3 = IPLsData
    L8_3 = L2_2
    L8_3 = L8_3[A1_3]
    L8_3 = L8_3.value
    L7_3 = L7_3[L8_3]
    L7_3 = L7_3.insideCoords
    L7_3 = L7_3.z
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  L4_2.onSideScroll = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = SetEntityCoords
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = L0_2.x
    L4_3 = L0_2.y
    L5_3 = L0_2.z
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = false
    L3_1 = L1_3
  end
  L4_2.onClose = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = locale
  L8_2 = "ipl"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L6_2.values = L2_2
  L6_2.disableInput = L1_2
  L5_2[1] = L6_2
  L4_2.options = L5_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = SetEntityCoords
    L4_3 = cache
    L4_3 = L4_3.ped
    L5_3 = L0_2.x
    L6_3 = L0_2.y
    L7_3 = L0_2.z
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L3_3 = IPLsData
    L4_3 = L2_2
    L4_3 = L4_3[A1_3]
    L4_3 = L4_3.value
    L3_3 = L3_3[L4_3]
    L4_3 = L3_3.price
    L5_3 = type
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    if "table" == L5_3 then
      L5_3 = {}
      L6_3 = L2_2
      L6_3 = L6_3[A1_3]
      L6_3 = L6_3.value
      L7_3 = L3_3.defaultValues
      L8_3 = L4_3[1]
      L9_3 = L4_3[2]
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L5_3[3] = L8_3
      L5_3[4] = L9_3
      L3_1 = L5_3
    else
      L5_3 = type
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      if "number" == L5_3 then
        L5_3 = {}
        L6_3 = L2_2
        L6_3 = L6_3[A1_3]
        L6_3 = L6_3.value
        L7_3 = L3_3.defaultValues
        L8_3 = L4_3
        L9_3 = L4_3
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L5_3[3] = L8_3
        L5_3[4] = L9_3
        L3_1 = L5_3
      else
        L5_3 = {}
        L6_3 = L2_2
        L6_3 = L6_3[A1_3]
        L6_3 = L6_3.value
        L7_3 = L3_3.defaultValues
        L8_3 = Config
        L8_3 = L8_3.IplPrice
        L8_3 = L8_3[1]
        L9_3 = Config
        L9_3 = L9_3.IplPrice
        L9_3 = L9_3[2]
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L5_3[3] = L8_3
        L5_3[4] = L9_3
        L3_1 = L5_3
      end
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = lib
  L3_2 = L3_2.showMenu
  L4_2 = "choose_ipl"
  L3_2(L4_2)
end
ChooseIpl = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = lib
  L2_2 = L2_2.zones
  L2_2 = L2_2.poly
  L3_2 = {}
  L4_2 = A0_2.points
  L3_2.points = L4_2
  L4_2 = A0_2.thickness
  L3_2.thickness = L4_2
  if nil == A1_2 then
    L4_2 = true
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = A1_2
  ::lbl_16::
  L3_2.debug = L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = Wait
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = GetPointCoords
  L3_2 = L3_2()
  if not L3_2 then
    L5_2 = L2_2
    L4_2 = L2_2.remove
    L4_2(L5_2)
    L4_2 = nil
    return L4_2
  end
  while true do
    L5_2 = L2_2
    L4_2 = L2_2.contains
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      break
    end
    L4_2 = Config
    L4_2 = L4_2.PointSelectionMethods
    L4_2 = L4_2.interactablePoints
    L4_2 = "ped" == L4_2
    L5_2 = GetPointCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
    L5_2 = Framework
    L5_2 = L5_2.Notify
    L6_2 = {}
    L7_2 = locale
    L8_2 = "notify_set_property_point_inside_zone"
    L7_2 = L7_2(L8_2)
    L6_2.description = L7_2
    L7_2 = locale
    L8_2 = "property"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.type = "error"
    L5_2(L6_2)
  end
  L5_2 = L2_2
  L4_2 = L2_2.remove
  L4_2(L5_2)
  return L3_2
end
GetPointInsideZone = L4_1
L4_1 = lib
L4_1 = L4_1.disableControls
L5_1 = L4_1
L4_1 = L4_1.Add
L6_1 = {}
L7_1 = 24
L8_1 = 25
L9_1 = 45
L10_1 = 49
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L4_1(L5_1, L6_1)
L4_1 = false
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = true
  L4_1 = L1_2
  if A0_2 then
    L1_2 = GetPointCoordsWithPed
    return L1_2()
  else
    L1_2 = GetPointCoordsWithLaser
    return L1_2()
  end
end
GetPointCoords = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ShowHelper
  L1_2 = {}
  L2_2 = {}
  L3_2 = locale
  L4_2 = "lmb"
  L3_2 = L3_2(L4_2)
  L2_2.key = L3_2
  L3_2 = locale
  L4_2 = "ui_interactable_select_point"
  L3_2 = L3_2(L4_2)
  L2_2.action = L3_2
  L3_2 = {}
  L4_2 = locale
  L5_2 = "rmb"
  L4_2 = L4_2(L5_2)
  L3_2.key = L4_2
  L4_2 = locale
  L5_2 = "ui_cancel"
  L4_2 = L4_2(L5_2)
  L3_2.action = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2(L1_2)
  L0_2 = DrawLaser
  L1_2 = Config
  L1_2 = L1_2.ColorTheme
  L1_2 = L1_2.laser
  L0_2, L1_2 = L0_2(L1_2)
  while true do
    L2_2 = L4_1
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 1
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.disableControls
    L2_2()
    L2_2 = DrawLaser
    L3_2 = Config
    L3_2 = L3_2.ColorTheme
    L3_2 = L3_2.laser
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L3_2
    L0_2 = L2_2
    L2_2 = IsDisabledControlJustPressed
    L3_2 = 0
    L4_2 = 24
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 and L0_2 then
      L2_2 = false
      L4_1 = L2_2
      L2_2 = HideHelper
      L2_2()
      return L1_2
    end
    L2_2 = IsDisabledControlJustPressed
    L3_2 = 0
    L4_2 = 25
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = false
      L4_1 = L2_2
      L2_2 = HideHelper
      L2_2()
      L2_2 = nil
      return L2_2
    end
  end
end
GetPointCoordsWithLaser = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = ClonePed
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L3_2 = false
  L4_2 = true
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityAlpha
  L2_2 = L0_2
  L3_2 = 200
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityCollision
  L2_2 = L0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = GetEntityHeading
  L3_2 = cache
  L3_2 = L3_2.ped
  L2_2 = L2_2(L3_2)
  L3_2 = 0.0
  L4_2 = nil
  L5_2 = ShowHelper
  L6_2 = {}
  L7_2 = {}
  L8_2 = locale
  L9_2 = "lmb"
  L8_2 = L8_2(L9_2)
  L7_2.key = L8_2
  L8_2 = locale
  L9_2 = "ui_interactable_select_point"
  L8_2 = L8_2(L9_2)
  L7_2.action = L8_2
  L8_2 = {}
  L9_2 = locale
  L10_2 = "rmb"
  L9_2 = L9_2(L10_2)
  L8_2.key = L9_2
  L9_2 = locale
  L10_2 = "ui_cancel"
  L9_2 = L9_2(L10_2)
  L8_2.action = L9_2
  L9_2 = {}
  L10_2 = locale
  L11_2 = "scroll"
  L10_2 = L10_2(L11_2)
  L9_2.key = L10_2
  L10_2 = locale
  L11_2 = "rotate"
  L10_2 = L10_2(L11_2)
  L9_2.action = L10_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = nil
    L1_3 = nil
    L2_3 = nil
    L3_3 = CreateThread
    function L4_3()
      local L0_4, L1_4, L2_4
      while true do
        L0_4 = DoesEntityExist
        L1_4 = L0_2
        L0_4 = L0_4(L1_4)
        if not L0_4 then
          break
        end
        L0_4 = L4_1
        if not L0_4 then
          break
        end
        L0_4 = lib
        L0_4 = L0_4.raycast
        L0_4 = L0_4.cam
        L1_4 = 511
        L2_4 = 7
        L0_4, L1_4, L2_4 = L0_4(L1_4, L2_4)
        L2_3 = L2_4
        L1_3 = L1_4
        L0_3 = L0_4
        L0_4 = Wait
        L1_4 = 5
        L0_4(L1_4)
      end
    end
    L3_3(L4_3)
    while true do
      L3_3 = DoesEntityExist
      L4_3 = L0_2
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        break
      end
      L3_3 = L4_1
      if not L3_3 then
        break
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = lib
      L3_3 = L3_3.disableControls
      L3_3()
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 22
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      if L0_3 and L2_3 then
        L1_2 = L2_3
        L3_3 = SetEntityCoords
        L4_3 = L0_2
        L5_3 = L1_2.x
        L6_3 = L1_2.y
        L7_3 = L1_2.z
        L8_3 = L3_2
        L7_3 = L7_3 + L8_3
        L8_3 = false
        L9_3 = false
        L10_3 = false
        L11_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L3_3 = SetEntityHeading
        L4_3 = L0_2
        L5_3 = L2_2
        L3_3(L4_3, L5_3)
      end
      L3_3 = IsDisabledControlJustPressed
      L4_3 = 0
      L5_3 = 14
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = L2_2
        L3_3 = L3_3 + 5.0
        L2_2 = L3_3
        L3_3 = L2_2
        L4_3 = 360
        if L3_3 > L4_3 then
          L3_3 = 0.0
          L2_2 = L3_3
        end
      else
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 15
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = L2_2
          L3_3 = L3_3 - 5.0
          L2_2 = L3_3
          L3_3 = L2_2
          if L3_3 < 0 then
            L3_3 = 360.0
            L2_2 = L3_3
          end
        end
      end
      L3_3 = IsDisabledControlPressed
      L4_3 = 0
      L5_3 = 24
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = L1_2
        if L3_3 then
          L3_3 = GetEntityCoords
          L4_3 = cache
          L4_3 = L4_3.ped
          L3_3 = L3_3(L4_3)
          L4_3 = L1_2
          L4_3 = L3_3 - L4_3
          L4_3 = #L4_3
          if L4_3 < 10.0 then
            L5_3 = GetEntityCoords
            L6_3 = L0_2
            L5_3 = L5_3(L6_3)
            L6_3 = GetEntityHeading
            L7_3 = L0_2
            L6_3 = L6_3(L7_3)
            L7_3 = vector4
            L8_3 = L5_3.x
            L9_3 = L5_3.y
            L10_3 = L5_3.z
            L11_3 = L6_3
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
            L4_2 = L7_3
            L7_3 = false
            L4_1 = L7_3
          else
            L5_3 = Framework
            L5_3 = L5_3.Notify
            L6_3 = {}
            L6_3.description = "Too far from placement location"
            L7_3 = locale
            L8_3 = "property"
            L7_3 = L7_3(L8_3)
            L6_3.title = L7_3
            L6_3.type = "error"
            L5_3(L6_3)
          end
      end
      else
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 25
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = nil
          L4_2 = L3_3
          L3_3 = false
          L4_1 = L3_3
        end
      end
    end
  end
  L5_2(L6_2)
  while true do
    L5_2 = L4_1
    if not L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 10
    L5_2(L6_2)
  end
  L5_2 = DoesEntityExist
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = DeleteEntity
    L6_2 = L0_2
    L5_2(L6_2)
  end
  L5_2 = HideHelper
  L5_2()
  return L4_2
end
GetPointCoordsWithPed = L5_1
L5_1 = false
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = true
  L5_1 = L1_2
  L1_2 = ShowHelper
  L2_2 = {}
  L3_2 = {}
  L4_2 = locale
  L5_2 = "lmb"
  L4_2 = L4_2(L5_2)
  L3_2.key = L4_2
  L4_2 = locale
  L5_2 = "ui_interactable_select_point"
  L4_2 = L4_2(L5_2)
  L3_2.action = L4_2
  L4_2 = {}
  L5_2 = locale
  L6_2 = "rmb"
  L5_2 = L5_2(L6_2)
  L4_2.key = L5_2
  L5_2 = locale
  L6_2 = "ui_cancel"
  L5_2 = L5_2(L6_2)
  L4_2.action = L5_2
  L5_2 = {}
  L6_2 = locale
  L7_2 = "scroll"
  L6_2 = L6_2(L7_2)
  L5_2.key = L6_2
  L6_2 = locale
  L7_2 = "rotate"
  L6_2 = L6_2(L7_2)
  L5_2.action = L6_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2(L2_2)
  L1_2 = DrawLaser
  L2_2 = Config
  L2_2 = L2_2.ColorTheme
  L2_2 = L2_2.laser
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = lib
  L3_2 = L3_2.requestModel
  L4_2 = -1216765807
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityHeading
  L5_2 = cache
  L5_2 = L5_2.ped
  L4_2 = L4_2(L5_2)
  L5_2 = CreateVehicle
  L6_2 = L3_2
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2
  L11_2 = false
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = SetEntityAsMissionEntity
  L7_2 = L5_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetVehicleDoorsLocked
  L7_2 = L5_2
  L8_2 = 2
  L6_2(L7_2, L8_2)
  L6_2 = SetVehicleDoorsLockedForAllPlayers
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetVehicleEngineOn
  L7_2 = L5_2
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetEntityAlpha
  L7_2 = L5_2
  L8_2 = 150
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityCollision
  L7_2 = L5_2
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  while true do
    L6_2 = L5_1
    if not L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 1
    L6_2(L7_2)
    L6_2 = lib
    L6_2 = L6_2.disableControls
    L6_2()
    L6_2 = DrawLaser
    L7_2 = Config
    L7_2 = L7_2.ColorTheme
    L7_2 = L7_2.laser
    L6_2, L7_2 = L6_2(L7_2)
    L2_2 = L7_2
    L1_2 = L6_2
    L6_2 = SetEntityCoords
    L7_2 = L5_2
    L8_2 = L2_2.x
    L9_2 = L2_2.y
    L10_2 = L2_2.z
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = SetEntityHeading
    L7_2 = L5_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    L6_2 = SetVehicleOnGroundProperly
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = IsDisabledControlJustPressed
    L7_2 = 0
    L8_2 = 14
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L4_2 = L4_2 + 2.5
    end
    L6_2 = IsDisabledControlJustPressed
    L7_2 = 0
    L8_2 = 15
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L4_2 = L4_2 - 2.5
    end
    L6_2 = IsDisabledControlJustPressed
    L7_2 = 0
    L8_2 = 24
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 and L1_2 then
      L6_2 = GetEntityCoords
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if A0_2 then
        L7_2 = IsPointInside
        L8_2 = A0_2
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if not L7_2 then
          L7_2 = Framework
          L7_2 = L7_2.Notify
          L8_2 = {}
          L9_2 = locale
          L10_2 = "notify_set_property_point_inside_zone"
          L9_2 = L9_2(L10_2)
          L8_2.description = L9_2
          L9_2 = locale
          L10_2 = "property"
          L9_2 = L9_2(L10_2)
          L8_2.title = L9_2
          L8_2.type = "error"
          L7_2(L8_2)
      end
      else
        L7_2 = false
        L5_1 = L7_2
        L7_2 = HideHelper
        L7_2()
        L7_2 = SetEntityAsNoLongerNeeded
        L8_2 = L5_2
        L7_2(L8_2)
        L7_2 = DeleteVehicle
        L8_2 = L5_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L5_2
        L7_2(L8_2)
        L7_2 = {}
        L8_2 = L6_2.x
        L7_2.x = L8_2
        L8_2 = L6_2.y
        L7_2.y = L8_2
        L8_2 = L6_2.z
        L7_2.z = L8_2
        L7_2.w = L4_2
        return L7_2
      end
    end
    L6_2 = IsDisabledControlJustPressed
    L7_2 = 0
    L8_2 = 25
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = false
      L5_1 = L6_2
      L6_2 = HideHelper
      L6_2()
      L6_2 = DeleteVehicle
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = nil
      return L6_2
    end
  end
end
GetPointCoordsCar = L6_1
L6_1 = false
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = true
  L6_1 = L0_2
  L0_2 = ShowHelper
  L1_2 = {}
  L2_2 = {}
  L3_2 = locale
  L4_2 = "lmb"
  L3_2 = L3_2(L4_2)
  L2_2.key = L3_2
  L3_2 = locale
  L4_2 = "ui_interactable_select_point"
  L3_2 = L3_2(L4_2)
  L2_2.action = L3_2
  L3_2 = {}
  L4_2 = locale
  L5_2 = "rmb"
  L4_2 = L4_2(L5_2)
  L3_2.key = L4_2
  L4_2 = locale
  L5_2 = "ui_cancel"
  L4_2 = L4_2(L5_2)
  L3_2.action = L4_2
  L4_2 = {}
  L5_2 = locale
  L6_2 = "scroll"
  L5_2 = L5_2(L6_2)
  L4_2.key = L5_2
  L5_2 = locale
  L6_2 = "rotate"
  L5_2 = L5_2(L6_2)
  L4_2.action = L5_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2(L1_2)
  L0_2 = DrawLaser
  L1_2 = Config
  L1_2 = L1_2.ColorTheme
  L1_2 = L1_2.laser
  L0_2, L1_2 = L0_2(L1_2)
  L2_2 = lib
  L2_2 = L2_2.requestModel
  L3_2 = 2063723294
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityHeading
  L4_2 = cache
  L4_2 = L4_2.ped
  L3_2 = L3_2(L4_2)
  L4_2 = CreateObject
  L5_2 = L2_2
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = false
  L10_2 = true
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityAlpha
  L6_2 = L4_2
  L7_2 = 200
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L2_2
  L5_2(L6_2)
  while true do
    L5_2 = L6_1
    if not L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 1
    L5_2(L6_2)
    L5_2 = lib
    L5_2 = L5_2.disableControls
    L5_2()
    L5_2 = DrawLaser
    L6_2 = Config
    L6_2 = L6_2.ColorTheme
    L6_2 = L6_2.laser
    L5_2, L6_2 = L5_2(L6_2)
    L1_2 = L6_2
    L0_2 = L5_2
    L5_2 = SetEntityCoords
    L6_2 = L4_2
    L7_2 = L1_2.x
    L8_2 = L1_2.y
    L9_2 = L1_2.z
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = SetEntityHeading
    L6_2 = L4_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = PlaceObjectOnGroundProperly
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = IsDisabledControlJustPressed
    L6_2 = 0
    L7_2 = 14
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L3_2 = L3_2 + 2.5
    end
    L5_2 = IsDisabledControlJustPressed
    L6_2 = 0
    L7_2 = 15
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L3_2 = L3_2 - 2.5
    end
    L5_2 = IsDisabledControlJustPressed
    L6_2 = 0
    L7_2 = 24
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 and L0_2 then
      L5_2 = GetEntityCoords
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = false
      L6_1 = L6_2
      L6_2 = HideHelper
      L6_2()
      L6_2 = DeleteObject
      L7_2 = L4_2
      L6_2(L7_2)
      L6_2 = {}
      L7_2 = L5_2.x
      L6_2.x = L7_2
      L7_2 = L5_2.y
      L6_2.y = L7_2
      L7_2 = L5_2.z
      L6_2.z = L7_2
      L6_2.w = L3_2
      return L6_2
    end
  end
  L5_2 = {}
  return L5_2
end
GetPointCoordsSign = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = Config
  L0_2 = L0_2.ColorTheme
  L0_2 = L0_2.laser
  L1_2 = ShowHelper
  L2_2 = {}
  L3_2 = {}
  L4_2 = locale
  L5_2 = "enter"
  L4_2 = L4_2(L5_2)
  L3_2.key = L4_2
  L4_2 = locale
  L5_2 = "set_property_spawn"
  L4_2 = L4_2(L5_2)
  L3_2.action = L4_2
  L2_2[1] = L3_2
  L1_2(L2_2)
  while true do
    L1_2 = GetEntityCoords
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    L2_2 = GetEntityHeading
    L3_2 = cache
    L3_2 = L3_2.ped
    L2_2 = L2_2(L3_2)
    L3_2 = DrawMarker
    L4_2 = 26
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L1_2.z
    L7_2 = L7_2 - 1
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = L2_2
    L14_2 = 2.0
    L15_2 = 2.0
    L16_2 = 2.0
    L17_2 = L0_2.r
    L18_2 = L0_2.g
    L19_2 = L0_2.b
    L20_2 = L0_2.a
    L21_2 = false
    L22_2 = false
    L23_2 = 2
    L24_2 = nil
    L25_2 = nil
    L26_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L3_2 = IsControlJustPressed
    L4_2 = 0
    L5_2 = 191
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = HideHelper
      L3_2()
      L3_2 = vector4
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L6_2 = L1_2.z
      L7_2 = L2_2
      return L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
end
GetSpawnCoords = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0.2
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 36
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = IsDisabledControlPressed
  L4_2 = 0
  L5_2 = 36
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = 0.05
  end
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 81
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = IsDisabledControlPressed
  L4_2 = 0
  L5_2 = 175
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2 - L2_2
    L4_2 = A1_2 + L2_2
    return L3_2, L4_2
  end
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 174
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = IsDisabledControlPressed
  L4_2 = 0
  L5_2 = 174
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2 + L2_2
    L4_2 = A1_2 - L2_2
    return L3_2, L4_2
  end
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 173
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = IsDisabledControlPressed
  L4_2 = 0
  L5_2 = 173
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = IsControlPressed
    L4_2 = 0
    L5_2 = 21
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2 + L2_2
      L4_2 = A1_2 + L2_2
      return L3_2, L4_2
    end
    L3_2 = A0_2 - L2_2
    L4_2 = A1_2 - L2_2
    return L3_2, L4_2
  end
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 172
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = IsDisabledControlPressed
  L4_2 = 0
  L5_2 = 172
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = IsControlPressed
    L4_2 = 0
    L5_2 = 21
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2 - L2_2
      L4_2 = A1_2 - L2_2
      return L3_2, L4_2
    end
    L3_2 = A0_2 + L2_2
    L4_2 = A1_2 + L2_2
    return L3_2, L4_2
  end
  L3_2 = A0_2
  L4_2 = A1_2
  return L3_2, L4_2
end
handleZ = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = DrawLaser
  L2_2 = Config
  L2_2 = L2_2.ColorTheme
  L2_2 = L2_2.laser
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    return L2_2
  else
    return A0_2
  end
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if A0_2 then
    L2_2 = A0_2.points
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = {}
  L3_2 = vector2
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2, L5_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  ::lbl_17::
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = L3_2.z
  if A0_2 then
    L4_2 = A0_2.minZ
    if L4_2 then
      goto lbl_29
    end
  end
  L4_2 = L3_2 - 5.0
  ::lbl_29::
  if A0_2 then
    L5_2 = A0_2.maxZ
    if L5_2 then
      goto lbl_36
    end
  end
  L5_2 = L3_2 + 5.0
  ::lbl_36::
  L6_2 = SetFreecamEnabled
  L7_2 = true
  L6_2(L7_2)
  L6_2 = ShowHelper
  L7_2 = {}
  L8_2 = {}
  L9_2 = locale
  L10_2 = "lmb"
  L9_2 = L9_2(L10_2)
  L8_2.key = L9_2
  L9_2 = locale
  L10_2 = "add_point"
  L9_2 = L9_2(L10_2)
  L8_2.action = L9_2
  L9_2 = {}
  L10_2 = locale
  L11_2 = "rmb"
  L10_2 = L10_2(L11_2)
  L9_2.key = L10_2
  L10_2 = locale
  L11_2 = "remove_point"
  L10_2 = L10_2(L11_2)
  L9_2.action = L10_2
  L10_2 = {}
  L11_2 = locale
  L12_2 = "enter"
  L11_2 = L11_2(L12_2)
  L10_2.key = L11_2
  L11_2 = locale
  L12_2 = "finish_zone"
  L11_2 = L11_2(L12_2)
  L10_2.action = L11_2
  L11_2 = {}
  L12_2 = locale
  L13_2 = "wasd"
  L12_2 = L12_2(L13_2)
  L11_2.key = L12_2
  L12_2 = locale
  L13_2 = "move"
  L12_2 = L12_2(L13_2)
  L11_2.action = L12_2
  L12_2 = {}
  L13_2 = locale
  L14_2 = "move_up_keybind"
  L13_2 = L13_2(L14_2)
  L12_2.key = L13_2
  L13_2 = locale
  L14_2 = "move_up"
  L13_2 = L13_2(L14_2)
  L12_2.action = L13_2
  L13_2 = {}
  L14_2 = locale
  L15_2 = "move_down_keybind"
  L14_2 = L14_2(L15_2)
  L13_2.key = L14_2
  L14_2 = locale
  L15_2 = "move_down"
  L14_2 = L14_2(L15_2)
  L13_2.action = L14_2
  L14_2 = {}
  L15_2 = locale
  L16_2 = "scale_up_keybind"
  L15_2 = L15_2(L16_2)
  L14_2.key = L15_2
  L15_2 = locale
  L16_2 = "scale_up"
  L15_2 = L15_2(L16_2)
  L14_2.action = L15_2
  L15_2 = {}
  L16_2 = locale
  L17_2 = "scale_down_keybind"
  L16_2 = L16_2(L17_2)
  L15_2.key = L16_2
  L16_2 = locale
  L17_2 = "scale_down"
  L16_2 = L16_2(L17_2)
  L15_2.action = L16_2
  L16_2 = {}
  L17_2 = locale
  L18_2 = "shift"
  L17_2 = L17_2(L18_2)
  L16_2.key = L17_2
  L17_2 = locale
  L18_2 = "speed_up"
  L17_2 = L17_2(L18_2)
  L16_2.action = L17_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L6_2(L7_2)
  L6_2 = PolyZone
  L7_2 = L6_2
  L6_2 = L6_2.Create
  L8_2 = L2_2
  L9_2 = {}
  L10_2 = {}
  L11_2 = {}
  L12_2 = Config
  L12_2 = L12_2.ColorTheme
  L12_2 = L12_2.laser
  L12_2 = L12_2.r
  L13_2 = Config
  L13_2 = L13_2.ColorTheme
  L13_2 = L13_2.laser
  L13_2 = L13_2.g
  L14_2 = Config
  L14_2 = L14_2.ColorTheme
  L14_2 = L14_2.laser
  L14_2 = L14_2.b
  L15_2 = 250
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L10_2.walls = L11_2
  L11_2 = {}
  L12_2 = Config
  L12_2 = L12_2.ColorTheme
  L12_2 = L12_2.laser
  L12_2 = L12_2.r
  L13_2 = Config
  L13_2 = L13_2.ColorTheme
  L13_2 = L13_2.laser
  L13_2 = L13_2.g
  L14_2 = Config
  L14_2 = L14_2.ColorTheme
  L14_2 = L14_2.laser
  L14_2 = L14_2.b
  L15_2 = 50
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L10_2.outline = L11_2
  L9_2.debugColors = L10_2
  L9_2.minZ = L4_2
  L9_2.maxZ = L5_2
  L9_2.name = "CreatingProperty"
  L9_2.useGrid = false
  L9_2.debugPoly = true
  L9_2.debugGrid = true
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  CreatedZone = L6_2
  while true do
    L6_2 = CreatedZone
    if not L6_2 then
      break
    end
    L6_2 = lib
    L6_2 = L6_2.disableControls
    L6_2()
    L6_2 = CreatedZone
    L6_2 = L6_2.points
    L7_2 = CreatedZone
    L7_2 = L7_2.points
    L7_2 = #L7_2
    L6_2 = L6_2[L7_2]
    L7_2 = vector3
    L8_2 = L6_2.x
    L9_2 = L6_2.y
    L10_2 = 0.0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L7_2 = L7_1
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = CreatedZone
    L7_2 = L7_2.points
    L8_2 = CreatedZone
    L8_2 = L8_2.points
    L8_2 = #L8_2
    L9_2 = L6_2.xy
    L7_2[L8_2] = L9_2
    L7_2 = IsDisabledControlJustPressed
    L8_2 = 0
    L9_2 = 24
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = lib
      L7_2 = L7_2.print
      L7_2 = L7_2.debug
      L8_2 = "Point added"
      L7_2(L8_2)
      L7_2 = CreatedZone
      L7_2 = L7_2.points
      L8_2 = CreatedZone
      L8_2 = L8_2.points
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L9_2 = vector2
      L10_2 = L1_2.x
      L11_2 = L1_2.y
      L9_2 = L9_2(L10_2, L11_2)
      L7_2[L8_2] = L9_2
    end
    L7_2 = IsDisabledControlJustPressed
    L8_2 = 0
    L9_2 = 25
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = CreatedZone
      L7_2 = L7_2.points
      L8_2 = CreatedZone
      L8_2 = L8_2.points
      L8_2 = #L8_2
      L7_2[L8_2] = nil
      L7_2 = CreatedZone
      L7_2 = L7_2.points
      L7_2 = #L7_2
      if 0 == L7_2 then
        L7_2 = CreatedZone
        L8_2 = L7_2
        L7_2 = L7_2.destroy
        L7_2(L8_2)
        CreatedZone = nil
        L7_2 = SetFreecamEnabled
        L8_2 = false
        L7_2(L8_2)
        L7_2 = Wait
        L8_2 = 1
        L7_2(L8_2)
        L7_2 = SetEntityCoords
        L8_2 = cache
        L8_2 = L8_2.ped
        L9_2 = L1_2.x
        L10_2 = L1_2.y
        L11_2 = L1_2.z
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L15_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L7_2 = HideHelper
        L7_2()
        L7_2 = nil
        return L7_2
      end
    end
    L7_2 = IsDisabledControlJustPressed
    L8_2 = 0
    L9_2 = 191
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = CreatedZone
      L7_2 = L7_2.minZ
      if nil ~= L7_2 then
        L7_2 = CreatedZone
        L7_2 = L7_2.maxZ
        if nil ~= L7_2 then
          goto lbl_307
        end
      end
      L7_2 = Framework
      L7_2 = L7_2.Notify
      L8_2 = {}
      L9_2 = locale
      L10_2 = "notify_set_property_enter_zcoords"
      L9_2 = L9_2(L10_2)
      L8_2.description = L9_2
      L9_2 = locale
      L10_2 = "property"
      L9_2 = L9_2(L10_2)
      L8_2.title = L9_2
      L8_2.type = "error"
      L7_2(L8_2)
      goto lbl_333
      ::lbl_307::
      L7_2 = FormatPolyZone
      L7_2 = L7_2()
      L8_2 = CreatedZone
      L9_2 = L8_2
      L8_2 = L8_2.destroy
      L8_2(L9_2)
      CreatedZone = nil
      L8_2 = SetFreecamEnabled
      L9_2 = false
      L8_2(L9_2)
      L8_2 = Wait
      L9_2 = 1
      L8_2(L9_2)
      L8_2 = SetEntityCoords
      L9_2 = cache
      L9_2 = L9_2.ped
      L10_2 = L1_2.x
      L11_2 = L1_2.y
      L12_2 = L1_2.z
      L13_2 = false
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L8_2 = HideHelper
      L8_2()
      return L7_2
    end
    ::lbl_333::
    L7_2 = CreatedZone
    L8_2 = CreatedZone
    L9_2 = handleZ
    L10_2 = CreatedZone
    L10_2 = L10_2.minZ
    L11_2 = CreatedZone
    L11_2 = L11_2.maxZ
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    L8_2.maxZ = L10_2
    L7_2.minZ = L9_2
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L6_2 = HideHelper
  L6_2()
  L6_2 = nil
  return L6_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = A0_2.thickness
    L1_2 = L1_2 / 2
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 5.0
  ::lbl_9::
  L2_2 = L8_1
  if A0_2 then
    L3_2 = {}
    L4_2 = A0_2.points
    L3_2.points = L4_2
    L4_2 = A0_2.center
    L4_2 = L4_2.z
    L4_2 = L4_2 - L1_2
    L3_2.minZ = L4_2
    L4_2 = A0_2.center
    L4_2 = L4_2.z
    L4_2 = L4_2 + L1_2
    L3_2.maxZ = L4_2
    if L3_2 then
      goto lbl_29
    end
  end
  L3_2 = nil
  ::lbl_29::
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  return L2_2
end
EditPolyZone = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = CreatedZone
  L0_2 = L0_2.maxZ
  L1_2 = CreatedZone
  L1_2 = L1_2.minZ
  L0_2 = L0_2 + L1_2
  L0_2 = L0_2 / 2
  L1_2 = math
  L1_2 = L1_2.huge
  L2_2 = math
  L2_2 = L2_2.huge
  L3_2 = math
  L3_2 = L3_2.huge
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.huge
  L4_2 = -L4_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = math
  L7_2 = L7_2.huge
  L7_2 = -L7_2
  L8_2 = nil
  L9_2 = CreatedZone
  L9_2 = L9_2.points
  L10_2 = #L9_2
  L9_2[L10_2] = nil
  L10_2 = ipairs
  L11_2 = L9_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = math
    L16_2 = L16_2.min
    L17_2 = L1_2
    L18_2 = L15_2.x
    L16_2 = L16_2(L17_2, L18_2)
    L1_2 = L16_2
    L16_2 = math
    L16_2 = L16_2.min
    L17_2 = L2_2
    L18_2 = L15_2.y
    L16_2 = L16_2(L17_2, L18_2)
    L2_2 = L16_2
    L16_2 = math
    L16_2 = L16_2.max
    L17_2 = L3_2
    L18_2 = L15_2.x
    L16_2 = L16_2(L17_2, L18_2)
    L3_2 = L16_2
    L16_2 = math
    L16_2 = L16_2.max
    L17_2 = L4_2
    L18_2 = L15_2.y
    L16_2 = L16_2(L17_2, L18_2)
    L4_2 = L16_2
    L16_2 = L15_2.x
    L5_2 = L5_2 + L16_2
    L16_2 = L15_2.y
    L6_2 = L6_2 + L16_2
    L16_2 = vector3
    L17_2 = L15_2.x
    L18_2 = L15_2.y
    L19_2 = L0_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L9_2[L14_2] = L16_2
  end
  L10_2 = #L9_2
  L5_2 = L5_2 / L10_2
  L6_2 = L6_2 / L10_2
  L11_2 = vector3
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = L0_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = ipairs
  L13_2 = L9_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = L11_2 - L17_2
    L18_2 = #L18_2
    if L7_2 < L18_2 then
      L7_2 = L18_2
      L8_2 = L17_2
    end
  end
  if not L8_2 then
    return
  end
  L12_2 = {}
  L13_2 = CalculatePolygonArea
  L14_2 = CreatedZone
  L14_2 = L14_2.points
  L13_2 = L13_2(L14_2)
  L12_2.area = L13_2
  L12_2.center = L11_2
  L13_2 = vector3
  L14_2 = L8_2.x
  L15_2 = L8_2.y
  L16_2 = L0_2
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.farthestPoint = L13_2
  L12_2.points = L9_2
  L13_2 = CreatedZone
  L13_2 = L13_2.maxZ
  L14_2 = CreatedZone
  L14_2 = L14_2.minZ
  L13_2 = L13_2 - L14_2
  L12_2.thickness = L13_2
  return L12_2
end
FormatPolyZone = L9_1
L9_1 = math
L9_1 = L9_1.abs
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.x
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L3_3 = L3_3.y
    L2_3 = L2_3 * L3_3
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L3_3 = L3_3.x
    L4_3 = A0_2
    L4_3 = L4_3[A0_3]
    L4_3 = L4_3.y
    L3_3 = L3_3 * L4_3
    L2_3 = L2_3 - L3_3
    return L2_3
  end
  L2_2 = #A0_2
  if L2_2 > 2 then
    L2_2 = L1_2
    L3_2 = #A0_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = 0
  ::lbl_12::
  L3_2 = 1
  L4_2 = #A0_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2
    L8_2 = L6_2
    L9_2 = L6_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L2_2 + L7_2
  end
  L3_2 = L9_1
  L4_2 = 0.5 * L2_2
  return L3_2(L4_2)
end
CalculatePolygonArea = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  if A1_2 then
    L2_2 = A1_2.rotation
    L3_2 = A1_2.camera
  end
  L4_2 = FUNC
  L4_2 = L4_2.rotationToDirection
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L3_2.x
  L7_2 = L4_2.x
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L7_2 = L4_2.y
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L3_2.z
  L7_2 = L4_2.z
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L5_2.z = L6_2
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L14_2 = -1
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L16_2 = 0
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L10_2
  return L11_2, L12_2, L13_2
end
RayCastGamePlayCamera = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L3_2 = IsFreecamEnabled
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = GetFreecamPosition
    L3_2 = L3_2()
    L4_2 = vec3
    L5_2 = 0
    L6_2 = 0
    L7_2 = -0.5
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2 + L4_2
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  ::lbl_18::
  L4_2 = IsFreecamEnabled
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = GetFreecamRotation
    L4_2 = L4_2()
    if L4_2 then
      goto lbl_29
    end
  end
  L4_2 = GetGameplayCamRot
  L5_2 = 2
  L4_2 = L4_2(L5_2)
  ::lbl_29::
  L5_2 = {}
  L5_2.camera = L3_2
  L5_2.rotation = L4_2
  L6_2 = RayCastGamePlayCamera
  L7_2 = 5000.0
  L8_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L9_2 = GetEntityCoords
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    if not A2_2 then
      L10_2 = DrawLine
      L11_2 = L9_2.x
      L12_2 = L9_2.y
      L13_2 = L9_2.z
      L14_2 = L7_2.x
      L15_2 = L7_2.y
      L16_2 = L7_2.z
      L17_2 = A0_2.r
      L18_2 = A0_2.g
      L19_2 = A0_2.b
      L20_2 = A0_2.a
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    if not A1_2 then
      L10_2 = DrawMarker
      L11_2 = 28
      L12_2 = L7_2.x
      L13_2 = L7_2.y
      L14_2 = L7_2.z
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 180.0
      L20_2 = 0.0
      L21_2 = 0.1
      L22_2 = 0.1
      L23_2 = 0.1
      L24_2 = A0_2.r
      L25_2 = A0_2.g
      L26_2 = A0_2.b
      L27_2 = A0_2.a
      L28_2 = false
      L29_2 = true
      L30_2 = 2
      L31_2 = nil
      L32_2 = nil
      L33_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    end
  end
  L9_2 = L6_2
  L10_2 = L7_2
  return L9_2, L10_2
end
DrawLaser = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = 3365332906397525184
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = Citizen
  L6_2 = L6_2.PointerValueInt
  L6_2 = L6_2()
  L7_2 = Citizen
  L7_2 = L7_2.PointerValueInt
  L7_2 = L7_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:getAddress"
  L4_2 = false
  L5_2 = {}
  L6_2 = GetStreetNameFromHashKey
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L5_2.address = L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
L11_1 = RegisterCommand
L12_1 = "nolag_freecam"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Config
  L3_2 = L3_2.Debug
  if not L3_2 then
    return
  end
  L3_2 = SetFreecamEnabled
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.IsActive
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L3_2(L4_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
L11_1 = TriggerEvent
L12_1 = "chat:removeSuggestion"
L13_1 = "/nolag_freecam"
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "nolag_freecamcoords"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Config
  L3_2 = L3_2.Debug
  if not L3_2 then
    return
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetPosition
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRotation
  L4_2 = L4_2(L5_2)
  L5_2 = lib
  L5_2 = L5_2.setClipboard
  L6_2 = "camCoords = "
  L7_2 = L3_2
  L8_2 = [[
,	
camRotation = ]]
  L9_2 = L4_2
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2(L6_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
L11_1 = TriggerEvent
L12_1 = "chat:removeSuggestion"
L13_1 = "/nolag_freecamcoords"
L11_1(L12_1, L13_1)
L11_1 = {}
L11_1.shellsCreatorFilter = ""
L11_1.shellsNameFilter = ""
L12_1 = ShellsDataIds
L11_1.filteredShells = L12_1
L12_1 = {}
L11_1.filteredIPLs = L12_1
L12_1 = {}
L11_1.imageIds = L12_1
L11_1.captureScreenshot = false
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "nolag_properties:server:isPlayerAuthorized"
  L2_2 = false
  L3_2 = "creation"
  L0_2, L1_2 = L0_2(L1_2, L2_2, L3_2)
  if not L0_2 then
    L2_2 = Framework
    L2_2 = L2_2.Notify
    L3_2 = {}
    L3_2.description = L1_2
    L3_2.type = "error"
    L2_2(L3_2)
    return
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = BuildingManager
  L4_2 = L4_2.buildings
  L5_2 = FilterShells
  L5_2()
  L5_2 = FilterIPLs
  L5_2()
  L5_2 = pairs
  L6_2 = Config
  L6_2 = L6_2.Functions
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = #L2_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L12_2.value = L9_2
    L13_2 = L10_2.label
    L12_2.label = L13_2
    L2_2[L11_2] = L12_2
  end
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = #L3_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L13_2 = L10_2.label
    L12_2.value = L13_2
    L12_2.key = L9_2
    L13_2 = {}
    L14_2 = L10_2.metadata
    L14_2 = L14_2.enterData
    L14_2 = L14_2.y
    L15_2 = L10_2.metadata
    L15_2 = L15_2.enterData
    L15_2 = L15_2.x
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L12_2.coords = L13_2
    L3_2[L11_2] = L12_2
  end
  L5_2 = {}
  L6_2 = 0
  L7_2 = {}
  L8_2 = "ipl"
  L9_2 = "shell"
  L10_2 = "mlo"
  L11_2 = "building"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L8_2 = pairs
  L9_2 = Config
  L9_2 = L9_2.CreationMenu
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = table
    L14_2 = L14_2.contains
    L15_2 = L7_2
    L16_2 = L12_2
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
    else
      L14_2 = L13_2.enabled
      if not L14_2 then
      else
        L14_2 = L13_2.jobs
        if L14_2 then
          L14_2 = Framework
          L14_2 = L14_2.isPlayerAuthorized
          L15_2 = L13_2.jobs
          L14_2 = L14_2(L15_2)
          if not L14_2 then
        end
        else
          L14_2 = #L5_2
          L14_2 = L14_2 + 1
          L15_2 = {}
          L16_2 = L13_2.label
          L15_2.label = L16_2
          L15_2.value = L12_2
          L16_2 = L13_2.image
          L15_2.image = L16_2
          L5_2[L14_2] = L15_2
          L6_2 = L6_2 + 1
        end
      end
    end
  end
  if 0 == L6_2 then
    L8_2 = lib
    L8_2 = L8_2.print
    L8_2 = L8_2.error
    L9_2 = "It should have at least one property type enabled in the config - CreationMenu"
    L8_2(L9_2)
    return
  end
  L8_2 = SendNUIMessage
  L9_2 = {}
  L9_2.action = "startCreation"
  L10_2 = {}
  L11_2 = Config
  L11_2 = L11_2.Tags
  L10_2.propertyTags = L11_2
  L10_2.propertyTypes = L5_2
  L11_2 = L11_1.filteredIPLs
  L10_2.allIplTypes = L11_2
  L11_2 = GetIPLs
  L12_2 = 0
  L11_2 = L11_2(L12_2)
  L10_2.iplTypes = L11_2
  L11_2 = L11_1.filteredIPLs
  L11_2 = #L11_2
  L10_2.totalIpls = L11_2
  L11_2 = GetAllShells
  L11_2 = L11_2()
  L10_2.allShellTypes = L11_2
  L11_2 = GetShells
  L12_2 = 0
  L11_2 = L11_2(L12_2)
  L10_2.shellTypes = L11_2
  L11_2 = ShellsCreators
  L10_2.shellCreators = L11_2
  L11_2 = L11_1.filteredShells
  L11_2 = #L11_2
  L10_2.totalShells = L11_2
  L10_2.buildings = L3_2
  L10_2.interactionPoints = L2_2
  L9_2.data = L10_2
  L8_2(L9_2)
  L8_2 = SetNuiFocus
  L9_2 = true
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetNuiFocusKeepInput
  L9_2 = false
  L8_2(L9_2)
end
OpenCreationMenu = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L11_1.filteredShells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end
GetTotalShells = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = 0
  end
  L3_2 = 0
  L4_2 = L2_2 + 1
  while L3_2 < 15 do
    L5_2 = L11_1.filteredShells
    L5_2 = #L5_2
    if not (L4_2 <= L5_2) then
      break
    end
    L5_2 = L11_1.filteredShells
    L5_2 = L5_2[L4_2]
    L6_2 = ShellsData
    L6_2 = L6_2[L5_2]
    if not L6_2 then
      break
    end
    L7_2 = GetPrice
    L8_2 = L6_2
    L9_2 = Config
    L9_2 = L9_2.ShellPrice
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L11_2 = L6_2.label
    L10_2.value = L11_2
    L10_2.key = L5_2
    L11_2 = L6_2.imgs
    L10_2.imgs = L11_2
    L10_2.minPrice = L7_2
    L10_2.maxPrice = L8_2
    L1_2[L9_2] = L10_2
    L3_2 = L3_2 + 1
    L4_2 = L4_2 + 1
  end
  return L1_2
end
GetShells = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = 0
  end
  L3_2 = 0
  L4_2 = L2_2 + 1
  while L3_2 < 15 do
    L5_2 = L11_1.filteredIPLs
    L5_2 = L5_2[L4_2]
    if not L5_2 then
      break
    end
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L1_2[L6_2] = L5_2
    L3_2 = L3_2 + 1
    L4_2 = L4_2 + 1
  end
  return L1_2
end
GetIPLs = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L11_1.filteredShells
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ShellsData
    L7_2 = L7_2[L6_2]
    L8_2 = GetPrice
    L9_2 = L7_2
    L10_2 = Config
    L10_2 = L10_2.ShellPrice
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    L10_2 = #L0_2
    L10_2 = L10_2 + 1
    L11_2 = {}
    L12_2 = L7_2.label
    L11_2.value = L12_2
    L11_2.key = L6_2
    L12_2 = L7_2.imgs
    L11_2.imgs = L12_2
    L11_2.minPrice = L8_2
    L11_2.maxPrice = L9_2
    L0_2[L10_2] = L11_2
  end
  return L0_2
end
GetAllShells = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = ShellsData
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L11_1.shellsCreatorFilter
    if "" ~= L7_2 then
      L7_2 = L6_2.creator
      L8_2 = L11_1.shellsCreatorFilter
      if L7_2 ~= L8_2 then
    end
    else
      L7_2 = L11_1.shellsNameFilter
      if "" ~= L7_2 then
        L7_2 = string
        L7_2 = L7_2.find
        L8_2 = string
        L8_2 = L8_2.lower
        L9_2 = L6_2.label
        L8_2 = L8_2(L9_2)
        L9_2 = string
        L9_2 = L9_2.lower
        L10_2 = L11_1.shellsNameFilter
        L9_2, L10_2 = L9_2(L10_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        if not L7_2 then
      end
      else
        L7_2 = L6_2.jobs
        if L7_2 then
          L7_2 = Framework
          L7_2 = L7_2.isPlayerAuthorized
          L8_2 = L6_2.jobs
          L7_2 = L7_2(L8_2)
          if not L7_2 then
        end
        else
          L7_2 = #L0_2
          L7_2 = L7_2 + 1
          L0_2[L7_2] = L5_2
        end
      end
    end
  end
  L11_1.filteredShells = L0_2
end
FilterShells = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = IPLsData
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.jobs
    if L7_2 then
      L7_2 = Framework
      L7_2 = L7_2.isPlayerAuthorized
      L8_2 = L6_2.jobs
      L7_2 = L7_2(L8_2)
      if not L7_2 then
    end
    else
      L7_2 = GetPrice
      L8_2 = L6_2
      L9_2 = Config
      L9_2 = L9_2.IplPrice
      L7_2, L8_2 = L7_2(L8_2, L9_2)
      L9_2 = #L0_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L10_2.key = L5_2
      L11_2 = L6_2.label
      L10_2.value = L11_2
      L11_2 = L6_2.imgs
      if not L11_2 then
        L11_2 = {}
        L12_2 = {}
        L13_2 = Config
        L13_2 = L13_2.CreationMenu
        L13_2 = L13_2.ipl
        L13_2 = L13_2.image
        L12_2.url = L13_2
        L12_2.label = "Main"
        L11_2[1] = L12_2
      end
      L10_2.imgs = L11_2
      L10_2.minPrice = L7_2
      L10_2.maxPrice = L8_2
      L0_2[L9_2] = L10_2
    end
  end
  L11_1.filteredIPLs = L0_2
end
FilterIPLs = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2[1]
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = A1_2[2]
  if not L3_2 then
    L3_2 = 100
  end
  L4_2 = A0_2.price
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L2_2 = L4_2[1]
    L3_2 = L4_2[2]
  else
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if "number" == L5_2 then
      L2_2 = L4_2
      L3_2 = L4_2
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  return L5_2, L6_2
end
GetPrice = L12_1
L12_1 = RegisterNUICallback
L13_1 = "creation:getCameraData"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetCamData
  L3_2 = true
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "getInteractionPointCoords"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = A0_2
  if L3_2 then
    L3_2 = L3_2.car
  end
  if L3_2 then
    L3_2 = GetPointCoordsCar
    L4_2 = A0_2.propertyId
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = Config
    L3_2 = L3_2.PointSelectionMethods
    L3_2 = L3_2.interactablePoints
    L3_2 = "ped" == L3_2
    L4_2 = GetPointCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  L3_2 = A1_2
  L4_2 = {}
  L5_2 = L2_2
  if L5_2 then
    L5_2 = L5_2.x
  end
  L4_2.x = L5_2
  L5_2 = L2_2
  if L5_2 then
    L5_2 = L5_2.y
  end
  L4_2.y = L5_2
  L5_2 = L2_2
  if L5_2 then
    L5_2 = L5_2.z
  end
  L4_2.z = L5_2
  L5_2 = L2_2
  if L5_2 then
    L5_2 = L5_2.w
  end
  if not L5_2 then
    L5_2 = GetEntityHeading
    L6_2 = cache
    L6_2 = L6_2.ped
    L5_2 = L5_2(L6_2)
  end
  L4_2.w = L5_2
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:getPointCoords"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = A0_2
  if L3_2 then
    L3_2 = L3_2.pointType
  end
  if L3_2 then
    L3_2 = A0_2.pointType
    L4_2 = Config
    L4_2 = L4_2.PointSelectionMethods
    L4_2 = L4_2[L3_2]
    L4_2 = "ped" == L4_2
    if "exitPoint" == L3_2 and not L4_2 then
      L5_2 = GetSpawnCoords
      L5_2 = L5_2()
      L2_2 = L5_2
    elseif "garagePoint" == L3_2 then
      L5_2 = GetPointCoordsCar
      L5_2 = L5_2()
      L2_2 = L5_2
    else
      L5_2 = GetPointCoords
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L2_2 = L5_2
    end
  else
    L3_2 = Config
    L3_2 = L3_2.PointSelectionMethods
    L3_2 = L3_2.enterPoint
    L3_2 = "ped" == L3_2
    L4_2 = GetPointCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  L3_2 = A1_2
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:getYardZone"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L8_1
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = ""
  end
  L3_2 = A1_2
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:enterPreviewIpl"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.ipl
  L3_2 = IPLsData
  L3_2 = L3_2[L2_2]
  L4_2 = GetEntityCoords
  L5_2 = cache
  L5_2 = L5_2.ped
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.insideCoords
  L6_2 = true
  L7_2 = SetEntityCoords
  L8_2 = cache
  L8_2 = L8_2.ped
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L11_2 = L5_2.z
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    while true do
      L0_3 = L6_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = DrawMarker
      L1_3 = 1
      L2_3 = L5_2.x
      L3_3 = L5_2.y
      L4_3 = L5_2.z
      L4_3 = L4_3 - 1
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = 0.0
      L11_3 = 2.0
      L12_3 = 2.0
      L13_3 = 2.0
      L14_3 = 92
      L15_3 = 44
      L16_3 = 161
      L17_3 = 200
      L18_3 = false
      L19_3 = false
      L20_3 = 2
      L21_3 = nil
      L22_3 = nil
      L23_3 = false
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 46
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = cache
        L1_3 = L1_3.ped
        L0_3 = L0_3(L1_3)
        L1_3 = L5_2
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        if L0_3 < 2.0 then
          L0_3 = SetEntityCoords
          L1_3 = cache
          L1_3 = L1_3.ped
          L2_3 = L4_2.x
          L3_3 = L4_2.y
          L4_3 = L4_2.z
          L0_3(L1_3, L2_3, L3_3, L4_3)
          L0_3 = false
          L6_2 = L0_3
        end
      end
    end
  end
  L7_2(L8_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:finishCreation"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = A0_2.propertyCount
  if L2_2 then
    L2_2 = A0_2.propertyCount
    if L2_2 > 1 then
      L2_2 = A0_2.name
      L3_2 = 1
      L4_2 = A0_2.propertyCount
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L2_2
        L8_2 = " "
        L9_2 = L6_2
        L7_2 = L7_2 .. L8_2 .. L9_2
        A0_2.name = L7_2
        L7_2 = L10_1
        L7_2 = L7_2()
        A0_2.address = L7_2
        L7_2 = lib
        L7_2 = L7_2.callback
        L7_2 = L7_2.await
        L8_2 = "nolag_properties:server:addNewProperty"
        L9_2 = false
        L10_2 = A0_2
        L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2)
        if L7_2 then
          L9_2 = Framework
          L9_2 = L9_2.Notify
          L10_2 = {}
          L11_2 = locale
          L12_2 = "notify_successfully_created_property"
          L11_2 = L11_2(L12_2)
          L10_2.description = L11_2
          L11_2 = locale
          L12_2 = "property"
          L11_2 = L11_2(L12_2)
          L10_2.title = L11_2
          L10_2.type = "success"
          L10_2.duration = 8000
          L10_2.id = "property_created_successfully"
          L9_2(L10_2)
        else
          L9_2 = Framework
          L9_2 = L9_2.Notify
          L10_2 = {}
          L10_2.description = L8_2
          L11_2 = locale
          L12_2 = "property"
          L11_2 = L11_2(L12_2)
          L10_2.title = L11_2
          L10_2.type = "error"
          L10_2.duration = 8000
          L10_2.id = "property_created_error"
          L9_2(L10_2)
        end
      end
  end
  else
    L2_2 = L10_1
    L2_2 = L2_2()
    A0_2.address = L2_2
    L2_2 = lib
    L2_2 = L2_2.callback
    L2_2 = L2_2.await
    L3_2 = "nolag_properties:server:addNewProperty"
    L4_2 = false
    L5_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L4_2 = Framework
      L4_2 = L4_2.Notify
      L5_2 = {}
      L6_2 = locale
      L7_2 = "notify_successfully_created_property"
      L6_2 = L6_2(L7_2)
      L5_2.description = L6_2
      L6_2 = locale
      L7_2 = "property"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L5_2.type = "success"
      L5_2.duration = 8000
      L5_2.id = "property_created_successfully"
      L4_2(L5_2)
    else
      L4_2 = Framework
      L4_2 = L4_2.Notify
      L5_2 = {}
      L5_2.description = L3_2
      L6_2 = locale
      L7_2 = "property"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L5_2.type = "error"
      L5_2.duration = 8000
      L5_2.id = "property_created_error"
      L4_2(L5_2)
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:filterShells"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.creator
  if not L2_2 then
    L2_2 = ""
  end
  L11_1.shellsCreatorFilter = L2_2
  L2_2 = A0_2.name
  if not L2_2 then
    L2_2 = ""
  end
  L11_1.shellsNameFilter = L2_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Filtering shells by creator: "
  L4_2 = L11_1.shellsCreatorFilter
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = L11_1.shellsNameFilter
  if "" ~= L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Filtering shells by name: "
    L4_2 = L11_1.shellsNameFilter
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = GetTotalShells
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = FilterShells
  L2_2()
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setCreationMenuValue"
  L4_2 = {}
  L4_2.valueType = "totalShells"
  L5_2 = GetTotalShells
  L5_2 = L5_2()
  L4_2.value = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setCreationMenuValue"
  L4_2 = {}
  L4_2.valueType = "loadShells"
  L5_2 = GetShells
  L6_2 = 0
  L5_2 = L5_2(L6_2)
  L4_2.value = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:loadMoreShells"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Loading more shells"
  L2_2(L3_2)
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.offset
    if L2_2 then
      goto lbl_18
    end
  end
  L2_2 = A0_2
  ::lbl_18::
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = GetShells
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "setCreationMenuValue"
  L5_2 = {}
  L5_2.valueType = "loadShells"
  L6_2 = GetShells
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L5_2.value = L6_2
  L4_2.data = L5_2
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:getImage"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:getCameraStatus"
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L4_2.description = "There's an issue with the camera. Check your server console for more information"
    L4_2.type = "error"
    L4_2.duration = 10000
    L3_2(L4_2)
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
    return
  end
  L3_2 = CreateMobilePhone
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = CellCamActivate
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = ShowHelper
  L4_2 = {}
  L5_2 = {}
  L6_2 = locale
  L7_2 = "lmb"
  L6_2 = L6_2(L7_2)
  L5_2.key = L6_2
  L6_2 = locale
  L7_2 = "ui_take_photo"
  L6_2 = L6_2(L7_2)
  L5_2.action = L6_2
  L6_2 = {}
  L7_2 = locale
  L8_2 = "rmb"
  L7_2 = L7_2(L8_2)
  L6_2.key = L7_2
  L7_2 = locale
  L8_2 = "ui_cancel"
  L7_2 = L7_2(L8_2)
  L6_2.action = L7_2
  L7_2 = {}
  L7_2.key = "G"
  L8_2 = locale
  L9_2 = "helper_toggle_camera"
  L8_2 = L8_2(L9_2)
  L7_2.action = L8_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = false
    L1_3 = true
    while not L0_3 do
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = 58
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        if L1_3 then
          L2_3 = DestroyMobilePhone
          L2_3()
          L2_3 = CellCamActivate
          L3_3 = false
          L4_3 = false
          L2_3(L3_3, L4_3)
        else
          L2_3 = CreateMobilePhone
          L3_3 = 0
          L2_3(L3_3)
          L2_3 = CellCamActivate
          L3_3 = true
          L4_3 = true
          L2_3(L3_3, L4_3)
        end
        L1_3 = not L1_3
      end
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 1
      L4_3 = 24
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 and L1_3 then
        L2_3 = lib
        L2_3 = L2_3.callback
        L2_3 = L2_3.await
        L3_3 = "nolag_properties:server:takePhoto"
        L4_3 = 1000
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L3_3 = DestroyMobilePhone
          L3_3()
          L3_3 = CellCamActivate
          L4_3 = false
          L5_3 = false
          L3_3(L4_3, L5_3)
          L0_3 = true
          L3_3 = A0_2
          if L3_3 then
            L3_3 = L3_3.propertyId
          end
          if L3_3 then
            L3_3 = A0_2.propertyId
            L4_3 = PropertyManager
            L5_3 = L4_3
            L4_3 = L4_3.getPropertyById
            L6_3 = L3_3
            L4_3 = L4_3(L5_3, L6_3)
            if L4_3 then
              L6_3 = L4_3
              L5_3 = L4_3.addImage
              L7_3 = L2_3
              L5_3(L6_3, L7_3)
            end
          end
          L3_3 = HideHelper
          L3_3()
          L3_3 = A1_2
          L4_3 = L2_3
          L3_3(L4_3)
          break
        end
        L3_3 = HideHelper
        L3_3()
        L3_3 = A1_2
        L4_3 = false
        L3_3(L4_3)
        break
      else
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 1
        L4_3 = 25
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = DestroyMobilePhone
          L2_3()
          L2_3 = CellCamActivate
          L3_3 = false
          L4_3 = false
          L2_3(L3_3, L4_3)
          L2_3 = HideHelper
          L2_3()
          L2_3 = A1_2
          L3_3 = false
          L2_3(L3_3)
          break
        end
      end
    end
  end
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:loadMoreIpls"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setCreationMenuValue"
  L4_2 = {}
  L4_2.valueType = "loadIpls"
  L5_2 = GetIPLs
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.value = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "creation:previewShell"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.shell
  L3_2 = ShellsData
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = cache
  L5_2 = L5_2.ped
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.hash
  L6_2 = vector3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = 2000.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = false
  L8_2 = nil
  L9_2 = IsModelInCdimage
  L10_2 = L5_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = DoScreenFadeOut
    L10_2 = 10
    L9_2(L10_2)
    if L8_2 then
      L9_2 = DeleteObject
      L10_2 = L8_2
      L9_2(L10_2)
    end
    L9_2 = SpawnShell
    L10_2 = L5_2
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
    L9_2 = L3_2.doorOffset
    L10_2 = GetOffsetFromEntityInWorldCoords
    L11_2 = L8_2
    L12_2 = L9_2.x
    L13_2 = L9_2.y
    L14_2 = L9_2.z
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = SetEntityCoords
    L12_2 = cache
    L12_2 = L12_2.ped
    L13_2 = L10_2.x
    L14_2 = L10_2.y
    L15_2 = L10_2.z
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L11_2 = SetEntityHeading
    L12_2 = cache
    L12_2 = L12_2.ped
    L13_2 = L3_2.doorOffset
    L13_2 = L13_2.h
    L11_2(L12_2, L13_2)
    L11_2 = DoScreenFadeIn
    L12_2 = 10
    L11_2(L12_2)
    L7_2 = true
    L11_2 = ShowHelper
    L12_2 = {}
    L13_2 = {}
    L13_2.key = "\226\140\171"
    L13_2.action = "Leave shell"
    L12_2[1] = L13_2
    L11_2(L12_2)
  else
    L9_2 = Framework
    L9_2 = L9_2.Notify
    L10_2 = {}
    L11_2 = locale
    L12_2 = "invalid_shell"
    L13_2 = L3_2.label
    L11_2 = L11_2(L12_2, L13_2)
    L10_2.description = L11_2
    L11_2 = locale
    L12_2 = "property"
    L11_2 = L11_2(L12_2)
    L10_2.title = L11_2
    L10_2.type = "error"
    return L9_2(L10_2)
  end
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = L7_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 177
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = false
        L7_2 = L0_3
        L0_3 = HideHelper
        L0_3()
        L0_3 = DoScreenFadeOut
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 2000
        L0_3(L1_3)
        L0_3 = DeleteObject
        L1_3 = L8_2
        L0_3(L1_3)
        L0_3 = nil
        L8_2 = L0_3
        L0_3 = SetEntityCoords
        L1_3 = cache
        L1_3 = L1_3.ped
        L2_3 = L4_2.x
        L3_3 = L4_2.y
        L4_3 = L4_2.z
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = DoScreenFadeIn
        L1_3 = 250
        L0_3(L1_3)
      end
    end
  end
  L9_2(L10_2)
end
L12_1(L13_1, L14_1)
