local L0_1, L1_1, L2_1
L0_1 = exports
L1_1 = "GetCurrentPropertyId"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = PlayerData
  L0_2 = L0_2.currentProperty
  if L0_2 then
    L0_2 = PlayerData
    L0_2 = L0_2.currentProperty
    L0_2 = L0_2.id
    return L0_2
  else
    L0_2 = PlayerData
    L0_2 = L0_2.insideYards
    if L0_2 then
      L1_2 = next
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = {}
        L2_2 = pairs
        L3_2 = L0_2
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          if L7_2 then
            L8_2 = #L1_2
            L8_2 = L8_2 + 1
            L9_2 = {}
            L9_2.id = L6_2
            L1_2[L8_2] = L9_2
          end
        end
        L2_2 = L1_2[1]
        L2_2 = L2_2.id
        return L2_2
      end
    end
  end
  L0_2 = nil
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetCurrentProperty"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerData
  L0_2 = L0_2.currentProperty
  if L0_2 then
    L0_2 = {}
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.id
    L0_2.id = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.owner
    L0_2.owner = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.label
    L0_2.label = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.price
    L0_2.price = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.type
    L0_2.type = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L2_2 = L1_2
    L1_2 = L1_2.getDoorLockedState
    L1_2 = L1_2(L2_2)
    L0_2.doorLocked = L1_2
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L1_2 = L1_2.keyHolders
    L0_2.keyHolders = L1_2
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = PlayerData
      L1_3 = L1_3.currentProperty
      L2_3 = L1_3
      L1_3 = L1_3.hasKey
      L3_3 = A0_3
      return L1_3(L2_3, L3_3)
    end
    L0_2.hasKey = L1_2
    function L1_2()
      local L0_3, L1_3
      L0_3 = PlayerData
      L0_3 = L0_3.currentProperty
      L1_3 = L0_3
      L0_3 = L0_3.isOwner
      return L0_3(L1_3)
    end
    L0_2.isOwner = L1_2
    if L0_2 then
      goto lbl_43
    end
  end
  L0_2 = nil
  ::lbl_43::
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "IsPointInsideProperty"
L2_1 = IsPointInside
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "OpenPropertyMenu"
L2_1 = OpenPropertyMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RemoveKey"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.removeKeyHolder
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "AddKey"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.addKeyHolder
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "SetWaypointToProperty"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.setWaypoint
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetAllProperties"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = PlayerData
  L2_2 = L2_2.job
  L2_2 = L2_2.name
  if "society" == A0_2 then
    L3_2 = PlayerData
    L3_2 = L3_2.job
    L3_2 = L3_2.name
    if L3_2 then
      goto lbl_15
    end
  end
  L3_2 = PlayerData
  L3_2 = L3_2.identifier
  ::lbl_15::
  L4_2 = pairs
  L5_2 = PropertyManager
  L5_2 = L5_2.properties
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if "both" == A0_2 then
      L10_2 = L9_2.owner
      if L10_2 == L3_2 then
        goto lbl_34
      end
      L10_2 = L9_2.owner
      if L10_2 == L2_2 then
        goto lbl_34
      end
    end
    L10_2 = L9_2.owner
    if L10_2 == L3_2 then
      L10_2 = L9_2.ownerType
      ::lbl_34::
      if L10_2 == A0_2 then
        L10_2 = #L1_2
        L10_2 = L10_2 + 1
        L11_2 = {}
        L12_2 = L9_2.id
        L11_2.id = L12_2
        L12_2 = L9_2.label
        L11_2.label = L12_2
        L12_2 = L9_2.price
        L11_2.price = L12_2
        L12_2 = L9_2.type
        L11_2.type = L12_2
        L13_2 = L9_2
        L12_2 = L9_2.getDoorLockedState
        L12_2 = L12_2(L13_2)
        L11_2.doorLocked = L12_2
        L12_2 = L9_2.keyHolders
        L11_2.keyHolders = L12_2
        L1_2[L10_2] = L11_2
      end
    end
  end
  return L1_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetKeyHolders"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.keyHolders
  return L2_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetClosestProperty"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerData
  L0_2 = L0_2.currentProperty
  if L0_2 then
    return L0_2
  end
  L1_2 = PlayerData
  L1_2 = L1_2.insideYards
  if L1_2 then
    L2_2 = next
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = pairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        if L7_2 then
          if not L0_2 then
            L8_2 = LoadedProperties
            L0_2 = L8_2[L6_2]
          else
            L8_2 = GetEntityCoords
            L9_2 = cache
            L9_2 = L9_2.ped
            L8_2 = L8_2(L9_2)
            L9_2 = L0_2.metadata
            L9_2 = L9_2.managePoint
            L9_2 = L9_2 - L8_2
            L9_2 = #L9_2
            L10_2 = LoadedProperties
            L10_2 = L10_2[L6_2]
            L10_2 = L10_2.metadata
            L10_2 = L10_2.managePoint
            L10_2 = L10_2 - L8_2
            L10_2 = #L10_2
            if L9_2 > L10_2 then
              L11_2 = LoadedProperties
              L0_2 = L11_2[L6_2]
            end
          end
        end
      end
      return L0_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1(L1_1, L2_1)
