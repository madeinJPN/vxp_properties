local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2.getInventoryData
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Functions
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = {}
    L12_2.value = L8_2
    L13_2 = L9_2.label
    if not L13_2 then
      L13_2 = L8_2
    end
    L12_2.label = L13_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = A0_2.metadata
  L6_2 = L6_2.allowedPoints
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = #L4_2
    L11_2 = L11_2 + 1
    L4_2[L11_2] = L9_2
  end
  L5_2 = nil
  L6_2 = A0_2.owner
  if L6_2 then
    L6_2 = A0_2.ownerType
    if "user" == L6_2 then
      L6_2 = lib
      L6_2 = L6_2.callback
      L6_2 = L6_2.await
      L7_2 = "nolag_properties:server:getPlayerName"
      L8_2 = false
      L9_2 = A0_2.owner
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
  end
  L6_2 = nil
  L7_2 = A0_2.rentData
  if L7_2 then
    L7_2 = L7_2.identifier
  end
  if L7_2 then
    L7_2 = A0_2.rentData
    if L7_2 then
      L7_2 = L7_2.type
    end
    if "user" == L7_2 then
      L7_2 = lib
      L7_2 = L7_2.callback
      L7_2 = L7_2.await
      L8_2 = "nolag_properties:server:getPlayerName"
      L9_2 = false
      L10_2 = A0_2.rentData
      L10_2 = L10_2.identifier
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
    end
  end
  L7_2 = {}
  L8_2 = A0_2.id
  L7_2.id = L8_2
  L8_2 = A0_2.label
  L7_2.title = L8_2
  L8_2 = A0_2.address
  L7_2.address = L8_2
  L8_2 = A0_2.type
  L7_2.type = L8_2
  L9_2 = A0_2
  L8_2 = A0_2.getBlipCoords
  L8_2 = L8_2(L9_2)
  L7_2.coords = L8_2
  L8_2 = A0_2.price
  L7_2.price = L8_2
  L8_2 = A0_2.rentPrice
  L7_2.rentPrice = L8_2
  L8_2 = {}
  L8_2.slots = L1_2
  L8_2.weight = L2_2
  L7_2.inventoryData = L8_2
  L8_2 = A0_2.owner
  L7_2.owner = L8_2
  L8_2 = A0_2.ownerType
  L7_2.ownerType = L8_2
  L7_2.ownerDisplay = L5_2
  L8_2 = A0_2.rentData
  if L8_2 then
    L8_2 = L8_2.identifier
  end
  L7_2.renter = L8_2
  L8_2 = A0_2.rentData
  if L8_2 then
    L8_2 = L8_2.type
  end
  L7_2.renterType = L8_2
  L7_2.renterDisplay = L6_2
  L9_2 = A0_2
  L8_2 = A0_2.getInventories
  L8_2 = L8_2(L9_2)
  L7_2.inventories = L8_2
  L9_2 = A0_2
  L8_2 = A0_2.isOwned
  L8_2 = L8_2(L9_2)
  L7_2.isOwned = L8_2
  L9_2 = A0_2
  L8_2 = A0_2.isRented
  L8_2 = L8_2(L9_2)
  L7_2.isRented = L8_2
  L8_2 = A0_2.forSale
  L7_2.isForSale = L8_2
  L8_2 = A0_2.forRent
  L7_2.isForRent = L8_2
  L8_2 = A0_2.buildingId
  if nil ~= L8_2 then
    L8_2 = true
    if L8_2 then
      goto lbl_134
    end
  end
  L8_2 = false
  ::lbl_134::
  L7_2.isInsideBuilding = L8_2
  L8_2 = {}
  L8_2.all = L3_2
  L8_2.current = L4_2
  L7_2.interactablePoints = L8_2
  L8_2 = A0_2.metadata
  L8_2 = L8_2.yardZone
  if L8_2 then
    L8_2 = A0_2.metadata
    L8_2 = L8_2.yardZone
    L8_2 = L8_2.center
    if nil ~= L8_2 then
      L8_2 = true
      if L8_2 then
        goto lbl_153
      end
    end
  end
  L8_2 = false
  ::lbl_153::
  L7_2.yardZone = L8_2
  return L7_2
end
L1_1 = RegisterCommand
L2_1 = Config
L2_1 = L2_1.AdminPanelCommand
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:isPlayerAuthorized"
  L5_2 = false
  L6_2 = "allproperties"
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L5_2 = Framework
    L5_2 = L5_2.Notify
    L6_2 = {}
    L6_2.description = L4_2
    L6_2.type = "error"
    L5_2(L6_2)
    return
  end
  L5_2 = tonumber
  L6_2 = A1_2[1]
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = tonumber
  L7_2 = A1_2[2]
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 10
  end
  L7_2 = A1_2[3]
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = A1_2[4]
  if not L8_2 then
    L8_2 = ""
  end
  L9_2 = lib
  L9_2 = L9_2.print
  L9_2 = L9_2.debug
  L10_2 = "allproperties"
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = PropertyManager
  L10_2 = L9_2
  L9_2 = L9_2.getPropertiesCount
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L13_2 = PropertyManager
  L14_2 = L13_2
  L13_2 = L13_2.getPropertiesPaginated
  L15_2 = L5_2
  L16_2 = L6_2
  L17_2 = L7_2
  L18_2 = L8_2
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L14_2 = {}
  L15_2 = pairs
  L16_2 = L13_2
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
  for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
    L21_2 = #L14_2
    L21_2 = L21_2 + 1
    L22_2 = L0_1
    L23_2 = L20_2
    L22_2 = L22_2(L23_2)
    L14_2[L21_2] = L22_2
  end
  L15_2 = SendNUIMessage
  L16_2 = {}
  L16_2.action = "openAdminMenu"
  L17_2 = {}
  L17_2.properties = L14_2
  L17_2.totalProperties = L9_2
  L17_2.forSaleProperties = L10_2
  L17_2.forRentProperties = L11_2
  L17_2.rentedProperties = L12_2
  L16_2.data = L17_2
  L15_2(L16_2)
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterNUICallback
L2_1 = "allproperties"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:isPlayerAuthorized"
  L4_2 = false
  L5_2 = "allproperties"
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
    return
  end
  L4_2 = tonumber
  L5_2 = A0_2.page
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = tonumber
  L6_2 = A0_2.limit
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 10
  end
  L6_2 = A0_2.search
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = A0_2.filter
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = A0_2.typeFilter
  if not L8_2 then
    L8_2 = ""
  end
  L9_2 = lib
  L9_2 = L9_2.print
  L9_2 = L9_2.debug
  L10_2 = "allproperties"
  L11_2 = L4_2
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = L7_2
  L15_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = PropertyManager
  L10_2 = L9_2
  L9_2 = L9_2.getPropertiesCount
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = PropertyManager
  L11_2 = L10_2
  L10_2 = L10_2.getPropertiesPaginated
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L15_2 = L7_2
  L16_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = {}
  L12_2 = pairs
  L13_2 = L10_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = #L11_2
    L18_2 = L18_2 + 1
    L19_2 = L0_1
    L20_2 = L17_2
    L19_2 = L19_2(L20_2)
    L11_2[L18_2] = L19_2
  end
  L12_2 = A1_2
  L13_2 = {}
  L13_2.properties = L11_2
  L13_2.totalFilteredProperties = L9_2
  L12_2(L13_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "deleteProperty"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.deleteProperty
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A1_2
      L5_2 = true
      L4_2(L5_2)
      return
    end
  end
  L3_2 = A1_2
  L4_2 = false
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "transferProperty"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.transferProperty
    L5_2 = A0_2.type
    L6_2 = A0_2.identifier
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "editManagePoint"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.editManagePoint
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "editCreatedPolyZone"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.editPolyZone
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "deleteYardZone"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.removePolyZone
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "openInventory"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:forceOpenInventory"
  L4_2 = false
  L5_2 = A0_2.propertyId
  L6_2 = A0_2.inventoryId
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "updateInventory"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.updateInventoryConfig
    L5_2 = {}
    L6_2 = A0_2.slots
    L5_2.slots = L6_2
    L6_2 = A0_2.weight
    L5_2.weight = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "updateProperty"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2.propertyId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.updateSettings
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "propertyStats"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:isPlayerAuthorized"
  L4_2 = false
  L5_2 = "allproperties"
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
    return
  end
  L4_2 = PropertyManager
  L5_2 = L4_2
  L4_2 = L4_2.getPropertiesCount
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = pairs
  L11_2 = PropertyManager
  L12_2 = L11_2
  L11_2 = L11_2.getProperties
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2)
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.forSale
    if L16_2 then
      L8_2 = L8_2 + 1
    end
    L16_2 = L15_2.forRent
    if L16_2 then
      L9_2 = L9_2 + 1
    end
  end
  L10_2 = A1_2
  L11_2 = {}
  L11_2.totalProperties = L4_2
  L11_2.forSaleProperties = L8_2
  L11_2.forRentProperties = L9_2
  L11_2.rentedProperties = L7_2
  L10_2(L11_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "getAdminBuildings"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:isPlayerAuthorized"
  L4_2 = false
  L5_2 = "allproperties"
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
    return
  end
  L4_2 = tonumber
  L5_2 = A0_2.page
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = tonumber
  L6_2 = A0_2.limit
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 10
  end
  L6_2 = A0_2.search
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = lib
  L7_2 = L7_2.callback
  L7_2 = L7_2.await
  L8_2 = "nolag_properties:server:getAdminBuildings"
  L9_2 = false
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2
  L9_2 = L7_2
  L8_2(L9_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "setGaragePoint"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = BuildingManager
  L3_2 = L2_2
  L2_2 = L2_2.getBuildingById
  L4_2 = A0_2.buildingId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = GetPointCoordsCar
    L3_2 = L3_2()
    L5_2 = L2_2
    L4_2 = L2_2.setGaragePoint
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A1_2
    L5_2 = true
    L4_2(L5_2)
  end
  L3_2 = A1_2
  L4_2 = false
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "deleteGaragePoint"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = BuildingManager
  L3_2 = L2_2
  L2_2 = L2_2.getBuildingById
  L4_2 = A0_2.buildingId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setGaragePoint
    L5_2 = nil
    L3_2(L4_2, L5_2)
    L3_2 = A1_2
    L4_2 = true
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = false
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "deleteBuilding"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:deleteBuilding"
  L4_2 = false
  L5_2 = A0_2.buildingId
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "updateBuilding"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:updateBuilding"
  L4_2 = false
  L5_2 = A0_2.buildingId
  L6_2 = A0_2.label
  L7_2 = A0_2.name
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "waypointToBuilding"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = BuildingManager
  L3_2 = L2_2
  L2_2 = L2_2.getBuildingById
  L4_2 = A0_2.buildingId
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Building with id: "
    L5_2 = A0_2.buildingId
    L6_2 = " not found"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.setWaypoint
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
