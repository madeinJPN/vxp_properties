local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = nil
L2_1 = RegisterNUICallback
L3_1 = "notify"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Framework
  L2_2 = L2_2.Notify
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "property:rent"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.id
  L3_2 = A0_2.days
  L4_2 = A0_2.rentAs
  L5_2 = A0_2.autoRenew
  L6_2 = PropertyManager
  L7_2 = L6_2
  L6_2 = L6_2.getPropertyById
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L7_2 = lib
    L7_2 = L7_2.print
    L7_2 = L7_2.error
    L8_2 = "Property with id: "
    L9_2 = L2_2
    L10_2 = " not found"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    return
  end
  L8_2 = L6_2
  L7_2 = L6_2.rentProperty
  L9_2 = L4_2
  L10_2 = L3_2
  L11_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = A1_2
  L9_2 = L7_2
  L8_2(L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "property:continueRent"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = A0_2.rentDays
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.continueRent
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "property:cancelRent"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = A0_2.canceledFrom
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.cancelRent
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "property:setAutoRenew"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = A0_2.state
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.setAutoRenew
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "property:buy"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.id
  L3_2 = A0_2.buyAs
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "nolag_properties:server:property:buy"
  L7_2 = false
  L8_2 = L2_2
  L9_2 = L3_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L7_2 = Framework
    L7_2 = L7_2.Notify
    L8_2 = {}
    L9_2 = locale
    L10_2 = "property_bought_successfully"
    L11_2 = L4_2.label
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.description = L9_2
    L8_2.type = "success"
    L7_2(L8_2)
  else
    L7_2 = Framework
    L7_2 = L7_2.Notify
    L8_2 = {}
    L9_2 = locale
    L10_2 = "property_bought_failed"
    L9_2 = L9_2(L10_2)
    L8_2.title = L9_2
    L8_2.description = L6_2
    L8_2.type = "error"
    L7_2(L8_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "exitProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Exiting property"
  L4_2 = PlayerData
  L4_2 = L4_2.currentProperty
  L4_2 = L4_2.id
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = PlayerData
  L2_2 = L2_2.currentProperty
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.exit
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "enterProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.enter
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "manageProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.manageProperty
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "bellProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.doorBell
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "lockdownProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.policeLockdown
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "raidProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.policeRaid
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "toggleDoorLock"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.toggleDoorlock
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.openInteractMenu
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "openOffer"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.openOffer
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "lockpickProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.lockPickProperty
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = 1
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchDoors"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = lib
  L4_2 = L4_2.table
  L4_2 = L4_2.deepclone
  L5_2 = L3_2.doors
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = {}
    L12_2 = L10_2.coords
    L12_2 = L12_2.x
    L11_2.x = L12_2
    L12_2 = L10_2.coords
    L12_2 = L12_2.y
    L11_2.y = L12_2
    L12_2 = L10_2.coords
    L12_2 = L12_2.z
    L11_2.z = L12_2
    L10_2.coords = L11_2
    L11_2 = L10_2.doors
    if L11_2 then
      L11_2 = 1
      L12_2 = 2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L10_2.doors
        L15_2 = L15_2[L14_2]
        L16_2 = {}
        L17_2 = L10_2.doors
        L17_2 = L17_2[L14_2]
        L17_2 = L17_2.coords
        L17_2 = L17_2.x
        L16_2.x = L17_2
        L17_2 = L10_2.doors
        L17_2 = L17_2[L14_2]
        L17_2 = L17_2.coords
        L17_2 = L17_2.y
        L16_2.y = L17_2
        L17_2 = L10_2.doors
        L17_2 = L17_2[L14_2]
        L17_2 = L17_2.coords
        L17_2 = L17_2.z
        L16_2.z = L17_2
        L15_2.coords = L16_2
      end
    end
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchPoints"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = A0_2
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = "all"
  L5_2 = L3_2.type
  if "shell" ~= L5_2 then
    L5_2 = L3_2.type
    if "ipl" ~= L5_2 then
      goto lbl_32
    end
  end
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  if L5_2 then
    L5_2 = "inside"
    if L5_2 then
      goto lbl_32
      L4_2 = L5_2 or L4_2
    end
  end
  L4_2 = "outside"
  ::lbl_32::
  L5_2 = L3_2.metadata
  L5_2 = L5_2.points
  if L5_2 then
    L5_2 = lib
    L5_2 = L5_2.table
    L5_2 = L5_2.deepclone
    L6_2 = L3_2.metadata
    L6_2 = L6_2.points
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_46
    end
  end
  L5_2 = {}
  ::lbl_46::
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 then
      L13_2 = next
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        if "all" ~= L4_2 then
          L13_2 = Config
          L13_2 = L13_2.Functions
          L14_2 = L12_2.name
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.type
          if L13_2 ~= L4_2 then
            goto lbl_145
          end
        end
        L13_2 = true
        L12_2.whyCantMove = ""
        L12_2.canMove = L13_2
        L13_2 = Config
        L13_2 = L13_2.Functions
        L14_2 = L12_2.name
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.canMove
        if L13_2 then
          L13_2 = Config
          L13_2 = L13_2.Functions
          L14_2 = L12_2.name
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.canMove
          L14_2 = L3_2
          L15_2 = {}
          L16_2 = L3_2.id
          L17_2 = "_interactable_point_"
          L18_2 = L12_2.id
          L16_2 = L16_2 .. L17_2 .. L18_2
          L15_2.id = L16_2
          L13_2, L14_2 = L13_2(L14_2, L15_2)
          L12_2.whyCantMove = L14_2
          L12_2.canMove = L13_2
        end
        L13_2 = true
        L12_2.whyCantDelete = ""
        L12_2.canDelete = L13_2
        L13_2 = Config
        L13_2 = L13_2.Functions
        L14_2 = L12_2.name
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.canDelete
        if L13_2 then
          L13_2 = Config
          L13_2 = L13_2.Functions
          L14_2 = L12_2.name
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.canDelete
          L14_2 = L3_2
          L15_2 = {}
          L16_2 = L3_2.id
          L17_2 = "_interactable_point_"
          L18_2 = L12_2.id
          L16_2 = L16_2 .. L17_2 .. L18_2
          L15_2.id = L16_2
          L13_2, L14_2 = L13_2(L14_2, L15_2)
          L12_2.whyCantDelete = L14_2
          L12_2.canDelete = L13_2
        end
        L13_2 = {}
        L14_2 = L12_2.coords
        L14_2 = L14_2.x
        L13_2.x = L14_2
        L14_2 = L12_2.coords
        L14_2 = L14_2.y
        L13_2.y = L14_2
        L14_2 = L12_2.coords
        L14_2 = L14_2.z
        L13_2.z = L14_2
        L12_2.coords = L13_2
        L13_2 = Config
        L13_2 = L13_2.Functions
        L14_2 = L12_2.name
        L13_2 = L13_2[L14_2]
        L13_2 = L13_2.radius
        if not L13_2 then
          L13_2 = 2.0
        end
        L12_2.defaultInteractRange = L13_2
        L13_2 = #L6_2
        L13_2 = L13_2 + 1
        L6_2[L13_2] = L12_2
      end
    end
    ::lbl_145::
  end
  L7_2 = {}
  L8_2 = pairs
  L9_2 = Config
  L9_2 = L9_2.Functions
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    if "all" ~= L4_2 then
      L14_2 = L13_2.type
      if L14_2 ~= L4_2 then
    end
    else
      L14_2 = L3_2.metadata
      L14_2 = L14_2.allowedPoints
      if L14_2 then
        L14_2 = L3_2.metadata
        L14_2 = L14_2.allowedPoints
        L14_2 = L14_2[L12_2]
        if not L14_2 then
      end
      else
        L14_2 = L3_2.metadata
        L14_2 = L14_2.points
        if L14_2 then
          L14_2 = 0
          L15_2 = pairs
          L16_2 = L3_2.metadata
          L16_2 = L16_2.points
          L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
          for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
            L21_2 = L20_2.name
            if L21_2 == L12_2 then
              L14_2 = L14_2 + 1
            end
          end
          L15_2 = #L7_2
          L15_2 = L15_2 + 1
          L16_2 = {}
          L16_2.id = L12_2
          L17_2 = L13_2.label
          L16_2.label = L17_2
          L17_2 = L13_2.maxPerProperty
          if not L17_2 then
            L17_2 = 1
          end
          L17_2 = L14_2 >= L17_2
          L16_2.disabled = L17_2
          L17_2 = L13_2.radius
          if not L17_2 then
            L17_2 = 1.5
          end
          L16_2.defaultInteractRange = L17_2
          L17_2 = L13_2.type
          L16_2.type = L17_2
          L17_2 = L13_2.requireKeys
          L16_2.requireKeys = L17_2
          L7_2[L15_2] = L16_2
        else
          L14_2 = #L7_2
          L14_2 = L14_2 + 1
          L15_2 = {}
          L15_2.id = L12_2
          L16_2 = L13_2.label
          L15_2.label = L16_2
          L16_2 = L13_2.radius
          if not L16_2 then
            L16_2 = 1.5
          end
          L15_2.defaultInteractRange = L16_2
          L16_2 = L13_2.type
          L15_2.type = L16_2
          L16_2 = L13_2.requireKeys
          L15_2.requireKeys = L16_2
          L7_2[L14_2] = L15_2
        end
      end
    end
  end
  L8_2 = A1_2
  L9_2 = {}
  L9_2.current = L6_2
  L9_2.available = L7_2
  L8_2(L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchFurniture"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = "outside"
  L5_2 = L3_2.type
  if "shell" ~= L5_2 then
    L5_2 = L3_2.type
    if "ipl" ~= L5_2 then
      goto lbl_32
    end
  end
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  if L5_2 then
    L5_2 = "inside"
    if L5_2 then
      goto lbl_32
      L4_2 = L5_2 or L4_2
    end
  end
  L4_2 = "outside"
  ::lbl_32::
  L5_2 = L3_2.spawnedFurniture
  if L5_2 then
    L5_2 = L3_2.spawnedFurniture
    L5_2 = L5_2[L4_2]
    if L5_2 then
      goto lbl_41
    end
  end
  L5_2 = {}
  ::lbl_41::
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 then
      L13_2 = L12_2.obj
      if L13_2 then
        L13_2 = Config
        L13_2 = L13_2.InteractableProps
        L14_2 = L12_2.model
        L13_2 = L13_2[L14_2]
        if L13_2 then
          L13_2 = {}
          L14_2 = L12_2.id
          L13_2.id = L14_2
          L14_2 = L12_2.label
          L13_2.label = L14_2
          L14_2 = L12_2.model
          L13_2.model = L14_2
          L14_2 = L12_2.requireKeys
          L13_2.requireKeys = L14_2
          L14_2 = L12_2.price
          L13_2.price = L14_2
          L15_2 = L12_2
          L14_2 = L12_2.checkCanMove
          L14_2, L15_2 = L14_2(L15_2)
          L13_2.whyCantMove = L15_2
          L13_2.canMove = L14_2
          L15_2 = L12_2
          L14_2 = L12_2.checkCanDelete
          L14_2, L15_2 = L14_2(L15_2)
          L13_2.whyCantDelete = L15_2
          L13_2.canDelete = L14_2
          L14_2 = {}
          L15_2 = L12_2.coords
          L15_2 = L15_2.x
          L14_2.x = L15_2
          L15_2 = L12_2.coords
          L15_2 = L15_2.y
          L14_2.y = L15_2
          L15_2 = L12_2.coords
          L15_2 = L15_2.z
          L14_2.z = L15_2
          L13_2.coords = L14_2
          L13_2.env = L4_2
          L14_2 = #L6_2
          L14_2 = L14_2 + 1
          L6_2[L14_2] = L13_2
        end
      end
    end
  end
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "createPoint"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = A0_2.id
  L2_2.name = L3_2
  L3_2 = A0_2.label
  L2_2.label = L3_2
  L3_2 = A0_2.interactRange
  L2_2.interactRange = L3_2
  L3_2 = A0_2.requireKeys
  L2_2.requireKeys = L3_2
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = A0_2.property_id
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = A0_2.property_id
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.addInteractablePoint
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "updatePoint"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.property_id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Property with id: "
    L5_2 = A0_2.property_id
    L6_2 = " not found"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Editing point: "
  L5_2 = A0_2.id
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = A0_2.id
  L3_2.id = L4_2
  L4_2 = A0_2.name
  L3_2.name = L4_2
  L4_2 = A0_2.label
  L3_2.label = L4_2
  L4_2 = vector4
  L5_2 = A0_2.coords
  L5_2 = L5_2.x
  L6_2 = A0_2.coords
  L6_2 = L6_2.y
  L7_2 = A0_2.coords
  L7_2 = L7_2.z
  L8_2 = A0_2.coords
  L8_2 = L8_2.w
  if not L8_2 then
    L8_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.coords = L4_2
  L4_2 = A0_2.requireKeys
  L3_2.requireKeys = L4_2
  L4_2 = A0_2.interactRange
  L3_2.interactRange = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.updateInteractablePoint
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "updateFurniture"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.property_id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Property with id: "
    L5_2 = A0_2.property_id
    L6_2 = " not found"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Editing furniture: "
  L5_2 = A0_2.id
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = A0_2.id
  L3_2.id = L4_2
  L4_2 = A0_2.env
  L3_2.env = L4_2
  L4_2 = A0_2.label
  L3_2.label = L4_2
  L4_2 = A0_2.requireKeys
  L3_2.requireKeys = L4_2
  L4_2 = L2_2.spawnedFurniture
  L5_2 = L3_2.env
  L4_2 = L4_2[L5_2]
  L5_2 = L3_2.id
  L4_2 = L4_2[L5_2]
  L5_2 = L3_2.label
  L4_2.label = L5_2
  L5_2 = L3_2.requireKeys
  L4_2.requireKeys = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.update
  L7_2 = {}
  L8_2 = L4_2.coords
  L7_2.coords = L8_2
  L8_2 = L4_2.rotation
  L7_2.rotation = L8_2
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "nolag_properties:server:updateFurniture"
  L7_2 = L2_2.id
  L8_2 = L3_2.env
  L9_2 = L3_2.id
  L10_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "deletePoint"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.property_id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Property with id: "
    L5_2 = A0_2.property_id
    L6_2 = " not found"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = A1_2
    L4_2 = false
    return L3_2(L4_2)
  end
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Deleting point: "
  L5_2 = A0_2.id
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.deleteInteractablePoint
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.id = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchPropertyGenerals"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Property with id: "
    L5_2 = A0_2
    L6_2 = " not found"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = {}
  L3_2.propertyId = A0_2
  L4_2 = L2_2.price
  L3_2.price = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.getTotalFurniture
  L4_2 = L4_2(L5_2)
  L3_2.totalFurniture = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.getTotalKeyHolders
  L4_2 = L4_2(L5_2)
  L3_2.totalKeyHolders = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.getTotalInteractablePoints
  L4_2 = L4_2(L5_2)
  L3_2.totalInteractablePoints = L4_2
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchPropertySettings"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.getMetadata
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L5_2.propertyId = L2_2
  L6_2 = L3_2.price
  L5_2.price = L6_2
  L5_2.priceMin = 1
  L5_2.priceMax = 1.0E24
  L6_2 = L3_2.rentPrice
  L5_2.rentPrice = L6_2
  L6_2 = L3_2.label
  L5_2.name = L6_2
  L6_2 = L4_2.description
  L5_2.description = L6_2
  L6_2 = L3_2.forSale
  L5_2.forSale = L6_2
  L6_2 = L3_2.forRent
  L5_2.forRent = L6_2
  L6_2 = L4_2.tags
  L5_2.tags = L6_2
  L6_2 = L4_2.images
  L5_2.images = L6_2
  L6_2 = Config
  L6_2 = L6_2.Tags
  L5_2.propertyTags = L6_2
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "fetchPropertyRenters"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.propertyId
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:getRenters"
  L5_2 = false
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "forceSaleProperty"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.sellProperty
  L4_2(L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "updatePropertySettings"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.updateSettings
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "updateKeyHolderAccess"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.updateKeyHolderAccess
  L6_2 = {}
  L7_2 = A0_2.identifier
  L6_2.identifier = L7_2
  L7_2 = A0_2.locks
  L6_2.locks = L7_2
  L4_2(L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getKeyHolderInfo"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.getKeyHolderInfo
  L6_2 = A0_2.identifier
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = lib
  L5_2 = L5_2.print
  L5_2 = L5_2.debug
  L6_2 = "Key holder info: "
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getCurrentPlayerPermissions"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = {}
    L5_2.locks = L6_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.getKeyHolderInfo
  L6_2 = PlayerData
  L6_2 = L6_2.identifier
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = lib
  L5_2 = L5_2.print
  L5_2 = L5_2.debug
  L6_2 = "Current player permission info: "
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "refreshManagePropertyData"
  L3_2 = {}
  L3_2.propertyId = A0_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L3_1 = RegisterNetEvent
L4_1 = "nolag_properties:client:propertyDataUpdated"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "managePropertyMenuOpened"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2)
  L1_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "managePropertyMenuClosed"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = nil
  L1_1 = L2_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "fetchClosestPlayers"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:getClosestPlayers"
  L5_2 = false
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "fetchKeyHolders"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "nolag_properties:server:getKeyHoldersWithNames"
  L6_2 = false
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L3_2
  L5_2 = L3_2.getLocksInfo
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.keyHolders = L4_2
  L7_2.locksInfo = L5_2
  L6_2(L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "addKeyHolder"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.propertyId
  L3_2 = A0_2.identifier
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.addKeyHolder
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "removeKeyHolder"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = A0_2.identifier
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Property with id: "
    L7_2 = L2_2
    L8_2 = " not found"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.removeKeyHolder
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "removeAllKeyHolders"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.removeAllKeyHolders
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "manageFurniture"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.furniture
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "manageIPL"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.type
  if "ipl" ~= L4_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " is not an IPL"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.IPL
  if not L4_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " does not have an IPL"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.IPL
  L5_2 = L4_2
  L4_2 = L4_2.edit
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "setWaypoint"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.setWaypoint
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "addSecurityCam"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.addCamera
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "removeSecurityCam"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.removeCamera
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "openSecurityCam"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.openCamera
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "getSecurityLogs"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.propertyId
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Property with id: "
    L6_2 = L2_2
    L7_2 = " not found"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = A1_2
  L5_2 = {}
  L6_2 = L3_2.metadata
  L6_2 = L6_2.securityLogs
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.logs = L6_2
  L7_2 = L3_2
  L6_2 = L3_2.hasSecurityCam
  L6_2 = L6_2(L7_2)
  L5_2.hasSecurityCam = L6_2
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "toggle-NuiFocusKeepInput"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SetNuiFocusKeepInput
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
