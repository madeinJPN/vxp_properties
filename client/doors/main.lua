local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = Config
L0_1 = L0_1.DoorLock
L0_1 = L0_1.SpriteIcons
L1_1 = Config
L1_1 = L1_1.DoorLock
L2_1 = {}
L3_1 = {}
L4_1 = L0_1.unlocked
L4_1 = L4_1.dict
L5_1 = L0_1.unlocked
L5_1 = L5_1.texture
L6_1 = L0_1.unlocked
L6_1 = L6_1.x
L7_1 = L0_1.unlocked
L7_1 = L7_1.y
L8_1 = L0_1.unlocked
L8_1 = L8_1.width
L9_1 = L0_1.unlocked
L9_1 = L9_1.height
L10_1 = 0
L11_1 = 255
L12_1 = 255
L13_1 = 255
L14_1 = 255
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L3_1[9] = L12_1
L3_1[10] = L13_1
L3_1[11] = L14_1
L2_1[0] = L3_1
L3_1 = {}
L4_1 = L0_1.locked
L4_1 = L4_1.dict
L5_1 = L0_1.locked
L5_1 = L5_1.texture
L6_1 = L0_1.locked
L6_1 = L6_1.x
L7_1 = L0_1.locked
L7_1 = L7_1.y
L8_1 = L0_1.locked
L8_1 = L8_1.width
L9_1 = L0_1.locked
L9_1 = L9_1.height
L10_1 = 0
L11_1 = 255
L12_1 = 255
L13_1 = 255
L14_1 = 255
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L3_1[9] = L12_1
L3_1[10] = L13_1
L3_1[11] = L14_1
L2_1[1] = L3_1
L1_1.DrawSprite = L2_1
L1_1 = require
L2_1 = "glm"
L1_1 = L1_1(L2_1)
L2_1 = {}
doors = L2_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.id
  L1_2 = L2_1
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = lib
    L2_2 = L2_2.grid
    L2_2 = L2_2.removeEntry
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2.id
  L2_2 = L2_1
  L2_2[L3_2] = A0_2
  L2_2 = A0_2.doors
  L3_2 = GetLabelText
  L4_2 = GetNameOfZone
  L5_2 = A0_2.coords
  L5_2 = L5_2.x
  L6_2 = A0_2.coords
  L6_2 = L6_2.y
  L7_2 = A0_2.coords
  L7_2 = L7_2.z
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  A0_2.zone = L3_2
  L3_2 = A0_2.maxDistance
  A0_2.radius = L3_2
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = A0_2.propertyId
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.addDoor
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
  if L2_2 then
    L4_2 = 1
    L5_2 = 2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = AddDoorToSystem
      L9_2 = L2_2[L7_2]
      L9_2 = L9_2.hash
      L10_2 = L2_2[L7_2]
      L10_2 = L10_2.model
      L11_2 = L2_2[L7_2]
      L11_2 = L11_2.coords
      L11_2 = L11_2.x
      L12_2 = L2_2[L7_2]
      L12_2 = L12_2.coords
      L12_2 = L12_2.y
      L13_2 = L2_2[L7_2]
      L13_2 = L13_2.coords
      L13_2 = L13_2.z
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L8_2 = DoorSystemSetDoorState
      L9_2 = L2_2[L7_2]
      L9_2 = L9_2.hash
      L10_2 = 4
      L11_2 = false
      L12_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = DoorSystemSetDoorState
      L9_2 = L2_2[L7_2]
      L9_2 = L9_2.hash
      L10_2 = A0_2.state
      L11_2 = false
      L12_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = A0_2.doorRate
      if not L8_2 then
        L8_2 = A0_2.auto
        if L8_2 then
          goto lbl_91
        end
      end
      L8_2 = DoorSystemSetAutomaticRate
      L9_2 = L2_2[L7_2]
      L9_2 = L9_2.hash
      L10_2 = A0_2.doorRate
      if not L10_2 then
        L10_2 = 10.0
      end
      L11_2 = false
      L12_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2)
      ::lbl_91::
    end
  else
    L4_2 = AddDoorToSystem
    L5_2 = A0_2.hash
    L6_2 = A0_2.model
    L7_2 = A0_2.coords
    L7_2 = L7_2.x
    L8_2 = A0_2.coords
    L8_2 = L8_2.y
    L9_2 = A0_2.coords
    L9_2 = L9_2.z
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = DoorSystemSetDoorState
    L5_2 = A0_2.hash
    L6_2 = 4
    L7_2 = false
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = DoorSystemSetDoorState
    L5_2 = A0_2.hash
    L6_2 = A0_2.state
    L7_2 = false
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2.doorRate
    if not L4_2 then
      L4_2 = A0_2.auto
      if L4_2 then
        goto lbl_133
      end
    end
    L4_2 = DoorSystemSetAutomaticRate
    L5_2 = A0_2.hash
    L6_2 = A0_2.doorRate
    if not L6_2 then
      L6_2 = 10.0
    end
    L7_2 = false
    L8_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  ::lbl_133::
  L4_2 = lib
  L4_2 = L4_2.grid
  L4_2 = L4_2.addEntry
  L5_2 = A0_2
  L4_2(L5_2)
end
L4_1 = lib
L4_1 = L4_1.array
L5_1 = L4_1
L4_1 = L4_1.new
L4_1 = L4_1(L5_1)
L5_1 = 0
L6_1 = Entity
L7_1 = GetAspectRatio
L8_1 = true
L7_1 = L7_1(L8_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L1_2 = "nolag_properties:server:getDoors"
  L2_2 = false
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L3_1
      L8_3 = L6_3
      L7_3(L8_3)
    end
    while true do
      L1_3 = GetEntityCoords
      L2_3 = cache
      L2_3 = L2_3.ped
      L1_3 = L1_3(L2_3)
      L2_3 = lib
      L2_3 = L2_3.grid
      L2_3 = L2_3.getNearbyEntries
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L4_1 = L2_3
      L2_3 = L4_1
      L2_3 = #L2_3
      L5_1 = L2_3
      L2_3 = GetAspectRatio
      L3_3 = true
      L2_3 = L2_3(L3_3)
      L7_1 = L2_3
      L2_3 = 1
      L3_3 = L5_1
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L4_1
        L6_3 = L6_3[L5_3]
        L7_3 = L6_3.doors
        L8_3 = L6_3.coords
        L8_3 = L1_3 - L8_3
        L8_3 = #L8_3
        L6_3.distance = L8_3
        if L7_3 then
          L8_3 = 1
          L9_3 = 2
          L10_3 = 1
          for L11_3 = L8_3, L9_3, L10_3 do
            L12_3 = L7_3[L11_3]
            L13_3 = IsModelValid
            L14_3 = L12_3.model
            L13_3 = L13_3(L14_3)
            if L13_3 then
              L13_3 = L12_3.entity
              L13_3 = GetClosestObjectOfType
              L14_3 = L12_3.coords
              L14_3 = L14_3.x
              L15_3 = L12_3.coords
              L15_3 = L15_3.y
              L16_3 = L12_3.coords
              L16_3 = L16_3.z
              L17_3 = 1.0
              L18_3 = L12_3.model
              L19_3 = false
              L20_3 = false
              L21_3 = false
              L13_3 = not L13_3 and L13_3
              if L13_3 and 0 ~= L13_3 then
                L12_3.entity = L13_3
                L14_3 = L6_1
                L15_3 = L13_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3.state
                L15_3 = L6_3.id
                L14_3.propertyDoorId = L15_3
              else
                L12_3.entity = nil
              end
            end
          end
        else
          L8_3 = IsModelValid
          L9_3 = L6_3.model
          L8_3 = L8_3(L9_3)
          if L8_3 then
            L8_3 = L6_3.entity
            L8_3 = GetClosestObjectOfType
            L9_3 = L6_3.coords
            L9_3 = L9_3.x
            L10_3 = L6_3.coords
            L10_3 = L10_3.y
            L11_3 = L6_3.coords
            L11_3 = L11_3.z
            L12_3 = 1.0
            L13_3 = L6_3.model
            L14_3 = false
            L15_3 = false
            L16_3 = false
            L8_3 = not L8_3 and L8_3
            if L8_3 and 0 ~= L8_3 then
              L9_3 = GetEntityCoords
              L10_3 = L8_3
              L9_3 = L9_3(L10_3)
              L10_3 = GetModelDimensions
              L11_3 = L6_3.model
              L10_3, L11_3 = L10_3(L11_3)
              L12_3 = vec3
              L13_3 = L10_3.x
              L14_3 = L11_3.x
              L13_3 = L13_3 + L14_3
              L13_3 = L13_3 / 2
              L14_3 = L10_3.y
              L15_3 = L11_3.y
              L14_3 = L14_3 + L15_3
              L14_3 = L14_3 / 2
              L15_3 = L10_3.z
              L16_3 = L11_3.z
              L15_3 = L15_3 + L16_3
              L15_3 = L15_3 / 2
              L12_3 = L12_3(L13_3, L14_3, L15_3)
              L13_3 = GetEntityHeading
              L14_3 = L8_3
              L13_3 = L13_3(L14_3)
              L14_3 = L1_1.pi
              L14_3 = L14_3 / 180
              L13_3 = L13_3 * L14_3
              L14_3 = L1_1.sincos
              L15_3 = L13_3
              L14_3, L15_3 = L14_3(L15_3)
              L16_3 = L12_3.x
              L16_3 = L15_3 * L16_3
              L17_3 = L12_3.y
              L17_3 = L14_3 * L17_3
              L16_3 = L16_3 - L17_3
              L17_3 = L12_3.x
              L17_3 = L14_3 * L17_3
              L18_3 = L12_3.y
              L18_3 = L15_3 * L18_3
              L17_3 = L17_3 + L18_3
              L18_3 = vec3
              L19_3 = L9_3.x
              L19_3 = L19_3 + L16_3
              L20_3 = L9_3.y
              L20_3 = L20_3 + L17_3
              L21_3 = L9_3.z
              L22_3 = L12_3.z
              L21_3 = L21_3 + L22_3
              L18_3 = L18_3(L19_3, L20_3, L21_3)
              L6_3.coords = L18_3
              L6_3.entity = L8_3
              L18_3 = L6_1
              L19_3 = L8_3
              L18_3 = L18_3(L19_3)
              L18_3 = L18_3.state
              L19_3 = L6_3.id
              L18_3.propertyDoorId = L19_3
            else
              L6_3.entity = nil
            end
          end
        end
      end
      L2_3 = Wait
      L3_3 = 500
      L2_3(L3_3)
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
GetDoors = L8_1
L8_1 = RegisterNetEvent
L9_1 = "nolag_properties:client:setDoorState"
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L2_1
  if not L4_2 then
    return
  end
  if A3_2 then
    L4_2 = L3_1
    L5_2 = A3_2
    L4_2(L5_2)
  end
  L4_2 = Config
  L4_2 = L4_2.DoorLock
  L4_2 = L4_2.Notify
  if L4_2 then
    L4_2 = cache
    L4_2 = L4_2.serverId
    if A2_2 == L4_2 then
      if 0 == A1_2 then
        L4_2 = Framework
        L4_2 = L4_2.Notify
        L5_2 = {}
        L5_2.type = "success"
        L5_2.icon = "unlock"
        L6_2 = locale
        L7_2 = "unlocked_door"
        L6_2 = L6_2(L7_2)
        L5_2.description = L6_2
        L4_2(L5_2)
      else
        L4_2 = Framework
        L4_2 = L4_2.Notify
        L5_2 = {}
        L5_2.type = "success"
        L5_2.icon = "lock"
        L6_2 = locale
        L7_2 = "locked_door"
        L6_2 = L6_2(L7_2)
        L5_2.description = L6_2
        L4_2(L5_2)
      end
    end
  end
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = L2_1
    L4_2 = L4_2[A0_2]
  end
  L5_2 = L4_2.doors
  L4_2.state = A1_2
  if L5_2 then
    L6_2 = DoorSystemSetDoorState
    L7_2 = L5_2[1]
    L7_2 = L7_2.hash
    L8_2 = L4_2.state
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = DoorSystemSetDoorState
    L7_2 = L5_2[2]
    L7_2 = L7_2.hash
    L8_2 = L4_2.state
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = L4_2.holdOpen
    if L6_2 then
      L6_2 = DoorSystemSetHoldOpen
      L7_2 = L5_2[1]
      L7_2 = L7_2.hash
      L8_2 = L4_2.state
      L8_2 = 0 == L8_2
      L6_2(L7_2, L8_2)
      L6_2 = DoorSystemSetHoldOpen
      L7_2 = L5_2[2]
      L7_2 = L7_2.hash
      L8_2 = L4_2.state
      L8_2 = 0 == L8_2
      L6_2(L7_2, L8_2)
    end
    while true do
      L6_2 = L4_2.state
      if 1 ~= L6_2 then
        break
      end
      L6_2 = IsDoorClosed
      L7_2 = L5_2[1]
      L7_2 = L7_2.hash
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = IsDoorClosed
        L7_2 = L5_2[2]
        L7_2 = L7_2.hash
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
  else
    L6_2 = DoorSystemSetDoorState
    L7_2 = L4_2.hash
    L8_2 = L4_2.state
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = L4_2.holdOpen
    if L6_2 then
      L6_2 = DoorSystemSetHoldOpen
      L7_2 = L4_2.hash
      L8_2 = L4_2.state
      L8_2 = 0 == L8_2
      L6_2(L7_2, L8_2)
    end
    while true do
      L6_2 = L4_2.state
      if 1 ~= L6_2 then
        break
      end
      L6_2 = IsDoorClosed
      L7_2 = L4_2.hash
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
  end
  L6_2 = L4_2.state
  if L6_2 == A1_2 then
    L6_2 = L4_2.distance
    if L6_2 then
      L6_2 = L4_2.distance
      if L6_2 < 20 then
      end
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "nolag_properties:client:editDoor"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  if "" == L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2.doors
  if A1_2 then
    L4_2 = A1_2.state
    if L4_2 then
      goto lbl_14
    end
  end
  L4_2 = 0
  ::lbl_14::
  L5_2 = lib
  L5_2 = L5_2.grid
  L5_2 = L5_2.removeEntry
  L6_2 = L2_2
  L5_2(L6_2)
  if A1_2 then
    L5_2 = L2_2.zone
    if not L5_2 then
      L5_2 = GetLabelText
      L6_2 = GetNameOfZone
      L7_2 = L2_2.coords
      L7_2 = L7_2.x
      L8_2 = L2_2.coords
      L8_2 = L8_2.y
      L9_2 = L2_2.coords
      L9_2 = L9_2.z
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    A1_2.zone = L5_2
    L5_2 = A1_2.maxDistance
    A1_2.radius = L5_2
    L5_2 = L2_2.distance
    if L5_2 then
      L5_2 = L2_2.distance
      if L5_2 < 20 then
        L2_2.distance = 80
      end
    end
    L5_2 = lib
    L5_2 = L5_2.grid
    L5_2 = L5_2.addEntry
    L6_2 = A1_2
    L5_2(L6_2)
  else
    L5_2 = ClosestDoor
    if L5_2 then
      L5_2 = L5_2.id
    end
    if L5_2 == A0_2 then
      ClosestDoor = nil
    end
  end
  if L3_2 then
    L5_2 = 1
    L6_2 = 2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2[L8_2]
      L9_2 = L9_2.hash
      if A1_2 then
        L10_2 = A1_2.doorRate
        if not L10_2 then
          L10_2 = L2_2.doorRate
          if not L10_2 then
            L10_2 = A1_2.auto
            if L10_2 then
              goto lbl_91
            end
          end
        end
        L10_2 = DoorSystemSetAutomaticRate
        L11_2 = L9_2
        L12_2 = A1_2.doorRate
        if not L12_2 then
          L12_2 = L2_2.doorRate
          if L12_2 then
            L12_2 = 0.0
            if L12_2 then
              goto lbl_88
            end
          end
          L12_2 = 10.0
        end
        ::lbl_88::
        L13_2 = false
        L14_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2)
        ::lbl_91::
        L10_2 = DoorSystemSetDoorState
        L11_2 = L9_2
        L12_2 = L4_2
        L13_2 = false
        L14_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = A1_2.holdOpen
        if L10_2 then
          L10_2 = DoorSystemSetHoldOpen
          L11_2 = L9_2
          L12_2 = 0 == L4_2
          L10_2(L11_2, L12_2)
        end
      else
        L10_2 = DoorSystemSetDoorState
        L11_2 = L9_2
        L12_2 = 4
        L13_2 = false
        L14_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = DoorSystemSetDoorState
        L11_2 = L9_2
        L12_2 = 0
        L13_2 = false
        L14_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = L3_2[L8_2]
        L10_2 = L10_2.entity
        if L10_2 then
          L10_2 = L6_1
          L11_2 = L3_2[L8_2]
          L11_2 = L11_2.entity
          L10_2 = L10_2(L11_2)
          L10_2 = L10_2.state
          L10_2.propertyDoorId = nil
        end
      end
    end
  elseif A1_2 then
    L5_2 = A1_2.doorRate
    if not L5_2 then
      L5_2 = L2_2.doorRate
      if not L5_2 then
        L5_2 = A1_2.auto
        if L5_2 then
          goto lbl_158
        end
      end
    end
    L5_2 = DoorSystemSetAutomaticRate
    L6_2 = L2_2.hash
    L7_2 = A1_2.doorRate
    if not L7_2 then
      L7_2 = L2_2.doorRate
      if L7_2 then
        L7_2 = 0.0
        if L7_2 then
          goto lbl_155
        end
      end
      L7_2 = 10.0
    end
    ::lbl_155::
    L8_2 = false
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    ::lbl_158::
    L5_2 = DoorSystemSetDoorState
    L6_2 = L2_2.hash
    L7_2 = L4_2
    L8_2 = false
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A1_2.holdOpen
    if L5_2 then
      L5_2 = DoorSystemSetHoldOpen
      L6_2 = L2_2.hash
      L7_2 = 0 == L4_2
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = DoorSystemSetDoorState
    L6_2 = L2_2.hash
    L7_2 = 4
    L8_2 = false
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = DoorSystemSetDoorState
    L6_2 = L2_2.hash
    L7_2 = 0
    L8_2 = false
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = L2_2.entity
    if L5_2 then
      L5_2 = L6_1
      L6_2 = L2_2.entity
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L5_2.propertyDoorId = nil
    end
  end
  L5_2 = L2_2.propertyId
  L6_2 = PropertyManager
  L7_2 = L6_2
  L6_2 = L6_2.getPropertyById
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L8_2 = L6_2
    L7_2 = L6_2.editDoor
    L9_2 = A0_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L2_1
  L7_2[A0_2] = A1_2
end
L8_1(L9_1, L10_1)
ClosestDoor = nil
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "nolag_properties:client:doorPassCode"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ClosestDoor
  if L0_2 then
    L0_2 = L0_2.passcode
  end
  if L0_2 then
    L0_2 = lib
    L0_2 = L0_2.inputDialog
    L1_2 = locale
    L2_2 = "door_lock"
    L1_2 = L1_2(L2_2)
    L2_2 = {}
    L3_2 = {}
    L3_2.type = "input"
    L4_2 = locale
    L5_2 = "passcode"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L3_2.password = true
    L3_2.icon = "lock"
    L2_2[1] = L3_2
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = L0_2[1]
    end
  end
  return L0_2
end
L8_1(L9_1, L10_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "nolag_properties:client:useLockpick"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Config
  L3_2 = L3_2.LockPick
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = Framework
  L4_2 = L4_2.Notify
  L5_2 = {}
  if L3_2 then
    L6_2 = "success"
    if L6_2 then
      goto lbl_17
    end
  end
  L6_2 = "error"
  ::lbl_17::
  L5_2.type = L6_2
  if L3_2 then
    L6_2 = "unlock"
    if L6_2 then
      goto lbl_24
    end
  end
  L6_2 = "lock"
  ::lbl_24::
  L5_2.icon = L6_2
  if L3_2 then
    L6_2 = locale
    L7_2 = "lockpick_success"
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_35
    end
  end
  L6_2 = locale
  L7_2 = "lockpick_failed"
  L6_2 = L6_2(L7_2)
  ::lbl_35::
  L5_2.description = L6_2
  L4_2(L5_2)
  return L3_2
end
L8_1(L9_1, L10_1)
L8_1 = 0
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = ClosestDoor
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L8_1
  L1_2 = L0_2 - L1_2
  L2_2 = 500
  if L1_2 > L2_2 then
    L8_1 = L0_2
    L1_2 = TriggerServerEvent
    L2_2 = "nolag_properties:server:setDoorState"
    L3_2 = ClosestDoor
    L3_2 = L3_2.id
    L4_2 = ClosestDoor
    L4_2 = L4_2.state
    if 1 == L4_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_27
      end
    end
    L4_2 = 1
    ::lbl_27::
    L1_2(L2_2, L3_2, L4_2)
  end
end
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = locale
  L1_2 = "lock_door"
  L0_2 = L0_2(L1_2)
  L1_2 = locale
  L2_2 = "unlock_door"
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = Config
  L3_2 = L3_2.DoorLock
  L3_2 = L3_2.DrawSprite
  if L3_2 then
    L4_2 = L3_2[0]
    if L4_2 then
      L4_2 = L4_2[1]
    end
    L5_2 = L3_2[1]
    if L5_2 then
      L5_2 = L5_2[1]
    end
    if L4_2 then
      L6_2 = RequestStreamedTextureDict
      L7_2 = L4_2
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
    if L5_2 then
      L6_2 = RequestStreamedTextureDict
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
    end
  end
  L4_2 = SetDrawOrigin
  L5_2 = ClearDrawOrigin
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = DrawSprite
  end
  while true do
    L7_2 = L4_1
    L7_2 = L7_2[1]
    ClosestDoor = L7_2
    L7_2 = L5_1
    if L7_2 > 0 then
      L7_2 = 1
      L8_2 = L5_1
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L4_1
        L11_2 = L11_2[L10_2]
        L12_2 = L11_2.distance
        L13_2 = L11_2.maxDistance
        if not L13_2 then
          L13_2 = 2.0
        end
        if L12_2 < L13_2 then
          L12_2 = L11_2.distance
          L13_2 = ClosestDoor
          L13_2 = L13_2.distance
          if L12_2 < L13_2 then
            ClosestDoor = L11_2
          end
          if L3_2 then
            L12_2 = L11_2.hideUi
            if not L12_2 then
              L12_2 = L11_2.state
              L12_2 = L3_2[L12_2]
              if L12_2 then
                L13_2 = L4_2
                L14_2 = L11_2.coords
                L14_2 = L14_2.x
                L15_2 = L11_2.coords
                L15_2 = L15_2.y
                L16_2 = L11_2.coords
                L16_2 = L16_2.z
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = L6_2
                L14_2 = L12_2[1]
                L15_2 = L12_2[2]
                L16_2 = L12_2[3]
                L17_2 = L12_2[4]
                L18_2 = L12_2[5]
                L19_2 = L12_2[6]
                L20_2 = L7_1
                L19_2 = L19_2 * L20_2
                L20_2 = L12_2[7]
                L21_2 = L12_2[8]
                L22_2 = L12_2[9]
                L23_2 = L12_2[10]
                L24_2 = L12_2[11]
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                L13_2 = L5_2
                L13_2()
              end
            end
          end
        end
      end
    end
    L7_2 = ClosestDoor
    if L7_2 then
      L7_2 = ClosestDoor
      L7_2 = L7_2.distance
      L8_2 = ClosestDoor
      L8_2 = L8_2.maxDistance
      if not L8_2 then
        L8_2 = 2.0
      end
      if L7_2 < L8_2 then
        L7_2 = Config
        L7_2 = L7_2.DoorLock
        L7_2 = L7_2.DrawTextUI
        if L7_2 then
          L7_2 = ClosestDoor
          L7_2 = L7_2.hideUi
          if not L7_2 then
            L7_2 = ClosestDoor
            L7_2 = L7_2.state
            if L7_2 ~= L2_2 then
              L7_2 = lib
              L7_2 = L7_2.showTextUI
              L8_2 = ClosestDoor
              L8_2 = L8_2.state
              L8_2 = L0_2 or L8_2
              if 0 ~= L8_2 or not L0_2 then
                L8_2 = L1_2
              end
              L7_2(L8_2)
              L7_2 = ClosestDoor
              L2_2 = L7_2.state
            end
          end
        end
        L7_2 = PickingLock
        if not L7_2 then
          L7_2 = IsDisabledControlJustReleased
          L8_2 = 0
          L9_2 = 38
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L7_2 = L9_1
            L7_2()
          end
        end
    end
    elseif L2_2 then
      L7_2 = lib
      L7_2 = L7_2.hideTextUI
      L7_2()
      L2_2 = nil
    end
    L7_2 = Wait
    L8_2 = L5_1
    if L8_2 > 0 then
      L8_2 = 0
      if L8_2 then
        goto lbl_162
      end
    end
    L8_2 = 500
    ::lbl_162::
    L7_2(L8_2)
  end
end
L10_1(L11_1)
L10_1 = exports
L11_1 = "UseLockpick"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ClosestDoor
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L8_1
  L1_2 = L0_2 - L1_2
  L2_2 = 500
  if L1_2 > L2_2 then
    L8_1 = L0_2
    L1_2 = TriggerServerEvent
    L2_2 = "nolag_properties:server:setDoorState"
    L3_2 = ClosestDoor
    L3_2 = L3_2.id
    L4_2 = ClosestDoor
    L4_2 = L4_2.state
    if 1 == L4_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_27
      end
    end
    L4_2 = 1
    ::lbl_27::
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "PoliceRaidDoor"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ClosestDoor
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L8_1
  L1_2 = L0_2 - L1_2
  L2_2 = 500
  if L1_2 > L2_2 then
    L8_1 = L0_2
    L1_2 = TriggerServerEvent
    L2_2 = "nolag_properties:server:setDoorState"
    L3_2 = ClosestDoor
    L3_2 = L3_2.id
    L4_2 = ClosestDoor
    L4_2 = L4_2.state
    if 1 == L4_2 then
      L4_2 = 0
      if L4_2 then
        goto lbl_27
      end
    end
    L4_2 = 1
    ::lbl_27::
    L5_2 = false
    L6_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L10_1(L11_1, L12_1)
