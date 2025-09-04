local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "glm"
L0_1 = L0_1(L1_1)
L1_1 = exports
L1_1 = L1_1.nolag_properties
L2_1 = {}
FUNC = L2_1
L2_1 = FUNC
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 10
  L2_2 = L2_2 ^ A1_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end
L2_1.round = L3_1
L2_1 = FUNC
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  -- Convert rotation from degrees to radians
  L1_2 = vec3(math.pi / 180 * A0_2.x, math.pi / 180 * A0_2.y, math.pi / 180 * A0_2.z)
  -- Use standard trigonometry to derive the direction vector
  L2_2 = -math.sin(L1_2.z) * math.abs(math.cos(L1_2.x))
  L3_2 = math.cos(L1_2.z) * math.abs(math.cos(L1_2.x))
  L4_2 = math.sin(L1_2.x)
  return vec3(L2_2, L3_2, L4_2)
end
L2_1.rotationToDirection = L3_1
L2_1 = FUNC
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetFinalRenderedCamCoord
  L2_2 = L2_2()
  L3_2 = L0_1.rad
  L4_2 = GetFinalRenderedCamRot
  L5_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = L0_1.quatEulerAngleZYX
  L5_2 = L3_2.z
  L6_2 = L3_2.y
  L7_2 = L3_2.x
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L6_2 = L0_1.rayPicking
  L7_2 = L0_1.forward
  L7_2 = L7_2()
  L7_2 = L4_2 * L7_2
  L8_2 = L0_1.up
  L8_2 = L8_2()
  L8_2 = L4_2 * L8_2
  L9_2 = L0_1.rad
  L10_2 = GetFinalRenderedCamFov
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = GetAspectRatio
  L11_2 = true
  L10_2 = L10_2(L11_2)
  L11_2 = 0.1
  L12_2 = 10000.0
  L13_2 = A0_2 * 2
  L13_2 = L13_2 - 1
  L14_2 = A1_2 * 2
  L14_2 = L14_2 - 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
end
L2_1.screenPositionToCameraRay = L3_1
L2_1 = FUNC
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.id
  L2_2 = nil ~= L1_2
  return L2_2
end
L2_1.isEntityFurniture = L3_1
L2_1 = FUNC
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.id
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = Client
  L2_2 = L2_2.spawnedFurniture
  L2_2 = L2_2[L1_2]
  return L2_2
end
L2_1.getFurnitureFromEntity = L3_1
L2_1 = FUNC
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 1
  while true do
    L2_2 = tostring
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L2_2 = A0_2[L2_2]
    if nil == L2_2 then
      break
    end
    L1_2 = L1_2 + 1
  end
  L2_2 = tostring
  L3_2 = L1_2
  return L2_2(L3_2)
end
L2_1.generateId = L3_1
