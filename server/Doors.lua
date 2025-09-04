local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.doors
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = {}
  L4_2 = A0_2.auto
  L3_2.auto = L4_2
  L4_2 = A0_2.autolock
  L3_2.autolock = L4_2
  L4_2 = A0_2.coords
  L3_2.coords = L4_2
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = {}
    L5_2 = {}
    L6_2 = L1_2[1]
    L6_2 = L6_2.coords
    L5_2.coords = L6_2
    L6_2 = L1_2[1]
    L6_2 = L6_2.heading
    L5_2.heading = L6_2
    L6_2 = L1_2[1]
    L6_2 = L6_2.model
    L5_2.model = L6_2
    L6_2 = {}
    L7_2 = L1_2[2]
    L7_2 = L7_2.coords
    L6_2.coords = L7_2
    L7_2 = L1_2[2]
    L7_2 = L7_2.heading
    L6_2.heading = L7_2
    L7_2 = L1_2[2]
    L7_2 = L7_2.model
    L6_2.model = L7_2
    L4_2[1] = L5_2
    L4_2[2] = L6_2
  end
  L3_2.doors = L4_2
  L4_2 = A0_2.characters
  L3_2.characters = L4_2
  L4_2 = A0_2.groups
  L3_2.groups = L4_2
  L4_2 = A0_2.heading
  L3_2.heading = L4_2
  L4_2 = A0_2.items
  L3_2.items = L4_2
  L4_2 = A0_2.lockpick
  L3_2.lockpick = L4_2
  L4_2 = A0_2.hideUi
  L3_2.hideUi = L4_2
  L4_2 = A0_2.holdOpen
  L3_2.holdOpen = L4_2
  L4_2 = A0_2.lockSound
  L3_2.lockSound = L4_2
  L4_2 = A0_2.maxDistance
  L3_2.maxDistance = L4_2
  L4_2 = A0_2.doorRate
  L3_2.doorRate = L4_2
  L4_2 = A0_2.model
  L3_2.model = L4_2
  L4_2 = A0_2.state
  L3_2.state = L4_2
  L4_2 = A0_2.unlockSound
  L3_2.unlockSound = L4_2
  L4_2 = A0_2.passcode
  L3_2.passcode = L4_2
  L4_2 = A0_2.lockpickDifficulty
  L3_2.lockpickDifficulty = L4_2
  return L2_2(L3_2)
end
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = L0_1
    A0_2 = L1_2[A0_2]
  end
  L1_2 = {}
  L2_2 = A0_2.id
  L1_2.id = L2_2
  L2_2 = A0_2.name
  L1_2.name = L2_2
  L2_2 = A0_2.state
  L1_2.state = L2_2
  L2_2 = A0_2.coords
  L1_2.coords = L2_2
  L2_2 = A0_2.characters
  L1_2.characters = L2_2
  L2_2 = A0_2.groups
  L1_2.groups = L2_2
  L2_2 = A0_2.items
  L1_2.items = L2_2
  L2_2 = A0_2.maxDistance
  L1_2.maxDistance = L2_2
  return L1_2
end
L3_1 = exports
L4_1 = "getDoor"
L5_1 = L2_1
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "getDoorFromName"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A0_2 then
      L7_2 = L2_1
      L8_2 = L6_2
      return L7_2(L8_2)
    end
  end
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if "id" ~= L7_2 then
        L9_2 = L2_2[L7_2]
        L10_2 = type
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = type
        L12_2 = L8_2
        L11_2 = L11_2(L12_2)
        if "nil" ~= L10_2 and "" ~= L8_2 and L10_2 ~= L11_2 then
          L12_2 = error
          L13_2 = "Expected '%s' for door.%s, received %s (%s)"
          L14_2 = L13_2
          L13_2 = L13_2.format
          L15_2 = L10_2
          L16_2 = L7_2
          L17_2 = L11_2
          L18_2 = L8_2
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        end
        L12_2 = L8_2 or L12_2
        if "" == L8_2 or not L8_2 then
          L12_2 = nil
        end
        L2_2[L7_2] = L12_2
      end
    end
    L3_2 = MySQL
    L3_2 = L3_2.update
    L4_2 = "UPDATE properties_doors SET name = ?, data = ? WHERE id = ?"
    L5_2 = {}
    L6_2 = L2_2.name
    L7_2 = L1_1
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L3_2(L4_2, L5_2)
    L3_2 = TriggerClientEvent
    L4_2 = "nolag_properties:client:editDoor"
    L5_2 = -1
    L6_2 = A0_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2.doors
  A1_2.id = A0_2
  A1_2.name = A2_2
  A1_2.propertyId = A3_2
  if L4_2 then
    L5_2 = 1
    L6_2 = 2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2[L8_2]
      L10_2 = joaat
      L11_2 = "property_door_%s_%s"
      L12_2 = L11_2
      L11_2 = L11_2.format
      L13_2 = A0_2
      L14_2 = L8_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L9_2.hash = L10_2
      L9_2 = L4_2[L8_2]
      L9_2 = L9_2.coords
      L10_2 = L4_2[L8_2]
      L11_2 = vector3
      L12_2 = L9_2.x
      L13_2 = L9_2.y
      L14_2 = L9_2.z
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.coords = L11_2
    end
    L5_2 = A1_2.coords
    if not L5_2 then
      L5_2 = L4_2[1]
      L5_2 = L5_2.coords
      L6_2 = L4_2[1]
      L6_2 = L6_2.coords
      L7_2 = L4_2[2]
      L7_2 = L7_2.coords
      L6_2 = L6_2 - L7_2
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      A1_2.coords = L5_2
    end
  else
    L5_2 = joaat
    L6_2 = "property_door_%s"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    A1_2.hash = L5_2
  end
  L5_2 = vector3
  L6_2 = A1_2.coords
  L6_2 = L6_2.x
  L7_2 = A1_2.coords
  L7_2 = L7_2.y
  L8_2 = A1_2.coords
  L8_2 = L8_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.coords = L5_2
  L5_2 = A1_2.state
  if not L5_2 then
    A1_2.state = 1
  end
  L5_2 = type
  L6_2 = A1_2.items
  if L6_2 then
    L6_2 = L6_2[1]
  end
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = {}
    L6_2 = 1
    L7_2 = A1_2.items
    L7_2 = #L7_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = {}
      L11_2 = A1_2.items
      L11_2 = L11_2[L9_2]
      L10_2.name = L11_2
      L10_2.remove = false
      L5_2[L9_2] = L10_2
    end
    A1_2.items = L5_2
    L6_2 = MySQL
    L6_2 = L6_2.update
    L7_2 = "UPDATE properties_doors SET data = ? WHERE id = ?"
    L8_2 = {}
    L9_2 = L1_1
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L10_2 = A0_2
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L6_2(L7_2, L8_2)
  end
  L5_2 = L0_1
  L5_2[A0_2] = A1_2
  L5_2 = LoadedProperties
  L5_2 = L5_2[A3_2]
  L6_2 = L5_2
  L5_2 = L5_2.addDoor
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  return A1_2
end
L5_1 = false
L6_1 = lib
L6_1 = L6_1.table
L7_1 = exports
L7_1 = L7_1.ox_inventory
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L7_1
    L5_2 = L4_2
    L4_2 = L4_2.RemoveItem
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = 1
    L9_2 = nil
    L10_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
RemoveItem = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A0_2.source
  if not L3_2 then
    L3_2 = A0_2.PlayerData
    L3_2 = L3_2.source
  end
  L4_2 = 1
  L5_2 = #A1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = L8_2.name
    if not L9_2 then
      L9_2 = L8_2
    end
    L10_2 = L7_1
    L11_2 = L10_2
    L10_2 = L10_2.Search
    L12_2 = L3_2
    L13_2 = "slots"
    L14_2 = L9_2
    L15_2 = L8_2.metadata
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = L10_2[1]
    if L10_2 then
      L11_2 = L10_2.count
      if L11_2 > 0 then
        if not A2_2 then
          L11_2 = L8_2.remove
          if not L11_2 then
            goto lbl_41
          end
        end
        L11_2 = L7_1
        L12_2 = L11_2
        L11_2 = L11_2.RemoveItem
        L13_2 = L3_2
        L14_2 = L9_2
        L15_2 = 1
        L16_2 = nil
        L17_2 = L10_2.slot
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        ::lbl_41::
        return L9_2
      end
    end
  end
end
DoesPlayerHaveItem = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.passcode
  if not L5_2 then
    L5_2 = false
  end
  if L4_2 then
    if A2_2 then
      L6_2 = lib
      L6_2 = L6_2.callback
      L6_2 = L6_2.await
      L7_2 = "nolag_properties:client:useLockpick"
      L8_2 = A0_2
      L9_2 = 0.5
      L10_2 = 2
      L11_2 = 5
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      if L6_2 then
        L7_2 = LoadedProperties
        L8_2 = A1_2.propertyId
        L7_2 = L7_2[L8_2]
        if L7_2 then
          L9_2 = L7_2
          L8_2 = L7_2.notifyBreaching
          L8_2(L9_2)
        end
      end
      return L6_2
    end
    if A3_2 then
      L6_2 = Config
      L6_2 = L6_2.PoliceRaid
      L6_2 = L6_2.Enabled
      if L6_2 then
        L6_2 = IsPlayerInGroup
        L7_2 = L4_2
        L8_2 = Config
        L8_2 = L8_2.PoliceRaid
        L8_2 = L8_2.Jobs
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L6_2 = lib
          L6_2 = L6_2.callback
          L6_2 = L6_2.await
          L7_2 = "nolag_properties:client:tryRaidingProperty"
          L8_2 = A0_2
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L7_2 = LoadedProperties
            L8_2 = A1_2.propertyId
            L7_2 = L7_2[L8_2]
            if L7_2 then
              L9_2 = L7_2
              L8_2 = L7_2.notifyBreaching
              L8_2(L9_2)
              L8_2 = Logs
              L8_2 = L8_2.RaidProperty
              L9_2 = L4_2.identifier
              L10_2 = L7_2.id
              L11_2 = L7_2.propertyData
              L11_2 = L11_2.label
              L8_2(L9_2, L10_2, L11_2)
            end
          end
        end
      end
    end
    L6_2 = A1_2.propertyId
    if L6_2 then
      L6_2 = LoadedProperties
      L7_2 = A1_2.propertyId
      L6_2 = L6_2[L7_2]
      if L6_2 then
        L6_2 = LoadedProperties
        L7_2 = A1_2.propertyId
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.playerHaveKey
        L8_2 = L4_2
        L9_2 = "door_"
        L10_2 = A1_2.id
        L9_2 = L9_2 .. L10_2
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if L6_2 then
          L6_2 = true
          return L6_2
        end
      end
    end
    L6_2 = A1_2.characters
    if L6_2 then
      L6_2 = L6_1.contains
      L7_2 = A1_2.characters
      L8_2 = L4_2.identifier
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
    L6_2 = A1_2.groups
    if L6_2 then
      L6_2 = IsPlayerInGroup
      L7_2 = L4_2
      L8_2 = A1_2.groups
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2 or L5_2
      if not L6_2 then
        L5_2 = nil
      end
    end
    if not L5_2 then
      L6_2 = A1_2.items
      if L6_2 then
        L6_2 = DoesPlayerHaveItem
        L7_2 = L4_2
        L8_2 = A1_2.items
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2 or L5_2
        if not L6_2 then
          L5_2 = nil
        end
      end
    end
    if nil ~= L5_2 then
      L6_2 = A1_2.passcode
      if L6_2 then
        L6_2 = A1_2.passcode
        L7_2 = lib
        L7_2 = L7_2.callback
        L7_2 = L7_2.await
        L8_2 = "nolag_properties:client:doorPassCode"
        L9_2 = A0_2
        L7_2 = L7_2(L8_2, L9_2)
        L5_2 = L6_2 == L7_2
      end
    end
  end
  return L5_2
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Config
    L0_2 = L0_2.DoorList
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SELECT `id`, `property_id`, `name`, `data` FROM `properties_doors`"
  L0_2 = L0_2(L1_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_2[L4_2]
    L6_2 = L4_1
    L7_2 = L5_2.id
    L8_2 = json
    L8_2 = L8_2.decode
    L9_2 = L5_2.data
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2.name
    L10_2 = L5_2.property_id
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = true
  L5_1 = L1_2
end
LoadDoorsFromDatabase = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if 1 ~= A1_2 and 0 ~= A1_2 or not A1_2 then
    if A1_2 then
      L5_2 = 1
      if L5_2 then
        goto lbl_15
        A1_2 = L5_2 or A1_2
      end
    end
    A1_2 = 0
  end
  ::lbl_15::
  if L4_2 then
    L5_2 = source
    L5_2 = source
    L5_2 = L8_1
    L6_2 = source
    L7_2 = L4_2
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2 = not L5_2 or L5_2
    if L5_2 then
      L4_2.state = A1_2
      L6_2 = TriggerClientEvent
      L7_2 = "nolag_properties:client:setDoorState"
      L8_2 = -1
      L9_2 = A0_2
      L10_2 = A1_2
      L11_2 = source
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = L4_2.autolock
      if L6_2 and 0 == A1_2 then
        L6_2 = SetTimeout
        L7_2 = L4_2.autolock
        L7_2 = L7_2 * 1000
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = L4_2.state
          if 1 ~= L0_3 then
            L4_2.state = 1
            L0_3 = TriggerClientEvent
            L1_3 = "nolag_properties:client:setDoorState"
            L2_3 = -1
            L3_3 = A0_2
            L4_3 = L4_2.state
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
        end
        L6_2(L7_2, L8_2)
      end
      L6_2 = true
      return L6_2
    end
    L6_2 = source
    if L6_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "nolag_properties:client:notify"
      L8_2 = source
      L9_2 = {}
      L9_2.type = "error"
      L9_2.icon = "lock"
      if 0 == A1_2 then
        L10_2 = locale
        L11_2 = "cannot_unlock"
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_75
        end
      end
      L10_2 = locale
      L11_2 = "cannot_lock"
      L10_2 = L10_2(L11_2)
      ::lbl_75::
      L9_2.description = L10_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L5_2 = false
  return L5_2
end
L10_1 = RegisterNetEvent
L11_1 = "nolag_properties:server:setDoorState"
L12_1 = L9_1
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "setDoorState"
L12_1 = L9_1
L10_1(L11_1, L12_1)
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "nolag_properties:server:getDoors"
function L12_1()
  local L0_2, L1_2
  while true do
    L0_2 = L5_1
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = L0_1
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = lib
L10_1 = L10_1.callback
L10_1 = L10_1.register
L11_1 = "nolag_properties:server:canCreateDoor"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = LoadedProperties
  L3_2 = A1_2.propertyId
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = false
    L4_2 = "Property not found"
    return L3_2, L4_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.canCreateDoor
  L5_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "nolag_properties:server:editDoor"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 then
    L2_2 = A1_2.coords
    if not L2_2 then
      L2_2 = A1_2.doors
      L3_2 = L2_2[1]
      L3_2 = L3_2.coords
      L4_2 = L2_2[1]
      L4_2 = L4_2.coords
      L5_2 = L2_2[2]
      L5_2 = L5_2.coords
      L4_2 = L4_2 - L5_2
      L4_2 = L4_2 / 2
      L3_2 = L3_2 - L4_2
      A1_2.coords = L3_2
    end
    L2_2 = A1_2.name
    if not L2_2 then
      L2_2 = tostring
      L3_2 = A1_2.coords
      L2_2 = L2_2(L3_2)
      A1_2.name = L2_2
    end
  end
  if A0_2 then
    if A1_2 then
      L2_2 = MySQL
      L2_2 = L2_2.update
      L3_2 = "UPDATE properties_doors SET name = ?, data = ? WHERE id = ?"
      L4_2 = {}
      L5_2 = A1_2.name
      L6_2 = L1_1
      L7_2 = A1_2
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = MySQL
      L2_2 = L2_2.update
      L3_2 = "DELETE FROM properties_doors WHERE id = ?"
      L4_2 = {}
      L5_2 = A0_2
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
    end
    L2_2 = L0_1
    L2_2[A0_2] = A1_2
    L2_2 = TriggerClientEvent
    L3_2 = "nolag_properties:client:editDoor"
    L4_2 = -1
    L5_2 = A0_2
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.propertyId
      if L2_2 then
        L2_2 = TriggerClientEvent
        L3_2 = "nolag_properties:client:propertyDataUpdated"
        L4_2 = -1
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.propertyId
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = MySQL
    L2_2 = L2_2.insert
    L2_2 = L2_2.await
    L3_2 = "INSERT INTO properties_doors (name, data, property_id) VALUES (?, ?, ?)"
    L4_2 = {}
    L5_2 = A1_2.name
    L6_2 = L1_1
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = A1_2.propertyId
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L4_1
    L4_2 = L2_2
    L5_2 = A1_2
    L6_2 = A1_2.name
    L7_2 = A1_2.propertyId
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = TriggerClientEvent
    L5_2 = "nolag_properties:client:setDoorState"
    L6_2 = -1
    L7_2 = L3_2.id
    L8_2 = L3_2.state
    L9_2 = false
    L10_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = TriggerClientEvent
    L5_2 = "nolag_properties:client:propertyDataUpdated"
    L6_2 = -1
    L7_2 = A1_2.propertyId
    L4_2(L5_2, L6_2, L7_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "properties_doors:breakLockpick"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Framework
  L0_2 = L0_2.GetPlayerFromId
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L1_2 = DoesPlayerHaveItem
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.LockpickItems
    L4_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2)
  end
  return L1_2
end
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L3_2 = A0_2.job
    L3_2 = L3_2.name
    if L3_2 == A1_2 then
      L3_2 = A0_2.job
      L3_2 = L3_2.name
      L4_2 = A0_2.job
      L4_2 = L4_2.grade
      L4_2 = L4_2.level
      return L3_2, L4_2
    end
  else
    L3_2 = L6_1.type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "hash" == L3_2 then
      L4_2 = A0_2.job
      L4_2 = L4_2.name
      L4_2 = A1_2[L4_2]
      if L4_2 then
        L5_2 = A0_2.job
        L5_2 = L5_2.grade
        L5_2 = L5_2.level
        if L4_2 <= L5_2 then
          L5_2 = A0_2.job
          L5_2 = L5_2.name
          L6_2 = A0_2.job
          L6_2 = L6_2.grade
          L6_2 = L6_2.level
          return L5_2, L6_2
        end
      end
    elseif "array" == L3_2 then
      L4_2 = 1
      L5_2 = #A1_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = A0_2.job
        L8_2 = L8_2.name
        L9_2 = A1_2[L7_2]
        if L8_2 == L9_2 then
          L8_2 = A0_2.job
          L8_2 = L8_2.name
          L9_2 = A0_2.job
          L9_2 = L9_2.grade
          L9_2 = L9_2.level
          return L8_2, L9_2
        end
      end
    end
  end
end
IsPlayerInGroup = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = MySQL
  L1_2 = L1_2.query
  L1_2 = L1_2.await
  L2_2 = "SELECT * FROM properties_doors WHERE property_id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = LoadedProperties
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2.propertyData
    L8_2 = L8_2.keyHolders
    L7_2.characters = L8_2
    L8_2 = Config
    L8_2 = L8_2.LockDoorsOnForceSale
    if L8_2 then
      L7_2.state = 1
    end
    L8_2 = L3_1
    L9_2 = L7_2.id
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
UpdateDoorlocks = L10_1
