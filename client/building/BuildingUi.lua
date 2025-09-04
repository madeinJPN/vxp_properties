local L0_1, L1_1, L2_1
L0_1 = RegisterNUICallback
L1_1 = "filterProperties"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = A0_2.ownedByMe
  L3_2 = A0_2.rentedByMe
  L4_2 = A0_2.forSale
  L5_2 = A0_2.forRent
  L6_2 = A0_2.hasKeys
  L7_2 = A0_2.tags
  L8_2 = A0_2.search
  L9_2 = 1
  L10_2 = Config
  L10_2 = L10_2.PropertiesPerPage
  L11_2 = A0_2.buildingId
  L12_2 = BuildingManager
  L13_2 = L12_2
  L12_2 = L12_2.getBuildingById
  L14_2 = tonumber
  L15_2 = L11_2
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L14_2(L15_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  if not L12_2 then
    return
  end
  L13_2 = L12_2.properties
  L14_2 = {}
  L15_2 = pairs
  L16_2 = L13_2
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
  for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
    L22_2 = L20_2
    L21_2 = L20_2.isOwner
    L21_2 = not L2_2 or L21_2
    L23_2 = L20_2
    L22_2 = L20_2.isRenter
    L22_2 = not L3_2 or L22_2
    L23_2 = not L4_2 or L23_2
    L24_2 = not L5_2 or L24_2
    L25_2 = string
    L25_2 = L25_2.find
    L26_2 = string
    L26_2 = L26_2.lower
    L27_2 = L20_2.label
    L26_2 = L26_2(L27_2)
    L27_2 = string
    L27_2 = L27_2.lower
    L28_2 = L8_2
    L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
    L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
    if not L25_2 then
      L25_2 = string
      L25_2 = L25_2.find
      L26_2 = tostring
      L27_2 = L20_2.id
      L26_2 = L26_2(L27_2)
      L27_2 = string
      L27_2 = L27_2.lower
      L28_2 = L8_2
      L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
      L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
      if not L25_2 then
        L25_2 = L20_2.owner
        if L25_2 then
          L25_2 = string
          L25_2 = L25_2.find
          L26_2 = string
          L26_2 = L26_2.lower
          L27_2 = L20_2.owner
          L26_2 = L26_2(L27_2)
          L27_2 = string
          L27_2 = L27_2.lower
          L28_2 = L8_2
          L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
          L25_2 = not L8_2 or L25_2
        end
      end
    end
    L27_2 = L20_2
    L26_2 = L20_2.hasKey
    L26_2 = not L6_2 or L26_2
    if L21_2 and L22_2 and L23_2 and L24_2 and L25_2 and L26_2 then
      L27_2 = #L14_2
      L27_2 = L27_2 + 1
      L14_2[L27_2] = L20_2
    end
  end
  L12_2.filterProperties = L14_2
  L15_2 = L9_2 - 1
  L15_2 = L15_2 * L10_2
  L15_2 = L15_2 + 1
  L16_2 = math
  L16_2 = L16_2.min
  L17_2 = L15_2 + L10_2
  L17_2 = L17_2 - 1
  L18_2 = L12_2.filterProperties
  L18_2 = #L18_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = {}
  L18_2 = 0
  L19_2 = pairs
  L20_2 = L12_2.filterProperties
  L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
  for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
    L18_2 = L18_2 + 1
    if L15_2 <= L18_2 and L16_2 >= L18_2 then
      L25_2 = false
      L26_2 = Config
      L26_2 = L26_2.Building
      L26_2 = L26_2.OwnerDisplay
      if L26_2 then
        L26_2 = Config
        L26_2 = L26_2.Building
        L26_2 = L26_2.OwnerDisplayType
        if "identifier" == L26_2 then
          L25_2 = L24_2.owner
        else
          L26_2 = Config
          L26_2 = L26_2.Building
          L26_2 = L26_2.OwnerDisplayType
          if "type" == L26_2 then
            L25_2 = L24_2.ownerType
          else
            L26_2 = Config
            L26_2 = L26_2.Building
            L26_2 = L26_2.OwnerDisplayType
            if "name" == L26_2 then
              L26_2 = L24_2.ownerType
              if "user" == L26_2 then
                L26_2 = lib
                L26_2 = L26_2.callback
                L26_2 = L26_2.await
                L27_2 = "nolag_properties:server:getPlayerName"
                L28_2 = false
                L29_2 = L24_2.owner
                L26_2 = L26_2(L27_2, L28_2, L29_2)
                if L26_2 then
                  goto lbl_194
                  L25_2 = L26_2 or L25_2
                end
              end
              L25_2 = L24_2.owner
            end
          end
        end
      end
      ::lbl_194::
      L26_2 = #L17_2
      L26_2 = L26_2 + 1
      L27_2 = {}
      L28_2 = L24_2.id
      L27_2.id = L28_2
      L28_2 = L24_2.label
      L27_2.title = L28_2
      L28_2 = L24_2.type
      L27_2.type = L28_2
      L28_2 = L24_2.owner
      L27_2.owner = L28_2
      L27_2.ownerDisplay = L25_2
      L29_2 = L24_2
      L28_2 = L24_2.getMetadata
      L28_2 = L28_2(L29_2)
      L28_2 = L28_2.images
      L28_2 = L28_2[1]
      if not L28_2 then
        L28_2 = "https://via.placeholder.com/150"
      end
      L27_2.image = L28_2
      L28_2 = PlayerData
      L28_2 = L28_2.insideProperty
      L27_2.inside = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.hasKey
      L28_2 = L28_2(L29_2)
      L27_2.hasKey = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.getDoorLockedState
      L28_2 = L28_2(L29_2)
      L27_2.doorLocked = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.isDoorBlocked
      L28_2 = L28_2(L29_2)
      L27_2.doorBlocked = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.isAbleToManage
      L28_2 = L28_2(L29_2)
      L27_2.isAbleToManage = L28_2
      L28_2 = Framework
      L28_2 = L28_2.isPlayerAuthorizedToLockdown
      L28_2 = L28_2()
      L27_2.isAbleToLockdown = L28_2
      L28_2 = Framework
      L28_2 = L28_2.isPlayerAuthorizedToRaid
      L28_2 = L28_2()
      L27_2.isAbleToBreach = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.showOffer
      L28_2 = L28_2(L29_2)
      L27_2.showOffer = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.displayOption
      L30_2 = "lockpick"
      L28_2 = L28_2(L29_2, L30_2)
      L27_2.showLockpick = L28_2
      L29_2 = L24_2
      L28_2 = L24_2.isOwner
      L28_2 = L28_2(L29_2)
      L27_2.isOwner = L28_2
      L17_2[L26_2] = L27_2
    end
  end
  L12_2.page = L9_2
  L19_2 = SendNUIMessage
  L20_2 = {}
  L20_2.action = "updatePropertiesInBuilding"
  L21_2 = {}
  L21_2.properties = L17_2
  L22_2 = L12_2.filterProperties
  L22_2 = #L22_2
  L21_2.totalProperties = L22_2
  L21_2.page = L9_2
  L20_2.data = L21_2
  L19_2(L20_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getProperties"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = tonumber
  L3_2 = A0_2.page
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.PropertiesPerPage
  L4_2 = A0_2.buildingId
  L5_2 = BuildingManager
  L6_2 = L5_2
  L5_2 = L5_2.getBuildingById
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = lib
    L6_2 = L6_2.print
    L6_2 = L6_2.debug
    L7_2 = "Building not found"
    L6_2(L7_2)
    return
  end
  L6_2 = L2_2 - 1
  L6_2 = L6_2 * L3_2
  L6_2 = L6_2 + 1
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = L6_2 + L3_2
  L8_2 = L8_2 - 1
  L9_2 = L5_2.filterProperties
  L9_2 = #L9_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = {}
  L9_2 = 0
  L10_2 = pairs
  L11_2 = L5_2.filterProperties
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L9_2 = L9_2 + 1
    if L6_2 <= L9_2 and L7_2 >= L9_2 then
      L16_2 = false
      L17_2 = Config
      L17_2 = L17_2.Building
      L17_2 = L17_2.OwnerDisplay
      if L17_2 then
        L17_2 = Config
        L17_2 = L17_2.Building
        L17_2 = L17_2.OwnerDisplayType
        if "identifier" == L17_2 then
          L16_2 = L15_2.owner
        else
          L17_2 = Config
          L17_2 = L17_2.Building
          L17_2 = L17_2.OwnerDisplayType
          if "type" == L17_2 then
            L16_2 = L15_2.ownerType
          else
            L17_2 = Config
            L17_2 = L17_2.Building
            L17_2 = L17_2.OwnerDisplayType
            if "name" == L17_2 then
              L17_2 = L15_2.ownerType
              if "user" == L17_2 then
                L17_2 = lib
                L17_2 = L17_2.callback
                L17_2 = L17_2.await
                L18_2 = "nolag_properties:server:getPlayerName"
                L19_2 = false
                L20_2 = L15_2.owner
                L17_2 = L17_2(L18_2, L19_2, L20_2)
                if L17_2 then
                  goto lbl_88
                  L16_2 = L17_2 or L16_2
                end
              end
              L16_2 = L15_2.owner
            end
          end
        end
      end
      ::lbl_88::
      L17_2 = #L8_2
      L17_2 = L17_2 + 1
      L18_2 = {}
      L19_2 = L15_2.id
      L18_2.id = L19_2
      L19_2 = L15_2.label
      L18_2.title = L19_2
      L19_2 = L15_2.type
      L18_2.type = L19_2
      L19_2 = L15_2.owner
      L18_2.owner = L19_2
      L18_2.ownerDisplay = L16_2
      L20_2 = L15_2
      L19_2 = L15_2.getMetadata
      L19_2 = L19_2(L20_2)
      L19_2 = L19_2.images
      L19_2 = L19_2[1]
      if not L19_2 then
        L19_2 = "https://via.placeholder.com/150"
      end
      L18_2.image = L19_2
      L19_2 = PlayerData
      L19_2 = L19_2.insideProperty
      L18_2.inside = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.hasKey
      L19_2 = L19_2(L20_2)
      L18_2.hasKey = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.getDoorLockedState
      L19_2 = L19_2(L20_2)
      L18_2.doorLocked = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.isDoorBlocked
      L19_2 = L19_2(L20_2)
      L18_2.doorBlocked = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.isAbleToManage
      L19_2 = L19_2(L20_2)
      L18_2.isAbleToManage = L19_2
      L19_2 = Framework
      L19_2 = L19_2.isPlayerAuthorizedToLockdown
      L19_2 = L19_2()
      L18_2.isAbleToLockdown = L19_2
      L19_2 = Framework
      L19_2 = L19_2.isPlayerAuthorizedToRaid
      L19_2 = L19_2()
      L18_2.isAbleToBreach = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.showOffer
      L19_2 = L19_2(L20_2)
      L18_2.showOffer = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.displayOption
      L21_2 = "lockpick"
      L19_2 = L19_2(L20_2, L21_2)
      L18_2.showLockpick = L19_2
      L20_2 = L15_2
      L19_2 = L15_2.isOwner
      L19_2 = L19_2(L20_2)
      L18_2.isOwner = L19_2
      L8_2[L17_2] = L18_2
    end
  end
  L5_2.page = L2_2
  L10_2 = SendNUIMessage
  L11_2 = {}
  L11_2.action = "updatePropertiesInBuilding"
  L12_2 = {}
  L12_2.properties = L8_2
  L11_2.data = L12_2
  L10_2(L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "buildingInteractWithProperty"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.buildingId
  L3_2 = A0_2.propertyId
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertyById
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = BuildingManager
  L6_2 = L5_2
  L5_2 = L5_2.getBuildingById
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L4_2 then
    L6_2 = lib
    L6_2 = L6_2.print
    L6_2 = L6_2.error
    L7_2 = "Property with id: "
    L8_2 = L3_2
    L9_2 = " not found"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L6_2(L7_2)
    return
  end
  if not L5_2 then
    L6_2 = lib
    L6_2 = L6_2.print
    L6_2 = L6_2.error
    L7_2 = "Building with id: "
    L8_2 = L2_2
    L9_2 = " not found"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L6_2(L7_2)
    return
  end
  L6_2 = A0_2.action
  if "enter" == L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.enter
    L6_2(L7_2)
  else
    L6_2 = A0_2.action
    if "toggleDoorlock" == L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.toggleDoorlock
      L6_2(L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.refreshInteractMenuUI
      L6_2(L7_2)
    else
      L6_2 = A0_2.action
      if "ringDoorbell" == L6_2 then
        L7_2 = L4_2
        L6_2 = L4_2.doorBell
        L6_2(L7_2)
      else
        L6_2 = A0_2.action
        if "lockdown" == L6_2 then
          L7_2 = L4_2
          L6_2 = L4_2.policeLockdown
          L6_2(L7_2)
        else
          L6_2 = A0_2.action
          if "breach" == L6_2 then
            L7_2 = L4_2
            L6_2 = L4_2.policeRaid
            L6_2(L7_2)
          end
        end
      end
    end
  end
  L6_2 = A1_2
  L7_2 = "ok"
  L6_2(L7_2)
end
L0_1(L1_1, L2_1)
