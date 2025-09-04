local L0_1, L1_1, L2_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.loadingBuildings = false
  L1_2.buildingsLoaded = false
  L2_2 = {}
  L1_2.buildings = L2_2
  L2_2 = setmetatable
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return L1_2
end
L0_1.new = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Creating building: "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A0_2.buildings
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.debug
    L4_2 = "Building with id: "
    L5_2 = A1_2
    L6_2 = " already exists"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = A0_2.buildings
    L3_2 = L3_2[A1_2]
    return L3_2
  end
  L3_2 = Building
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2.buildings
  L4_2[A1_2] = L3_2
  return L3_2
end
L0_1.createBuilding = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.buildingsLoaded
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Building not loaded, waiting for it to load"
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.waitFor
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2.buildingsLoaded
      return L0_3
    end
    L4_2 = "Building not loaded"
    L5_2 = 10000
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.buildings
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.getBuildingById = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.buildings
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.delete
  L2_2(L3_2)
  L2_2 = A0_2.buildings
  L2_2[A1_2] = nil
end
L0_1.deleteBuildingById = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.buildings
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1.getAllBuildings = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Deleting all buildings"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2.buildings
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.id
      if L7_2 then
        L7_2 = lib
        L7_2 = L7_2.print
        L7_2 = L7_2.debug
        L8_2 = "Deleting building: "
        L9_2 = L6_2.id
        L8_2 = L8_2 .. L9_2
        L7_2(L8_2)
        L8_2 = L6_2
        L7_2 = L6_2.delete
        L7_2(L8_2)
        L7_2 = Wait
        L8_2 = 1000
        L7_2(L8_2)
        L6_2 = nil
      end
    end
  end
  L1_2 = {}
  A0_2.buildings = L1_2
  A0_2.loadingBuildings = false
  A0_2.buildingsLoaded = false
end
L0_1.deleteAllBuildings = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2.buildings
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.createBlip
    L7_2(L8_2)
  end
end
L0_1.refreshBlips = L1_1
L2_1 = L0_1
L1_1 = L0_1.new
L1_1 = L1_1(L2_1)
BuildingManager = L1_1
return L0_1
