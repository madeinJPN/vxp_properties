local L0_1, L1_1, L2_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.loadingProperties = false
  L1_2.propertiesLoaded = false
  L2_2 = {}
  L1_2.properties = L2_2
  L2_2 = setmetatable
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return L1_2
end
L0_1.new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Deleting all properties"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2.properties
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.id
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.delete
        L7_2(L8_2)
        L6_2 = nil
      end
    end
  end
  L1_2 = {}
  A0_2.properties = L1_2
  A0_2.loadingProperties = false
  A0_2.propertiesLoaded = false
end
L0_1.deleteAllProperties = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.properties
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.debug
    L4_2 = "Property with id: "
    L5_2 = A1_2
    L6_2 = " already exists"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = A0_2.properties
    L3_2 = L3_2[A1_2]
    return L3_2
  end
  L3_2 = Property
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2.properties
  L4_2[A1_2] = L3_2
  return L3_2
end
L0_1.createProperty = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.properties
  return L1_2
end
L0_1.getProperties = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.properties
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ownerType
    if "user" == L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.isUser
      L10_2 = L7_2.owner
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L1_2[L8_2] = L7_2
      end
    end
  end
  return L1_2
end
L0_1.getPlayerProperties = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.propertiesLoaded
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Property not loaded, waiting for it to load"
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.waitFor
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2.propertiesLoaded
      return L0_3
    end
    L4_2 = "Property not loaded"
    L5_2 = 10000
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.properties
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.getPropertyById = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.properties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    return
  end
  L2_2 = A0_2.properties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.delete
  L2_2(L3_2)
  L2_2 = A0_2.properties
  L2_2[A1_2] = nil
end
L0_1.deletePropertyById = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2.properties
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.createBlip
    L7_2(L8_2)
  end
end
L0_1.refreshBlips = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L6_2 = {}
  L7_2 = pairs
  L8_2 = A0_2.properties
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = nil == A3_2 or "" == A3_2
    if "forSale" == A4_2 then
      L14_2 = L12_2.forSale
      if L14_2 then
        goto lbl_68
      end
    end
    if "forRent" == A4_2 then
      L14_2 = L12_2.forRent
    end
    L15_2 = L12_2
    L14_2 = L12_2.isRented
    L14_2 = nil == A4_2 or "" == A4_2 or "all" == A4_2 or L14_2
    ::lbl_68::
    L15_2 = nil == A5_2 or "" == A5_2 or "all" == A5_2
    if L13_2 and L14_2 and L15_2 then
      L16_2 = table
      L16_2 = L16_2.insert
      L17_2 = L6_2
      L18_2 = L12_2
      L16_2(L17_2, L18_2)
    end
  end
  L7_2 = A1_2 - 1
  L7_2 = L7_2 * A2_2
  L7_2 = L7_2 + 1
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = A1_2 * A2_2
  L10_2 = #L6_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L10_2 = L7_2
  L11_2 = L8_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L9_2
    L16_2 = L6_2[L13_2]
    L14_2(L15_2, L16_2)
  end
  return L9_2
end
L0_1.getPropertiesPaginated = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = pairs
  L9_2 = A0_2.properties
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = nil == A1_2 or "" == A1_2
    if "forSale" == A2_2 then
      L15_2 = L13_2.forSale
      if L15_2 then
        goto lbl_70
      end
    end
    if "forRent" == A2_2 then
      L15_2 = L13_2.forRent
    end
    L16_2 = L13_2
    L15_2 = L13_2.isRented
    L15_2 = nil == A2_2 or "" == A2_2 or "all" == A2_2 or L15_2
    ::lbl_70::
    L16_2 = nil == A3_2 or "" == A3_2 or "all" == A3_2
    if L14_2 and L15_2 and L16_2 then
      L4_2 = L4_2 + 1
      L17_2 = L13_2.forSale
      if L17_2 then
        L5_2 = L5_2 + 1
      end
      L17_2 = L13_2.forRent
      if L17_2 then
        L6_2 = L6_2 + 1
      end
      L18_2 = L13_2
      L17_2 = L13_2.isRented
      L17_2 = L17_2(L18_2)
      if L17_2 then
        L7_2 = L7_2 + 1
      end
    end
  end
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L7_2
  return L8_2, L9_2, L10_2, L11_2
end
L0_1.getPropertiesCount = L1_1
L2_1 = L0_1
L1_1 = L0_1.new
L1_1 = L1_1(L2_1)
PropertyManager = L1_1
return L0_1
