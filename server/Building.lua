local L0_1, L1_1
L0_1 = {}
L0_1.id = nil
L0_1.name = nil
L0_1.label = nil
L1_1 = {}
L0_1.metadata = L1_1
ServerBuilding = L0_1
L0_1 = ServerBuilding
L1_1 = ServerBuilding
L0_1.__index = L1_1
L0_1 = ServerBuilding
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = ServerBuilding
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2.id
  L2_2.id = L3_2
  L3_2 = A1_2.name
  L2_2.name = L3_2
  L3_2 = A1_2.label
  L2_2.label = L3_2
  L3_2 = ConvertToVector
  L4_2 = A1_2.metadata
  L3_2 = L3_2(L4_2)
  L2_2.metadata = L3_2
  L3_2 = AddLoadedBuilding
  L4_2 = L2_2.id
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.sync
  L3_2(L4_2)
  return L2_2
end
L0_1.new = L1_1
L0_1 = ServerBuilding
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.sync
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = A0_2.id
  L2_2.building_id = L3_2
  L3_2 = {}
  L3_2.label = true
  L3_2.name = true
  L3_2.metadata = true
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L1_3 = L1_3[A0_3]
    if nil ~= L1_3 then
      L1_3 = L3_2
      L1_3 = L1_3[A0_3]
      if L1_3 then
        L1_3 = L2_2
        L2_3 = A0_2
        L2_3 = L2_3[A0_3]
        L1_3[A0_3] = L2_3
      end
    end
  end
  if nil == A1_2 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L4_2
      L12_2 = L9_2
      L11_2(L12_2)
    end
  else
    L5_2 = type
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      L5_2 = L4_2
      L6_2 = A1_2
      L5_2(L6_2)
    else
      L5_2 = type
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if "table" == L5_2 then
        L5_2 = ipairs
        L6_2 = A1_2
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L4_2
          L12_2 = L10_2
          L11_2(L12_2)
        end
      end
    end
  end
  L5_2 = BuildingSQL
  L5_2 = L5_2.UpdateBuilding
  L6_2 = L2_2
  L5_2(L6_2)
end
L0_1.save = L1_1
L0_1 = ServerBuilding
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.metadata
  L2_2.garagePoint = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.save
  L4_2 = "metadata"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.sync
  L2_2(L3_2)
  L2_2 = true
  L3_2 = "Garage point updated successfully"
  return L2_2, L3_2
end
L0_1.setGaragePoint = L1_1
L0_1 = ServerBuilding
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GlobalState
  L2_2 = "building.%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[L2_2] = A0_2
end
L0_1.sync = L1_1
