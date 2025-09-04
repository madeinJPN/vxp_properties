local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
PolyZone = L0_1
L0_1 = {}
L1_1 = 0
L2_1 = 255
L3_1 = 0
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L1_1 = {}
L2_1 = 255
L3_1 = 0
L4_1 = 0
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L2_1 = {}
L3_1 = 255
L4_1 = 255
L5_1 = 255
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = math
L3_1 = L3_1.abs
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A1_2.x
  L5_2 = L5_2 - L3_2
  L6_2 = A2_2.y
  L6_2 = L6_2 - L4_2
  L5_2 = L5_2 * L6_2
  L6_2 = A2_2.x
  L6_2 = L6_2 - L3_2
  L7_2 = A1_2.y
  L7_2 = L7_2 - L4_2
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 - L6_2
  return L5_2
end
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2.y
  L5_2 = A0_2.y
  if L4_2 >= L5_2 then
    L5_2 = A1_2.y
    if L4_2 < L5_2 then
      L5_2 = L4_1
      L6_2 = A0_2
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 > 0 then
        L5_2 = A3_2 + 1
        return L5_2
      end
    end
  else
    L5_2 = A1_2.y
    if L4_2 >= L5_2 then
      L5_2 = L4_1
      L6_2 = A0_2
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 < 0 then
        L5_2 = A3_2 - 1
        return L5_2
      end
    end
  end
  return A3_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    return
  end
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    A0_2[L4_2] = nil
  end
  return A0_2
end
clearTbl = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L1_2[L5_2] = L6_2
  end
  return L1_2
end
copyTbl = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = #A1_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L5_1
    L8_2 = A1_2[L6_2]
    L9_2 = L6_2 + 1
    L9_2 = A1_2[L9_2]
    L10_2 = A0_2
    L11_2 = L2_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L2_2 = L7_2
  end
  L3_2 = L5_1
  L4_2 = #A1_2
  L4_2 = A1_2[L4_2]
  L5_2 = A1_2[1]
  L6_2 = A0_2
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2 = L3_2
  L3_2 = 0 ~= L2_2
  return L3_2
end
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2.x
  L5_2 = A2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = A1_2.x
  L6_2 = A0_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = A3_2.x
  L7_2 = A2_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2.y
  L8_2 = A2_2.y
  L7_2 = L7_2 - L8_2
  L8_2 = A1_2.y
  L9_2 = A0_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = A3_2.y
  L10_2 = A2_2.y
  L9_2 = L9_2 - L10_2
  L10_2 = L5_2 * L9_2
  L11_2 = L8_2 * L6_2
  L10_2 = L10_2 - L11_2
  L11_2 = L7_2 * L6_2
  L12_2 = L4_2 * L9_2
  L11_2 = L11_2 - L12_2
  L12_2 = L7_2 * L5_2
  L13_2 = L4_2 * L8_2
  L12_2 = L12_2 - L13_2
  if 0 == L10_2 then
    L13_2 = 0 == L11_2 and 0 == L12_2
    return L13_2
  end
  L13_2 = L11_2 / L10_2
  L14_2 = L12_2 / L10_2
  L15_2 = L13_2 >= 0 and L13_2 <= 1 and L14_2 >= 0 and L14_2 <= 1
  return L15_2
end
function L8_1(A0_2)
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
  L3_2 = L3_1
  L4_2 = 0.5 * L2_2
  return L3_2(L4_2)
end
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L8_2 = vector3
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vector3
  L10_2 = A0_2.x
  L11_2 = A0_2.y
  L12_2 = A3_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = A1_2.x
  L12_2 = A1_2.y
  L13_2 = A2_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = vector3
  L12_2 = A1_2.x
  L13_2 = A1_2.y
  L14_2 = A3_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = DrawPoly
  L13_2 = L8_2.x
  L14_2 = L8_2.y
  L15_2 = L8_2.z
  L16_2 = L9_2.x
  L17_2 = L9_2.y
  L18_2 = L9_2.z
  L19_2 = L10_2.x
  L20_2 = L10_2.y
  L21_2 = L10_2.z
  L22_2 = A4_2
  L23_2 = A5_2
  L24_2 = A6_2
  L25_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L12_2 = DrawPoly
  L13_2 = L9_2.x
  L14_2 = L9_2.y
  L15_2 = L9_2.z
  L16_2 = L11_2.x
  L17_2 = L11_2.y
  L18_2 = L11_2.z
  L19_2 = L10_2.x
  L20_2 = L10_2.y
  L21_2 = L10_2.z
  L22_2 = A4_2
  L23_2 = A5_2
  L24_2 = A6_2
  L25_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L12_2 = DrawPoly
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = L11_2.x
  L17_2 = L11_2.y
  L18_2 = L11_2.z
  L19_2 = L9_2.x
  L20_2 = L9_2.y
  L21_2 = L9_2.z
  L22_2 = A4_2
  L23_2 = A5_2
  L24_2 = A6_2
  L25_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L12_2 = DrawPoly
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = L9_2.x
  L17_2 = L9_2.y
  L18_2 = L9_2.z
  L19_2 = L8_2.x
  L20_2 = L8_2.y
  L21_2 = L8_2.z
  L22_2 = A4_2
  L23_2 = A5_2
  L24_2 = A6_2
  L25_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
end
_drawWall = L9_1
L9_1 = PolyZone
function L10_1(A0_2, A1_2)
  return A1_2
end
L9_1.TransformPoint = L10_1
L9_1 = PolyZone
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L1_2 = 45.0
  L2_2 = A0_2.debugColors
  L2_2 = L2_2.outline
  if not L2_2 then
    L2_2 = L1_1
  end
  L3_2 = L2_2[1]
  L4_2 = L2_2[2]
  L5_2 = L2_2[3]
  L6_2 = A0_2.debugColors
  L6_2 = L6_2.walls
  if not L6_2 then
    L6_2 = L0_1
  end
  L7_2 = L6_2[1]
  L8_2 = L6_2[2]
  L9_2 = L6_2[3]
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = GetEntityCoords
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2.minZ
  if not L12_2 then
    L12_2 = L11_2.z
    L12_2 = L12_2 - L1_2
  end
  L13_2 = A0_2.maxZ
  if not L13_2 then
    L13_2 = L11_2.z
    L13_2 = L13_2 + L1_2
  end
  L14_2 = A0_2.points
  L15_2 = 1
  L16_2 = #L14_2
  L17_2 = 1
  for L18_2 = L15_2, L16_2, L17_2 do
    L20_2 = A0_2
    L19_2 = A0_2.TransformPoint
    L21_2 = L14_2[L18_2]
    L19_2 = L19_2(L20_2, L21_2)
    L20_2 = DrawLine
    L21_2 = L19_2.x
    L22_2 = L19_2.y
    L23_2 = L12_2
    L24_2 = L19_2.x
    L25_2 = L19_2.y
    L26_2 = L13_2
    L27_2 = L3_2
    L28_2 = L4_2
    L29_2 = L5_2
    L30_2 = 164
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L20_2 = #L14_2
    if L18_2 < L20_2 then
      L21_2 = A0_2
      L20_2 = A0_2.TransformPoint
      L22_2 = L18_2 + 1
      L22_2 = L14_2[L22_2]
      L20_2 = L20_2(L21_2, L22_2)
      L21_2 = DrawLine
      L22_2 = L19_2.x
      L23_2 = L19_2.y
      L24_2 = L13_2
      L25_2 = L20_2.x
      L26_2 = L20_2.y
      L27_2 = L13_2
      L28_2 = L3_2
      L29_2 = L4_2
      L30_2 = L5_2
      L31_2 = 184
      L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
      L21_2 = _drawWall
      L22_2 = L19_2
      L23_2 = L20_2
      L24_2 = L12_2
      L25_2 = L13_2
      L26_2 = L7_2
      L27_2 = L8_2
      L28_2 = L9_2
      L29_2 = 48
      L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    end
  end
  L15_2 = #L14_2
  if L15_2 > 2 then
    L16_2 = A0_2
    L15_2 = A0_2.TransformPoint
    L17_2 = L14_2[1]
    L15_2 = L15_2(L16_2, L17_2)
    L17_2 = A0_2
    L16_2 = A0_2.TransformPoint
    L18_2 = #L14_2
    L18_2 = L14_2[L18_2]
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = DrawLine
    L18_2 = L15_2.x
    L19_2 = L15_2.y
    L20_2 = L13_2
    L21_2 = L16_2.x
    L22_2 = L16_2.y
    L23_2 = L13_2
    L24_2 = L3_2
    L25_2 = L4_2
    L26_2 = L5_2
    L27_2 = 184
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L17_2 = _drawWall
    L18_2 = L15_2
    L19_2 = L16_2
    L20_2 = L12_2
    L21_2 = L13_2
    L22_2 = L7_2
    L23_2 = L8_2
    L24_2 = L9_2
    L25_2 = 48
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  end
end
L9_1.draw = L10_1
L9_1 = PolyZone
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = PolyZone
  L1_2 = L1_2.draw
  L2_2 = A0_2
  L1_2(L2_2)
end
L9_1.drawPoly = L10_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = A0_2.minZ
  L2_2 = A0_2.maxZ
  if not L1_2 or not L2_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.z
    L1_2 = L5_2 - 46.0
    L5_2 = L4_2.z
    L2_2 = L5_2 - 45.0
  end
  L3_2 = A0_2.lines
  L4_2 = A0_2.debugColors
  L4_2 = L4_2.grid
  if not L4_2 then
    L4_2 = L2_1
  end
  L5_2 = L4_2[1]
  L6_2 = L4_2[2]
  L7_2 = L4_2[3]
  L8_2 = 1
  L9_2 = #L3_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L3_2[L11_2]
    L13_2 = L12_2.min
    L14_2 = L12_2.max
    L15_2 = DrawLine
    L16_2 = L13_2.x
    L16_2 = L16_2 + 0.0
    L17_2 = L13_2.y
    L17_2 = L17_2 + 0.0
    L18_2 = L2_2 + 0.0
    L19_2 = L14_2.x
    L19_2 = L19_2 + 0.0
    L20_2 = L14_2.y
    L20_2 = L20_2 + 0.0
    L21_2 = L2_2 + 0.0
    L22_2 = L5_2
    L23_2 = L6_2
    L24_2 = L7_2
    L25_2 = 196
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  end
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A1_2.min
  L5_2 = L4_2.x
  L6_2 = L4_2.y
  L7_2 = A1_2.max
  if not (L2_2 < L5_2) then
    L8_2 = L7_2.x
    if not (L2_2 > L8_2) and not (L3_2 < L6_2) then
      L8_2 = L7_2.y
      if not (L3_2 > L8_2) then
        goto lbl_19
      end
    end
  end
  L8_2 = false
  do return L8_2 end
  ::lbl_19::
  L8_2 = A1_2.minZ
  L9_2 = A1_2.maxZ
  L10_2 = A0_2.z
  if L8_2 and L8_2 > L10_2 or L9_2 and L9_2 < L10_2 then
    L11_2 = false
    return L11_2
  end
  L11_2 = A1_2.grid
  if L11_2 then
    L12_2 = A1_2.gridDivisions
    L13_2 = A1_2.size
    L14_2 = L2_2 - L5_2
    L15_2 = L3_2 - L6_2
    L16_2 = L14_2 * L12_2
    L17_2 = L13_2.x
    L16_2 = L16_2 // L17_2
    L17_2 = L15_2 * L12_2
    L18_2 = L13_2.y
    L17_2 = L17_2 // L18_2
    L18_2 = L17_2 + 1
    L18_2 = L11_2[L18_2]
    L19_2 = L16_2 + 1
    L18_2 = L18_2[L19_2]
    if nil == L18_2 then
      L19_2 = A1_2.lazyGrid
      if L19_2 then
        L19_2 = _isGridCellInsidePoly
        L20_2 = L16_2
        L21_2 = L17_2
        L22_2 = A1_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L18_2 = L19_2
        L19_2 = L17_2 + 1
        L19_2 = L11_2[L19_2]
        L20_2 = L16_2 + 1
        L19_2[L20_2] = L18_2
      end
    end
    if L18_2 then
      L19_2 = true
      return L19_2
    end
  end
  L12_2 = L6_1
  L13_2 = A0_2
  L14_2 = A1_2.points
  return L12_2(L13_2, L14_2)
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A2_2.gridCellWidth
  L4_2 = A2_2.gridCellHeight
  L5_2 = A2_2.min
  L6_2 = A0_2 * L3_2
  L7_2 = L5_2.x
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2 * L4_2
  L8_2 = L5_2.y
  L7_2 = L7_2 + L8_2
  L8_2 = {}
  L9_2 = vector2
  L10_2 = L6_2
  L11_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = vector2
  L11_2 = L6_2 + L3_2
  L12_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = vector2
  L12_2 = L6_2 + L3_2
  L13_2 = L7_2 + L4_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = vector2
  L13_2 = L6_2
  L14_2 = L7_2 + L4_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = vector2
  L14_2 = L6_2
  L15_2 = L7_2
  L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  return L8_2
end
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = L11_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  gridCellPoints = L3_2
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = A2_2.points
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2(L5_2)
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L3_2[14] = L17_2
  L3_2[15] = L18_2
  L3_2[16] = L19_2
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L5_2 = L3_2[1]
  L3_2[L4_2] = L5_2
  L4_2 = false
  L5_2 = 1
  L6_2 = gridCellPoints
  L6_2 = #L6_2
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = gridCellPoints
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.x
    L11_2 = L9_2.y
    L12_2 = L6_1
    L13_2 = L9_2
    L14_2 = A2_2.points
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L4_2 = true
      L12_2 = A2_2.lines
      if L12_2 then
        L12_2 = A2_2.gridXPoints
        L12_2 = L12_2[L10_2]
        if not L12_2 then
          L12_2 = A2_2.gridXPoints
          L13_2 = {}
          L12_2[L10_2] = L13_2
        end
        L12_2 = A2_2.gridYPoints
        L12_2 = L12_2[L11_2]
        if not L12_2 then
          L12_2 = A2_2.gridYPoints
          L13_2 = {}
          L12_2[L11_2] = L13_2
        end
        L12_2 = A2_2.gridXPoints
        L12_2 = L12_2[L10_2]
        L12_2[L11_2] = true
        L12_2 = A2_2.gridYPoints
        L12_2 = L12_2[L11_2]
        L12_2[L10_2] = true
      else
        break
      end
    end
  end
  if false == L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = 1
  L6_2 = gridCellPoints
  L6_2 = #L6_2
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = gridCellPoints
    L9_2 = L9_2[L8_2]
    L10_2 = gridCellPoints
    L11_2 = L8_2 + 1
    L10_2 = L10_2[L11_2]
    L11_2 = 1
    L12_2 = #L3_2
    L12_2 = L12_2 - 1
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = L7_1
      L16_2 = L9_2
      L17_2 = L10_2
      L18_2 = L3_2[L14_2]
      L19_2 = L14_2 + 1
      L19_2 = L3_2[L19_2]
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      if L15_2 then
        L15_2 = false
        return L15_2
      end
    end
  end
  L5_2 = true
  return L5_2
end
_isGridCellInsidePoly = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.gridXPoints
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = pairs
    L10_2 = L7_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = #L8_2
      L15_2 = L15_2 + 1
      L8_2[L15_2] = L13_2
    end
    L9_2 = #L8_2
    if L9_2 >= 2 then
      L9_2 = table
      L9_2 = L9_2.sort
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = L8_2[1]
      L10_2 = L8_2[1]
      L11_2 = 1
      L12_2 = #L8_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L8_2[L14_2]
        L16_2 = L15_2 - L10_2
        L17_2 = A0_2.gridCellHeight
        L17_2 = L17_2 + 0.01
        if L16_2 > L17_2 then
          L16_2 = #L1_2
          L16_2 = L16_2 + 1
          L17_2 = {}
          L18_2 = vector2
          L19_2 = L6_2
          L20_2 = L9_2
          L18_2 = L18_2(L19_2, L20_2)
          L17_2.min = L18_2
          L18_2 = vector2
          L19_2 = L6_2
          L20_2 = L10_2
          L18_2 = L18_2(L19_2, L20_2)
          L17_2.max = L18_2
          L1_2[L16_2] = L17_2
          L9_2 = L15_2
        else
          L16_2 = #L8_2
          if L14_2 == L16_2 then
            L16_2 = #L1_2
            L16_2 = L16_2 + 1
            L17_2 = {}
            L18_2 = vector2
            L19_2 = L6_2
            L20_2 = L9_2
            L18_2 = L18_2(L19_2, L20_2)
            L17_2.min = L18_2
            L18_2 = vector2
            L19_2 = L6_2
            L20_2 = L15_2
            L18_2 = L18_2(L19_2, L20_2)
            L17_2.max = L18_2
            L1_2[L16_2] = L17_2
          end
        end
        L10_2 = L15_2
      end
    end
  end
  A0_2.gridXPoints = nil
  L2_2 = pairs
  L3_2 = A0_2.gridYPoints
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = pairs
    L10_2 = L7_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = #L8_2
      L15_2 = L15_2 + 1
      L8_2[L15_2] = L13_2
    end
    L9_2 = #L8_2
    if L9_2 >= 2 then
      L9_2 = table
      L9_2 = L9_2.sort
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = L8_2[1]
      L10_2 = L8_2[1]
      L11_2 = 1
      L12_2 = #L8_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L8_2[L14_2]
        L16_2 = L15_2 - L10_2
        L17_2 = A0_2.gridCellWidth
        L17_2 = L17_2 + 0.01
        if L16_2 > L17_2 then
          L16_2 = #L1_2
          L16_2 = L16_2 + 1
          L17_2 = {}
          L18_2 = vector2
          L19_2 = L9_2
          L20_2 = L6_2
          L18_2 = L18_2(L19_2, L20_2)
          L17_2.min = L18_2
          L18_2 = vector2
          L19_2 = L10_2
          L20_2 = L6_2
          L18_2 = L18_2(L19_2, L20_2)
          L17_2.max = L18_2
          L1_2[L16_2] = L17_2
          L9_2 = L15_2
        else
          L16_2 = #L8_2
          if L14_2 == L16_2 then
            L16_2 = #L1_2
            L16_2 = L16_2 + 1
            L17_2 = {}
            L18_2 = vector2
            L19_2 = L9_2
            L20_2 = L6_2
            L18_2 = L18_2(L19_2, L20_2)
            L17_2.min = L18_2
            L18_2 = vector2
            L19_2 = L15_2
            L20_2 = L6_2
            L18_2 = L18_2(L19_2, L20_2)
            L17_2.max = L18_2
            L1_2[L16_2] = L17_2
          end
        end
        L10_2 = L15_2
      end
    end
  end
  A0_2.gridYPoints = nil
  return L1_2
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.gridArea = 0.0
  L2_2 = A0_2.size
  L2_2 = L2_2.x
  L3_2 = A0_2.gridDivisions
  L2_2 = L2_2 / L3_2
  A0_2.gridCellWidth = L2_2
  L2_2 = A0_2.size
  L2_2 = L2_2.y
  L3_2 = A0_2.gridDivisions
  L2_2 = L2_2 / L3_2
  A0_2.gridCellHeight = L2_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = {}
    L1_3 = A0_2.gridCellWidth
    L2_3 = A0_2.gridCellHeight
    L1_3 = L1_3 * L2_3
    L2_3 = 1
    L3_3 = A0_2.gridDivisions
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = {}
      L0_3[L5_3] = L6_3
      L6_3 = 1
      L7_3 = A0_2.gridDivisions
      L8_3 = 1
      for L9_3 = L6_3, L7_3, L8_3 do
        L10_3 = _isGridCellInsidePoly
        L11_3 = L9_3 - 1
        L12_3 = L5_3 - 1
        L13_3 = A0_2
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        if L10_3 then
          L10_3 = A0_2.gridArea
          L10_3 = L10_3 + L1_3
          A0_2.gridArea = L10_3
          L10_3 = L0_3[L5_3]
          L10_3[L9_3] = true
        end
      end
    end
    A0_2.grid = L0_3
    L2_3 = A0_2.gridArea
    L3_3 = A0_2.area
    L2_3 = L2_3 / L3_3
    A0_2.gridCoverage = L2_3
    L2_3 = collectgarbage
    L3_3 = "collect"
    L2_3(L3_3)
    L2_3 = A1_2.debugGrid
    if L2_3 then
      L2_3 = string
      L2_3 = L2_3.format
      L3_3 = "%.2f"
      L4_3 = A0_2.gridCoverage
      L4_3 = L4_3 * 100
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = CreateThread
      function L4_3()
        local L0_4, L1_4
        L0_4 = L12_1
        L1_4 = A0_2
        L0_4 = L0_4(L1_4)
        A0_2.lines = L0_4
        L0_4 = collectgarbage
        L1_4 = "collect"
        L0_4(L1_4)
      end
      L3_3(L4_3)
    end
  end
  L2_2(L3_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2.min
  if L2_2 then
    L2_2 = A0_2.max
    if L2_2 then
      L2_2 = A0_2.size
      if L2_2 then
        L2_2 = A0_2.center
        if L2_2 then
          L2_2 = A0_2.area
          if L2_2 then
            goto lbl_81
          end
        end
      end
    end
  end
  L2_2 = math
  L2_2 = L2_2.maxinteger
  L3_2 = math
  L3_2 = L3_2.maxinteger
  L4_2 = math
  L4_2 = L4_2.mininteger
  L5_2 = math
  L5_2 = L5_2.mininteger
  L6_2 = ipairs
  L7_2 = A0_2.points
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = math
    L12_2 = L12_2.min
    L13_2 = L2_2
    L14_2 = L11_2.x
    L12_2 = L12_2(L13_2, L14_2)
    L2_2 = L12_2
    L12_2 = math
    L12_2 = L12_2.min
    L13_2 = L3_2
    L14_2 = L11_2.y
    L12_2 = L12_2(L13_2, L14_2)
    L3_2 = L12_2
    L12_2 = math
    L12_2 = L12_2.max
    L13_2 = L4_2
    L14_2 = L11_2.x
    L12_2 = L12_2(L13_2, L14_2)
    L4_2 = L12_2
    L12_2 = math
    L12_2 = L12_2.max
    L13_2 = L5_2
    L14_2 = L11_2.y
    L12_2 = L12_2(L13_2, L14_2)
    L5_2 = L12_2
  end
  L6_2 = vector2
  L7_2 = L2_2
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.min = L6_2
  L6_2 = vector2
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.max = L6_2
  L6_2 = A0_2.max
  L7_2 = A0_2.min
  L6_2 = L6_2 - L7_2
  A0_2.size = L6_2
  L6_2 = A0_2.max
  L7_2 = A0_2.min
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 / 2
  A0_2.center = L6_2
  L6_2 = L8_1
  L7_2 = A0_2.points
  L6_2 = L6_2(L7_2)
  A0_2.area = L6_2
  ::lbl_81::
  L2_2 = math
  L2_2 = L2_2.sqrt
  L3_2 = A0_2.size
  L3_2 = L3_2.y
  L4_2 = A0_2.size
  L4_2 = L4_2.y
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.size
  L4_2 = L4_2.x
  L5_2 = A0_2.size
  L5_2 = L5_2.x
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 / 2
  A0_2.boundingRadius = L2_2
  L2_2 = A0_2.useGrid
  if L2_2 then
    L2_2 = A0_2.lazyGrid
    if not L2_2 then
      L2_2 = A1_2.debugGrid
      if L2_2 then
        L2_2 = {}
        A0_2.gridXPoints = L2_2
        L2_2 = {}
        A0_2.gridYPoints = L2_2
        L2_2 = {}
        A0_2.lines = L2_2
      end
      L2_2 = L13_1
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2.useGrid
    if L2_2 then
      L2_2 = {}
      L3_2 = 1
      L4_2 = A0_2.gridDivisions
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = {}
        L2_2[L6_2] = L7_2
      end
      A0_2.grid = L2_2
      L3_2 = A0_2.size
      L3_2 = L3_2.x
      L4_2 = A0_2.gridDivisions
      L3_2 = L3_2 / L4_2
      A0_2.gridCellWidth = L3_2
      L3_2 = A0_2.size
      L3_2 = L3_2.y
      L4_2 = A0_2.gridDivisions
      L3_2 = L3_2 / L4_2
      A0_2.gridCellHeight = L3_2
    end
  end
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.debugPoly
  if not L2_2 then
    L2_2 = A1_2.debugGrid
  end
  if not L2_2 then
    return
  end
  L3_2 = CreateThread
  function L4_2()
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
      L0_3 = A1_2.debugGrid
      if L0_3 then
        L0_3 = A0_2.lines
        if L0_3 then
          L0_3 = L9_1
          L1_3 = A0_2
          L0_3(L1_3)
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L3_2(L4_2)
end
L16_1 = PolyZone
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 then
    return
  end
  L3_2 = #A1_2
  if L3_2 < 3 then
  end
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = A2_2.useGrid
  if nil == L3_2 then
    L3_2 = true
  end
  L4_2 = A2_2.lazyGrid
  if nil == L4_2 then
    L4_2 = true
  end
  L5_2 = {}
  L6_2 = tostring
  L7_2 = A2_2.name
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = nil
  end
  L5_2.name = L6_2
  L5_2.points = A1_2
  L6_2 = A2_2.center
  L5_2.center = L6_2
  L6_2 = A2_2.size
  L5_2.size = L6_2
  L6_2 = A2_2.max
  L5_2.max = L6_2
  L6_2 = A2_2.min
  L5_2.min = L6_2
  L6_2 = A2_2.area
  L5_2.area = L6_2
  L6_2 = tonumber
  L7_2 = A2_2.minZ
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = nil
  end
  L5_2.minZ = L6_2
  L6_2 = tonumber
  L7_2 = A2_2.maxZ
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = nil
  end
  L5_2.maxZ = L6_2
  L5_2.useGrid = L3_2
  L5_2.lazyGrid = L4_2
  L6_2 = tonumber
  L7_2 = A2_2.gridDivisions
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 30
  end
  L5_2.gridDivisions = L6_2
  L6_2 = A2_2.debugColors
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.debugColors = L6_2
  L6_2 = A2_2.debugPoly
  if not L6_2 then
    L6_2 = false
  end
  L5_2.debugPoly = L6_2
  L6_2 = A2_2.debugGrid
  if not L6_2 then
    L6_2 = false
  end
  L5_2.debugGrid = L6_2
  L6_2 = A2_2.data
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.data = L6_2
  L5_2.isPolyZone = true
  L6_2 = L5_2.debugGrid
  if L6_2 then
    L5_2.lazyGrid = false
  end
  L6_2 = L14_1
  L7_2 = L5_2
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = setmetatable
  L7_2 = L5_2
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  A0_2.__index = A0_2
  return L5_2
end
L16_1.new = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = PolyZone
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L15_1
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L16_1.Create = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.destroyed
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L10_1
  L3_2 = A1_2
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L16_1.isPointInside = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  A0_2.destroyed = true
  L1_2 = A0_2.debugPoly
  if not L1_2 then
    L1_2 = A0_2.debugGrid
    if L1_2 then
    end
  end
end
L16_1.destroy = L17_1
L16_1 = PolyZone
function L17_1()
  local L0_2, L1_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  return L0_2(L1_2)
end
L16_1.getPlayerPosition = L17_1
HeadBone = 31086
L16_1 = PolyZone
function L17_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetPedBoneCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = HeadBone
  return L0_2(L1_2, L2_2)
end
L16_1.getPlayerHeadPosition = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.isBoxZone
  if L1_2 then
    L1_2 = setmetatable
    L2_2 = A0_2
    L3_2 = BoxZone
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.isPolyZone
    if L1_2 then
      L1_2 = setmetatable
      L2_2 = A0_2
      L3_2 = PolyZone
      L1_2(L2_2, L3_2)
    end
  end
end
L16_1.ensureMetatable = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = 500
  if nil ~= A3_2 then
    L4_2 = A3_2
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = false
    while true do
      L1_3 = A0_2.destroyed
      if L1_3 then
        break
      end
      L1_3 = A0_2.paused
      if not L1_3 then
        L1_3 = A1_2
        L1_3 = L1_3()
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.isPointInside
        L4_3 = L1_3
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 ~= L0_3 then
          L3_3 = A2_2
          L4_3 = L2_3
          L5_3 = L1_3
          L3_3(L4_3, L5_3)
          L0_3 = L2_3
        end
      end
      L1_3 = Wait
      L2_3 = L4_2
      L1_3(L2_3)
    end
  end
  L5_2(L6_2)
end
L16_1.onPointInOut = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.onPointInOut
  L5_2 = PolyZone
  L5_2 = L5_2.getPlayerPosition
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L16_1.onPlayerInOut = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.events
  if L2_2 then
    L2_2 = A0_2.events
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = RemoveEventHandler
      L3_2 = A0_2.events
      L3_2 = L3_2[A1_2]
      L2_2(L3_2)
      L2_2 = A0_2.events
      L2_2[A1_2] = nil
    end
  end
end
L16_1.removeEvent = L17_1
L16_1 = PolyZone
function L17_1(A0_2, A1_2)
  A0_2.paused = A1_2
end
L16_1.setPaused = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.paused
  return L1_2
end
L16_1.isPaused = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.min
  return L1_2
end
L16_1.getBoundingBoxMin = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.max
  return L1_2
end
L16_1.getBoundingBoxMax = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.size
  return L1_2
end
L16_1.getBoundingBoxSize = L17_1
L16_1 = PolyZone
function L17_1(A0_2)
  local L1_2
  L1_2 = A0_2.center
  return L1_2
end
L16_1.getBoundingBoxCenter = L17_1
