local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
BoxZone = L0_1
L0_1 = setmetatable
L1_1 = BoxZone
L2_1 = {}
L3_1 = PolyZone
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = math
L0_1 = L0_1.rad
L1_1 = math
L1_1 = L1_1.cos
L2_1 = math
L2_1 = L2_1.sin
L3_1 = PolyZone
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if 0.0 == A2_2 then
    return A1_2
  end
  L3_2 = A1_2 - A0_2
  L4_2 = L3_2.x
  L5_2 = L3_2.y
  L6_2 = L0_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  A2_2 = L6_2
  L6_2 = L1_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L2_1
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2 * L6_2
  L9_2 = L5_2 * L7_2
  L8_2 = L8_2 - L9_2
  L9_2 = L4_2 * L7_2
  L10_2 = L5_2 * L6_2
  L9_2 = L9_2 + L10_2
  L10_2 = vector2
  L11_2 = L8_2
  L12_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 + A0_2
  return L10_2
end
L3_1.rotate = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.scale
  if not L1_2 then
    L1_2 = {}
    L2_2 = 1.0
    L3_2 = 1.0
    L4_2 = 1.0
    L5_2 = 1.0
    L6_2 = 1.0
    L7_2 = 1.0
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L1_2[5] = L6_2
    L1_2[6] = L7_2
  end
  L2_2 = A0_2.offset
  if not L2_2 then
    L2_2 = {}
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
  end
  L3_2 = assert
  L4_2 = #L1_2
  L4_2 = 3 == L4_2
  L5_2 = "Scale must be of length 3 or 6"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = #L2_2
  L4_2 = 3 == L4_2
  L5_2 = "Offset must be of length 3 or 6"
  L3_2(L4_2, L5_2)
  L3_2 = #L1_2
  if 3 == L3_2 then
    L3_2 = {}
    L4_2 = L1_2[1]
    L5_2 = L1_2[1]
    L6_2 = L1_2[2]
    L7_2 = L1_2[2]
    L8_2 = L1_2[3]
    L9_2 = L1_2[3]
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L1_2 = L3_2
  end
  L3_2 = #L2_2
  if 3 == L3_2 then
    L3_2 = {}
    L4_2 = L2_2[1]
    L5_2 = L2_2[1]
    L6_2 = L2_2[2]
    L7_2 = L2_2[2]
    L8_2 = L2_2[3]
    L9_2 = L2_2[3]
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L3_2[6] = L9_2
    L2_2 = L3_2
  end
  L3_2 = vector3
  L4_2 = L2_2[3]
  L5_2 = L2_2[2]
  L6_2 = L2_2[6]
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = L2_2[4]
  L6_2 = L2_2[1]
  L7_2 = L2_2[5]
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = vector3
  L6_2 = L1_2[3]
  L7_2 = L1_2[2]
  L8_2 = L1_2[6]
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = L1_2[4]
  L8_2 = L1_2[1]
  L9_2 = L1_2[5]
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  return L7_2, L8_2, L9_2, L10_2
end
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L7_2 = A1_2 / 2
  L8_2 = A2_2 / 2
  L9_2 = vector3
  L10_2 = -L8_2
  L11_2 = -L7_2
  L12_2 = 0.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = L8_2
  L12_2 = L7_2
  L13_2 = 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = L9_2 * A3_2
  L9_2 = L11_2 - A5_2
  L11_2 = L10_2 * A4_2
  L10_2 = L11_2 + A6_2
  L11_2 = A0_2.xy
  L12_2 = vector2
  L13_2 = L9_2.x
  L14_2 = L9_2.y
  L12_2 = L12_2(L13_2, L14_2)
  L11_2 = L11_2 + L12_2
  L12_2 = A0_2.xy
  L13_2 = vector2
  L14_2 = L10_2.x
  L15_2 = L9_2.y
  L13_2 = L13_2(L14_2, L15_2)
  L12_2 = L12_2 + L13_2
  L13_2 = A0_2.xy
  L14_2 = vector2
  L15_2 = L10_2.x
  L16_2 = L10_2.y
  L14_2 = L14_2(L15_2, L16_2)
  L13_2 = L13_2 + L14_2
  L14_2 = A0_2.xy
  L15_2 = vector2
  L16_2 = L9_2.x
  L17_2 = L10_2.y
  L15_2 = L15_2(L16_2, L17_2)
  L14_2 = L14_2 + L15_2
  L15_2 = {}
  L16_2 = L11_2
  L17_2 = L12_2
  L18_2 = L13_2
  L19_2 = L14_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  return L15_2
end
L5_1 = BoxZone
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PolyZone
  L2_2 = L2_2.rotate
  L3_2 = A0_2.startPos
  L4_2 = A1_2
  L5_2 = A0_2.offsetRot
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2.offsetPos
  L2_2 = L2_2 + L3_2
  return L2_2
end
L5_1.TransformPoint = L6_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.debugBlip
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.addDebugBlip
    L2_2(L3_2)
  end
  L2_2 = A1_2.debugPoly
  if not L2_2 then
    return
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    while true do
      L0_3 = A0_2.destroyed
      if L0_3 then
        break
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.draw
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
end
L6_1 = vector3
L7_1 = 0.0
L8_1 = 0.0
L9_1 = 0.0
L6_1 = L6_1(L7_1, L8_1, L9_1)
L7_1 = vector3
L8_1 = 0.0
L9_1 = 0.0
L10_1 = 0.0
L7_1 = L7_1(L8_1, L9_1, L10_1)
L8_1 = vector3
L9_1 = 1.0
L10_1 = 1.0
L11_1 = 1.0
L8_1 = L8_1(L9_1, L10_1, L11_1)
L9_1 = vector3
L10_1 = 1.0
L11_1 = 1.0
L12_1 = 1.0
L9_1 = L9_1(L10_1, L11_1, L12_1)
L10_1 = {}
L11_1 = L8_1.z
L12_1 = L9_1.z
L10_1[1] = L11_1
L10_1[2] = L12_1
L11_1 = {}
L12_1 = L6_1.z
L13_1 = L7_1.z
L11_1[1] = L12_1
L11_1[2] = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = L6_1
  L6_2 = L7_1
  L7_2 = L8_1
  L8_2 = L9_1
  L9_2 = L10_1
  L10_2 = L11_1
  L11_2 = A4_2.scale
  if nil == L11_2 then
    L11_2 = A4_2.offset
    if nil == L11_2 then
      goto lbl_32
    end
  end
  L11_2 = L3_1
  L12_2 = A4_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  L8_2 = L14_2
  L7_2 = L13_2
  L6_2 = L12_2
  L5_2 = L11_2
  L11_2 = {}
  L12_2 = L7_2.z
  L13_2 = L8_2.z
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L12_2 = {}
  L13_2 = L5_2.z
  L14_2 = L6_2.z
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L10_2 = L12_2
  L9_2 = L11_2
  ::lbl_32::
  L11_2 = L4_1
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = L7_2
  L16_2 = L8_2
  L17_2 = L5_2
  L18_2 = L6_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = L11_2[1]
  L13_2 = L11_2[3]
  L14_2 = L13_2 - L12_2
  A4_2.useGrid = false
  A4_2.min = L12_2
  A4_2.max = L13_2
  A4_2.size = L14_2
  A4_2.center = A1_2
  L15_2 = L14_2.x
  L16_2 = L14_2.y
  L15_2 = L15_2 * L16_2
  A4_2.area = L15_2
  L15_2 = PolyZone
  L16_2 = L15_2
  L15_2 = L15_2.new
  L17_2 = L11_2
  L18_2 = A4_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L15_2.length = A2_2
  L15_2.width = A3_2
  L16_2 = A1_2.xy
  L15_2.startPos = L16_2
  L16_2 = vector2
  L17_2 = 0.0
  L18_2 = 0.0
  L16_2 = L16_2(L17_2, L18_2)
  L15_2.offsetPos = L16_2
  L16_2 = A4_2.heading
  if not L16_2 then
    L16_2 = 0.0
  end
  L15_2.offsetRot = L16_2
  L16_2 = L7_2
  L15_2.maxScale = L8_2
  L15_2.minScale = L16_2
  L16_2 = L5_2
  L15_2.maxOffset = L6_2
  L15_2.minOffset = L16_2
  L16_2 = L9_2
  L15_2.offsetZ = L10_2
  L15_2.scaleZ = L16_2
  L15_2.isBoxZone = true
  L16_2 = setmetatable
  L17_2 = L15_2
  L18_2 = A0_2
  L16_2(L17_2, L18_2)
  A0_2.__index = A0_2
  return L15_2
end
L12_1.new = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = BoxZone
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L5_1
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  return L5_2
end
L12_1.Create = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.destroyed
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.startPos
  L3_2 = A1_2.xy
  L4_2 = A0_2.offsetPos
  L3_2 = L3_2 - L4_2
  L4_2 = L3_2 - L2_2
  L4_2 = #L4_2
  L5_2 = A0_2.boundingRadius
  if L4_2 > L5_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = PolyZone
  L4_2 = L4_2.rotate
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = A0_2.offsetRot
  L7_2 = -L7_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2.x
  L6_2 = L4_2.y
  L7_2 = A1_2.z
  L8_2 = A0_2.min
  L9_2 = A0_2.max
  L10_2 = L8_2.x
  L11_2 = L8_2.y
  L12_2 = L9_2.x
  L13_2 = L9_2.y
  L14_2 = A0_2.minZ
  L15_2 = A0_2.maxZ
  if L5_2 < L10_2 or L5_2 > L12_2 or L6_2 < L11_2 or L6_2 > L13_2 then
    L16_2 = false
    return L16_2
  end
  if L14_2 and L7_2 < L14_2 or L15_2 and L7_2 > L15_2 then
    L16_2 = false
    return L16_2
  end
  L16_2 = true
  return L16_2
end
L12_1.isPointInside = L13_1
L12_1 = BoxZone
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.offsetRot
  return L1_2
end
L12_1.getHeading = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2)
  if not A1_2 then
    return
  end
  A0_2.offsetRot = A1_2
end
L12_1.setHeading = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = A0_2.center
    if A1_2 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  A0_2.center = A1_2
  L2_2 = A1_2.xy
  A0_2.startPos = L2_2
  L2_2 = L4_1
  L3_2 = A0_2.center
  L4_2 = A0_2.length
  L5_2 = A0_2.width
  L6_2 = A0_2.minScale
  L7_2 = A0_2.maxScale
  L8_2 = A0_2.minOffset
  L9_2 = A0_2.maxOffset
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.points = L2_2
end
L12_1.setCenter = L13_1
L12_1 = BoxZone
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.length
  return L1_2
end
L12_1.getLength = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = A0_2.length
    if A1_2 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  A0_2.length = A1_2
  L2_2 = L4_1
  L3_2 = A0_2.center
  L4_2 = A0_2.length
  L5_2 = A0_2.width
  L6_2 = A0_2.minScale
  L7_2 = A0_2.maxScale
  L8_2 = A0_2.minOffset
  L9_2 = A0_2.maxOffset
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.points = L2_2
end
L12_1.setLength = L13_1
L12_1 = BoxZone
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.width
  return L1_2
end
L12_1.getWidth = L13_1
L12_1 = BoxZone
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = A0_2.width
    if A1_2 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  A0_2.width = A1_2
  L2_2 = L4_1
  L3_2 = A0_2.center
  L4_2 = A0_2.length
  L5_2 = A0_2.width
  L6_2 = A0_2.minScale
  L7_2 = A0_2.maxScale
  L8_2 = A0_2.minOffset
  L9_2 = A0_2.maxOffset
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.points = L2_2
end
L12_1.setWidth = L13_1
