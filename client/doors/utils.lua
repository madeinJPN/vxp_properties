local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = Entity
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.entity
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = A0_2
  ::lbl_10::
  if not L1_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_2.state
  end
  L3_2 = L2_2
  if L3_2 then
    L3_2 = L3_2.doorId
  end
  if not L3_2 then
    return
  end
  L4_2 = doors
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L2_2.doorId = nil
  end
  return L4_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = A0_2.entity
  end
  L2_2 = L1_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  return L2_2
end
PickingLock = false
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = PickingLock
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.lockpick
    if L2_2 then
      L2_2 = Config
      L2_2 = L2_2.CanPickUnlockedDoors
      if not L2_2 then
        L2_2 = L1_2.state
        L2_2 = 1 == L2_2
      end
    end
  end
  return L2_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = PickingLock
    if not L2_2 then
      L2_2 = L1_2.lockpick
      if L2_2 then
        L2_2 = Config
        L2_2 = L2_2.CanPickUnlockedDoors
        if L2_2 then
          goto lbl_20
        end
        L2_2 = L1_2.state
        if 0 ~= L2_2 then
          goto lbl_20
        end
      end
    end
  end
  do return end
  ::lbl_20::
  PickingLock = true
  L2_2 = TaskTurnPedToFaceCoord
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = L1_2.coords
  L4_2 = L4_2.x
  L5_2 = L1_2.coords
  L5_2 = L5_2.y
  L6_2 = L1_2.coords
  L6_2 = L6_2.z
  L7_2 = 4000
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.requestAnimDict
  L3_2 = "mp_common_heist"
  L2_2(L3_2)
  L2_2 = TaskPlayAnim
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = "mp_common_heist"
  L5_2 = "pick_door"
  L6_2 = 3.0
  L7_2 = 1.0
  L8_2 = -1
  L9_2 = 49
  L10_2 = 0
  L11_2 = true
  L12_2 = true
  L13_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = lib
  L2_2 = L2_2.skillCheck
  L3_2 = L1_2.lockpickDifficulty
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.LockDifficulty
  end
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  if L2_2 then
    L5_2 = 100
    if L5_2 then
      goto lbl_70
    end
  end
  L5_2 = 5
  ::lbl_70::
  L3_2 = L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "nolag_properties:server:setDoorState"
    L6_2 = L1_2.id
    L7_2 = L1_2.state
    if 1 == L7_2 then
      L7_2 = 0
      if L7_2 then
        goto lbl_83
      end
    end
    L7_2 = 1
    ::lbl_83::
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  if 1 == L3_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "properties_doors:breakLockpick"
    L4_2(L5_2)
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.type = "error"
    L6_2 = locale
    L7_2 = "lockpick_broke"
    L6_2 = L6_2(L7_2)
    L5_2.description = L6_2
    L4_2(L5_2)
  end
  L4_2 = StopEntityAnim
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = "pick_door"
  L7_2 = "mp_common_heist"
  L8_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2)
  PickingLock = false
end
L5_1 = exports
L6_1 = "pickClosestDoor"
function L7_1()
  local L0_2, L1_2
  L0_2 = ClosestDoor
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  L1_2 = ClosestDoor
  L1_2 = L1_2.entity
  L0_2(L1_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = A0_2.entity
  end
  L2_2 = GetEntityModel
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = AddDoorToSystem
  L5_2 = 1826661658
  L6_2 = L2_2
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = DoorSystemSetDoorState
  L5_2 = 1826661658
  L6_2 = 4
  L7_2 = false
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetEntityCoords
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = L5_1
  L4_2 = #L4_2
  L5_2 = L4_2 + 1
  L4_2 = L5_1
  L6_2 = {}
  L6_2.entity = L1_2
  L6_2.model = L2_2
  L6_2.coords = L3_2
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = GetEntityHeading
  L9_2 = L1_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 + 0.5
  L7_2 = L7_2(L8_2)
  L6_2.heading = L7_2
  L4_2[L5_2] = L6_2
  L4_2 = RemoveDoorFromSystem
  L5_2 = 1826661658
  L4_2(L5_2)
end
L7_1 = false
L8_1 = RegisterNUICallback
L9_1 = "createDoor"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:canCreateDoor"
  L4_2 = false
  L5_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L4_2 = lib
    L4_2 = L4_2.notify
    L5_2 = {}
    L5_2.type = "error"
    L5_2.description = L3_2
    return L4_2(L5_2)
  end
  L4_2 = A0_2.state
  if true ~= L4_2 then
    L4_2 = A0_2.state
    if 1 ~= L4_2 then
      goto lbl_30
    end
  end
  L4_2 = 1
  ::lbl_30::
  if not L4_2 then
    L4_2 = 0
  end
  A0_2.state = L4_2
  L4_2 = A0_2.items
  if L4_2 then
    L4_2 = next
    L5_2 = A0_2.items
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      A0_2.items = nil
    end
  end
  L4_2 = A0_2.characters
  if L4_2 then
    L4_2 = next
    L5_2 = A0_2.characters
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      A0_2.characters = nil
    end
  end
  L4_2 = A0_2.lockpickDifficulty
  if L4_2 then
    L4_2 = next
    L5_2 = A0_2.lockpickDifficulty
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      A0_2.lockpickDifficulty = nil
    end
  end
  L4_2 = A0_2.groups
  if L4_2 then
    L4_2 = next
    L5_2 = A0_2.groups
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      A0_2.groups = nil
    end
  end
  L4_2 = A0_2.id
  if not L4_2 then
    L4_2 = PropertyManager
    L5_2 = L4_2
    L4_2 = L4_2.getPropertyById
    L6_2 = A0_2.propertyId
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = true
    L7_1 = L5_2
    L5_2 = A0_2.doors
    if L5_2 then
      L5_2 = 2
      if L5_2 then
        goto lbl_84
      end
    end
    L5_2 = 1
    ::lbl_84::
    L6_2 = 0
    if L4_2 then
      L7_2 = L4_2.type
      if "shell" ~= L7_2 then
        L7_2 = L4_2.type
        if "ipl" ~= L7_2 then
          goto lbl_108
        end
      end
      L7_2 = PlayerData
      L7_2 = L7_2.insideProperty
      if L7_2 then
        L7_2 = lib
        L7_2 = L7_2.notify
        L8_2 = {}
        L8_2.type = "error"
        L9_2 = locale
        L10_2 = "can_not_add_door_inside_property"
        L9_2 = L9_2(L10_2)
        L8_2.description = L9_2
        L7_2(L8_2)
        return
      end
    end
    ::lbl_108::
    L7_2 = lib
    L7_2 = L7_2.showTextUI
    L8_2 = locale
    L9_2 = "add_door_textui"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    repeat
      L7_2 = DisablePlayerFiring
      L8_2 = cache
      L8_2 = L8_2.playerId
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = DisableControlAction
      L8_2 = 0
      L9_2 = 25
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = lib
      L7_2 = L7_2.raycast
      L7_2 = L7_2.cam
      L8_2 = 17
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      L10_2 = L6_2 ~= L8_2
      L11_2 = L5_1
      L11_2 = L11_2[1]
      if L11_2 then
        L11_2 = L11_2.entity
      end
      if L10_2 and L6_2 ~= L11_2 then
        L12_2 = SetEntityDrawOutline
        L13_2 = L6_2
        L14_2 = false
        L12_2(L13_2, L14_2)
      end
      L6_2 = L8_2
      if L7_2 then
        L12_2 = DrawLaser
        L13_2 = Config
        L13_2 = L13_2.ColorTheme
        L13_2 = L13_2.laser
        L12_2(L13_2)
      end
      if L7_2 and L8_2 > 0 then
        L12_2 = GetEntityType
        L13_2 = L8_2
        L12_2 = L12_2(L13_2)
        if 3 == L12_2 and (1 == L5_2 or L11_2 ~= L8_2) then
          L12_2 = L2_1
          L13_2 = L8_2
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L13_2 = L4_2
            L12_2 = L4_2.isPointInside
            L14_2 = L9_2
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 then
              if L10_2 then
                L12_2 = SetEntityDrawOutline
                L13_2 = L8_2
                L14_2 = true
                L12_2(L13_2, L14_2)
                L12_2 = SetEntityDrawOutlineColor
                L13_2 = Config
                L13_2 = L13_2.ColorTheme
                L13_2 = L13_2.laser
                L13_2 = L13_2.r
                L14_2 = Config
                L14_2 = L14_2.ColorTheme
                L14_2 = L14_2.laser
                L14_2 = L14_2.g
                L15_2 = Config
                L15_2 = L15_2.ColorTheme
                L15_2 = L15_2.laser
                L15_2 = L15_2.b
                L16_2 = Config
                L16_2 = L16_2.ColorTheme
                L16_2 = L16_2.laser
                L16_2 = L16_2.a
                L12_2(L13_2, L14_2, L15_2, L16_2)
              end
              L12_2 = IsDisabledControlJustPressed
              L13_2 = 0
              L14_2 = 24
              L12_2 = L12_2(L13_2, L14_2)
              if L12_2 then
                L12_2 = L6_1
                L13_2 = L8_2
                L12_2(L13_2)
              end
            end
          end
        end
      end
      L12_2 = IsDisabledControlJustPressed
      L13_2 = 0
      L14_2 = 25
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 then
        L12_2 = SetEntityDrawOutline
        L13_2 = L8_2
        L14_2 = false
        L12_2(L13_2, L14_2)
        if not L11_2 then
          L12_2 = false
          L7_1 = L12_2
          L12_2 = lib
          L12_2 = L12_2.hideTextUI
          return L12_2()
        end
        L12_2 = SetEntityDrawOutline
        L13_2 = L11_2
        L14_2 = false
        L12_2(L13_2, L14_2)
        L12_2 = table
        L12_2 = L12_2.wipe
        L13_2 = L5_1
        L12_2(L13_2)
      end
      L12_2 = L5_1
      L12_2 = L12_2[L5_2]
    until L12_2
    L7_2 = lib
    L7_2 = L7_2.hideTextUI
    L7_2()
    L7_2 = SetEntityDrawOutline
    L8_2 = L5_1
    L8_2 = L8_2[1]
    L8_2 = L8_2.entity
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.doors
    if L7_2 then
      L7_2 = SetEntityDrawOutline
      L8_2 = L5_1
      L8_2 = L8_2[2]
      L8_2 = L8_2.entity
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = L5_1
      L7_2 = L7_2[1]
      L7_2.entity = nil
      L7_2 = L5_1
      L7_2 = L7_2[2]
      L7_2.entity = nil
      L7_2 = L5_1
      A0_2.doors = L7_2
    else
      L7_2 = L5_1
      L7_2 = L7_2[1]
      L7_2 = L7_2.model
      A0_2.model = L7_2
      L7_2 = L5_1
      L7_2 = L7_2[1]
      L7_2 = L7_2.coords
      A0_2.coords = L7_2
      L7_2 = L5_1
      L7_2 = L7_2[1]
      L7_2 = L7_2.heading
      A0_2.heading = L7_2
    end
  else
    L4_2 = A0_2.doors
    if L4_2 then
      L4_2 = 1
      L5_2 = 2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = A0_2.doors
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.coords
        L9_2 = A0_2.doors
        L9_2 = L9_2[L7_2]
        L10_2 = vector3
        L11_2 = L8_2.x
        L12_2 = L8_2.y
        L13_2 = L8_2.z
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L9_2.coords = L10_2
        L9_2 = A0_2.doors
        L9_2 = L9_2[L7_2]
        L9_2.entity = nil
      end
    else
      A0_2.entity = nil
    end
    L4_2 = vector3
    L5_2 = A0_2.coords
    L5_2 = L5_2.x
    L6_2 = A0_2.coords
    L6_2 = L6_2.y
    L7_2 = A0_2.coords
    L7_2 = L7_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2.coords = L4_2
    A0_2.distance = nil
    A0_2.zone = nil
  end
  L4_2 = false
  L7_1 = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "nolag_properties:server:editDoor"
  L6_2 = A0_2.id
  if not L6_2 then
    L6_2 = false
  end
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = table
  L4_2 = L4_2.wipe
  L5_2 = L5_1
  L4_2(L5_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "deleteDoor"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.id
  L3_2 = doors
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2.propertyId
  L5_2 = PropertyManager
  L6_2 = L5_2
  L5_2 = L5_2.getPropertyById
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.removeDoor
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = TriggerServerEvent
  L7_2 = "nolag_properties:server:editDoor"
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
end
L8_1(L9_1, L10_1)
