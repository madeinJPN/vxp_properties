local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = nil
L1_1 = nil
L2_1 = lib
L2_1 = L2_1.checkDependency
L3_1 = "ox_lib"
L4_1 = "3.30.4"
L5_1 = true
L2_1 = L2_1(L3_1, L4_1, L5_1)
if not L2_1 then
  L2_1 = true
  L1_1 = "ox_lib version 3.30.4 or higher is required"
  L0_1 = L2_1
else
  L2_1 = lib
  L2_1 = L2_1.checkDependency
  L3_1 = "oxmysql"
  L4_1 = "2.9.0"
  L5_1 = true
  L2_1 = L2_1(L3_1, L4_1, L5_1)
  if not L2_1 then
    L2_1 = true
    L1_1 = "oxmysql version 2.9.0 or higher is required"
    L0_1 = L2_1
  end
end
if L0_1 then
  L2_1 = CreateThread
  function L3_1()
    local L0_2, L1_2
    while true do
      L0_2 = L0_1
      if not L0_2 then
        break
      end
      L0_2 = lib
      L0_2 = L0_2.print
      L0_2 = L0_2.error
      L1_2 = L1_1
      L0_2(L1_2)
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
    end
  end
  L2_1(L3_1)
end
L2_1 = {}
PlayersInProperties = L2_1
L2_1 = {}
LoadedProperties = L2_1
L2_1 = {}
LoadedPropertiesIds = L2_1
L2_1 = {}
LoadedBuildings = L2_1
L2_1 = {}
LoadedBuildingsIds = L2_1
L2_1 = AddEventHandler
L3_1 = "onResourceStart"
function L4_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = LoadInventoryWardrobeObjects
  L1_2()
end
L2_1(L3_1, L4_1)
L2_1 = false
L3_1 = 0
L4_1 = require
L5_1 = "server.Hooks"
L4_1 = L4_1(L5_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = LoadedPropertiesIds
  L2_2 = LoadedPropertiesIds
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L1_2 = true
  L2_1 = L1_2
  L1_2 = L3_1
  L1_2 = L1_2 + 1
  L3_1 = L1_2
  L1_2 = L3_1
  L2_2 = SetTimeout
  L3_2 = 2000
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L1_3 = L3_1
    if L0_3 == L1_3 then
      L0_3 = L2_1
      if L0_3 then
        L0_3 = lib
        L0_3 = L0_3.print
        L0_3 = L0_3.debug
        L1_3 = "Syncing properties to global state"
        L0_3(L1_3)
        L0_3 = GlobalState
        L1_3 = LoadedPropertiesIds
        L0_3.properties = L1_3
        L0_3 = false
        L2_1 = L0_3
      end
    end
  end
  L2_2(L3_2, L4_2)
end
AddLoadedProperty = L5_1
L5_1 = false
L6_1 = 0
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = LoadedBuildingsIds
  L2_2 = LoadedBuildingsIds
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L1_2 = true
  L5_1 = L1_2
  L1_2 = L6_1
  L1_2 = L1_2 + 1
  L6_1 = L1_2
  L1_2 = L6_1
  L2_2 = SetTimeout
  L3_2 = 2000
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L1_3 = L6_1
    if L0_3 == L1_3 then
      L0_3 = L5_1
      if L0_3 then
        L0_3 = lib
        L0_3 = L0_3.print
        L0_3 = L0_3.debug
        L1_3 = "Syncing buildings to global state"
        L0_3(L1_3)
        L0_3 = GlobalState
        L1_3 = LoadedBuildingsIds
        L0_3.buildings = L1_3
        L0_3 = false
        L5_1 = L0_3
      end
    end
  end
  L2_2(L3_2, L4_2)
end
AddLoadedBuilding = L7_1
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "nolag_properties:server:getKeyHoldersWithNames"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.propertyData
  L4_2 = L4_2.keyHolders
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = {}
    L11_2 = GetOfflinePlayerName
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    L10_2.name = L11_2
    L10_2.identifier = L7_2
    L2_2[L9_2] = L10_2
  end
  return L2_2
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "nolag_properties:server:buyFurniture"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.getAccount
    L5_2 = "bank"
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.money
    if A1_2 <= L4_2 then
      L4_2 = L3_2.removeAccountMoney
      L5_2 = "bank"
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = true
      return L4_2
    end
  end
  L4_2 = false
  return L4_2
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "nolag_properties:server:storeFurniture"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    L6_2 = "Player not found"
    return L5_2, L6_2
  end
  L5_2 = LoadedProperties
  L5_2 = L5_2[A1_2]
  if not L5_2 then
    L6_2 = false
    L7_2 = "Property not found"
    return L6_2, L7_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.playerHaveKey
  L8_2 = L4_2
  L9_2 = "manage_property_furniture"
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    L6_2 = false
    L7_2 = "You do not have the key to manage this property"
    return L6_2, L7_2
  end
  L6_2 = MySQL
  L6_2 = L6_2.single
  L6_2 = L6_2.await
  L7_2 = "SELECT 1 FROM properties_furniture WHERE propertyId = ? AND furnitureId = ? AND environment = ?"
  L8_2 = {}
  L9_2 = A1_2
  L10_2 = A3_2
  L11_2 = A2_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = MySQL
    L7_2 = L7_2.query
    L7_2 = L7_2.await
    L8_2 = "UPDATE properties_furniture SET stored = 1 WHERE propertyId = ? AND furnitureId = ? AND environment = ?"
    L9_2 = {}
    L10_2 = A1_2
    L11_2 = A3_2
    L12_2 = A2_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L7_2(L8_2, L9_2)
    L7_2 = TriggerClientEvent
    L8_2 = "nolag_properties:client:updateFurniture"
    L9_2 = -1
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = nil
    L14_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = true
    return L7_2
  end
  L7_2 = false
  L8_2 = "Furniture item not found"
  return L7_2, L8_2
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "nolag_properties:server:updateFurniture"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L4_2 = source
  L5_2 = Framework
  L5_2 = L5_2.GetPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L6_2 = LoadedProperties
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    return
  end
  L8_2 = L6_2
  L7_2 = L6_2.playerHaveKey
  L9_2 = L5_2
  L10_2 = "manage_property_furniture"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    return
  end
  L7_2 = lib
  L7_2 = L7_2.print
  L7_2 = L7_2.debug
  L8_2 = "Updating furniture for property %s, type %s, index %s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L7_2 = MySQL
  L7_2 = L7_2.single
  L7_2 = L7_2.await
  L8_2 = "SELECT price, label FROM properties_furniture WHERE propertyId = ? AND furnitureId = ? AND environment = ?"
  L9_2 = {}
  L10_2 = A0_2
  L11_2 = A2_2
  L12_2 = A1_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    if A3_2 then
      L8_2 = {}
      L9_2 = {}
      L10_2 = #L8_2
      L10_2 = L10_2 + 1
      L8_2[L10_2] = "stored = NULL"
      L10_2 = A3_2.coords
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "coords_x = ?, coords_y = ?, coords_z = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.coords
        L11_2 = L11_2.x
        L9_2[L10_2] = L11_2
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.coords
        L11_2 = L11_2.y
        L9_2[L10_2] = L11_2
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.coords
        L11_2 = L11_2.z
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.rotation
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "rotation_x = ?, rotation_y = ?, rotation_z = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.rotation
        L11_2 = L11_2.x
        L9_2[L10_2] = L11_2
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.rotation
        L11_2 = L11_2.y
        L9_2[L10_2] = L11_2
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.rotation
        L11_2 = L11_2.z
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.price
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "price = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.price
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.model
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "model = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.model
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.type
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "type = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.type
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.label
      if L10_2 then
        L10_2 = #L8_2
        L10_2 = L10_2 + 1
        L8_2[L10_2] = "label = ?"
        L10_2 = #L9_2
        L10_2 = L10_2 + 1
        L11_2 = A3_2.label
        L9_2[L10_2] = L11_2
      end
      L10_2 = A3_2.requireKeys
      if L10_2 then
        L10_2 = LoadedProperties
        L10_2 = L10_2[A0_2]
        L11_2 = L10_2.propertyData
        L11_2 = L11_2.additionalLocks
        L12_2 = false
        L13_2 = ipairs
        L14_2 = L11_2
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
          L19_2 = L18_2.id
          L20_2 = "furni_"
          L21_2 = A2_2
          L20_2 = L20_2 .. L21_2
          if L19_2 == L20_2 then
            L12_2 = true
            break
          end
        end
        if not L12_2 then
          L13_2 = #L11_2
          L13_2 = L13_2 + 1
          L14_2 = {}
          L15_2 = "furni_"
          L16_2 = A2_2
          L15_2 = L15_2 .. L16_2
          L14_2.id = L15_2
          L15_2 = A3_2.label
          L14_2.label = L15_2
          L11_2[L13_2] = L14_2
        end
        L14_2 = L10_2
        L13_2 = L10_2.save
        L13_2(L14_2)
        L13_2 = #L8_2
        L13_2 = L13_2 + 1
        L8_2[L13_2] = "require_keys = 1"
      else
        L10_2 = LoadedProperties
        L10_2 = L10_2[A0_2]
        L11_2 = L10_2.propertyData
        L11_2 = L11_2.additionalLocks
        L12_2 = ipairs
        L13_2 = L11_2
        L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
        for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
          L18_2 = L17_2.id
          L19_2 = "furni_"
          L20_2 = A2_2
          L19_2 = L19_2 .. L20_2
          if L18_2 == L19_2 then
            L11_2[L16_2] = nil
            break
          end
        end
        L13_2 = L10_2
        L12_2 = L10_2.save
        L12_2(L13_2)
        L12_2 = #L8_2
        L12_2 = L12_2 + 1
        L8_2[L12_2] = "require_keys = NULL"
      end
      L10_2 = #L9_2
      L10_2 = L10_2 + 1
      L9_2[L10_2] = A0_2
      L10_2 = #L9_2
      L10_2 = L10_2 + 1
      L9_2[L10_2] = A2_2
      L10_2 = #L9_2
      L10_2 = L10_2 + 1
      L9_2[L10_2] = A1_2
      L10_2 = string
      L10_2 = L10_2.format
      L11_2 = "UPDATE properties_furniture SET %s WHERE propertyId = ? AND furnitureId = ? AND environment = ?"
      L12_2 = table
      L12_2 = L12_2.concat
      L13_2 = L8_2
      L14_2 = ", "
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2, L14_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L11_2 = MySQL
      L11_2 = L11_2.query
      L11_2 = L11_2.await
      L12_2 = L10_2
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    else
      L8_2 = MySQL
      L8_2 = L8_2.query
      L8_2 = L8_2.await
      L9_2 = "DELETE FROM properties_furniture WHERE propertyId = ? AND furnitureId = ? AND environment = ?"
      L10_2 = {}
      L11_2 = A0_2
      L12_2 = A2_2
      L13_2 = A1_2
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L10_2[3] = L13_2
      L8_2(L9_2, L10_2)
      L8_2 = L7_2.price
      L9_2 = FurnitureConfig
      L9_2 = L9_2.SellPercentage
      if not L9_2 then
        L9_2 = 50
      end
      L8_2 = L8_2 * L9_2
      L8_2 = L8_2 / 100
      if L8_2 > 0 then
        L9_2 = L5_2.addAccountMoney
        L10_2 = "bank"
        L11_2 = L8_2
        L12_2 = "Sold furniture"
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = TriggerClientEvent
        L10_2 = "nolag_properties:client:notify"
        L11_2 = L4_2
        L12_2 = {}
        L12_2.title = "Furniture Tool"
        L13_2 = locale
        L14_2 = "furniture_sold"
        L15_2 = L7_2.label
        L16_2 = L8_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2.description = L13_2
        L12_2.type = "success"
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  else
    if "inside" == A1_2 then
      L8_2 = Config
      L8_2 = L8_2.MaxFurnitureInside
      if L8_2 then
        goto lbl_300
      end
    end
    L8_2 = Config
    L8_2 = L8_2.MaxFurnitureOutside
    ::lbl_300::
    if L8_2 then
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "number" == L9_2 then
        L9_2 = LoadedProperties
        L9_2 = L9_2[A0_2]
        L10_2 = L9_2
        L9_2 = L9_2.getTotalFurniture
        L11_2 = A1_2
        L9_2 = L9_2(L10_2, L11_2)
        if L8_2 <= L9_2 then
          L10_2 = TriggerClientEvent
          L11_2 = "nolag_properties:client:notify"
          L12_2 = L4_2
          L13_2 = {}
          L13_2.title = "Furniture Tool"
          L14_2 = locale
          L15_2 = "notify_furniture_max_reached"
          L16_2 = A1_2
          L17_2 = L8_2
          L14_2 = L14_2(L15_2, L16_2, L17_2)
          L13_2.description = L14_2
          L13_2.type = "error"
          L10_2(L11_2, L12_2, L13_2)
          return
        end
      end
    end
    L9_2 = MySQL
    L9_2 = L9_2.query
    L9_2 = L9_2.await
    L10_2 = "INSERT INTO properties_furniture (propertyId, furnitureId, environment, coords_x, coords_y, coords_z, rotation_x, rotation_y, rotation_z, price, model, type, label, require_keys) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    L11_2 = {}
    L12_2 = A0_2
    L13_2 = A2_2
    L14_2 = A1_2
    L15_2 = A3_2.coords
    L15_2 = L15_2.x
    L16_2 = A3_2.coords
    L16_2 = L16_2.y
    L17_2 = A3_2.coords
    L17_2 = L17_2.z
    L18_2 = A3_2.rotation
    L18_2 = L18_2.x
    L19_2 = A3_2.rotation
    L19_2 = L19_2.y
    L20_2 = A3_2.rotation
    L20_2 = L20_2.z
    L21_2 = A3_2.price
    L22_2 = A3_2.model
    L23_2 = A3_2.type
    L24_2 = A3_2.label
    L25_2 = A3_2.requireKeys
    if L25_2 then
      L25_2 = 1
      if L25_2 then
        goto lbl_361
      end
    end
    L25_2 = 0
    ::lbl_361::
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L11_2[5] = L16_2
    L11_2[6] = L17_2
    L11_2[7] = L18_2
    L11_2[8] = L19_2
    L11_2[9] = L20_2
    L11_2[10] = L21_2
    L11_2[11] = L22_2
    L11_2[12] = L23_2
    L11_2[13] = L24_2
    L11_2[14] = L25_2
    L9_2(L10_2, L11_2)
    L9_2 = A3_2.requireKeys
    if L9_2 then
      L9_2 = LoadedProperties
      L9_2 = L9_2[A0_2]
      L10_2 = L9_2.propertyData
      L11_2 = L10_2.additionalLocks
      L12_2 = #L11_2
      L12_2 = L12_2 + 1
      L13_2 = {}
      L14_2 = "furni_"
      L15_2 = A2_2
      L14_2 = L14_2 .. L15_2
      L13_2.id = L14_2
      L14_2 = A3_2.label
      L13_2.label = L14_2
      L11_2[L12_2] = L13_2
      L13_2 = L9_2
      L12_2 = L9_2.save
      L12_2(L13_2)
    end
    L9_2 = A3_2.model
    if L9_2 then
      L9_2 = Config
      L9_2 = L9_2.InteractableProps
      L10_2 = A3_2.model
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L9_2 = LoadedProperties
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.propertyData
        L9_2 = L9_2.additionalLocks
        L10_2 = LoadedProperties
        L10_2 = L10_2[A0_2]
        L10_2 = L10_2.propertyData
        L10_2 = L10_2.additionalLocks
        L10_2 = #L10_2
        L10_2 = L10_2 + 1
        L11_2 = {}
        L12_2 = "furni_"
        L13_2 = A2_2
        L12_2 = L12_2 .. L13_2
        L11_2.id = L12_2
        L12_2 = A3_2.model
        L11_2.label = L12_2
        L9_2[L10_2] = L11_2
        L9_2 = Config
        L9_2 = L9_2.InteractableProps
        L10_2 = A3_2.model
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.inventory
        if L9_2 then
          L9_2 = Config
          L9_2 = L9_2.InteractableProps
          L10_2 = A3_2.model
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.inventory
          L10_2 = "property_"
          L11_2 = A0_2
          L12_2 = "_furni_"
          L13_2 = A2_2
          L14_2 = "_"
          L15_2 = A1_2
          L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L11_2 = RegisterStash
          if L11_2 then
            L11_2 = LoadedProperties
            L11_2 = L11_2[A0_2]
            L11_2 = L11_2.propertyData
            L11_2 = L11_2.type
            if "shell" == L11_2 and "inside" == A1_2 then
              L11_2 = LoadedProperties
              L11_2 = L11_2[A0_2]
              L12_2 = L11_2
              L11_2 = L11_2.getEnterCoords
              L11_2 = L11_2(L12_2)
              if L11_2 then
                L12_2 = vec3
                L13_2 = L11_2.x
                L14_2 = L11_2.y
                L15_2 = Config
                L15_2 = L15_2.ShellZLevel
                L12_2 = L12_2(L13_2, L14_2, L15_2)
                L13_2 = vec3
                L14_2 = L12_2.x
                L15_2 = L12_2.y
                L16_2 = L12_2.z
                L13_2 = L13_2(L14_2, L15_2, L16_2)
                L14_2 = vec3
                L15_2 = A3_2.coords
                L15_2 = L15_2.x
                L16_2 = A3_2.coords
                L16_2 = L16_2.y
                L17_2 = A3_2.coords
                L17_2 = L17_2.z
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                L13_2 = L13_2 + L14_2
                L14_2 = lib
                L14_2 = L14_2.print
                L14_2 = L14_2.debug
                L15_2 = "Registering stash for property %s with slots %s and weight %s at coords %s (furniture stash)"
                L16_2 = L15_2
                L15_2 = L15_2.format
                L17_2 = A0_2
                L18_2 = L9_2.slots
                L19_2 = L9_2.weight
                L20_2 = json
                L20_2 = L20_2.encode
                L21_2 = L13_2
                L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L20_2(L21_2)
                L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                L14_2 = RegisterStash
                L15_2 = L10_2
                L16_2 = A3_2.label
                L17_2 = L9_2.slots
                L18_2 = L9_2.weight
                L19_2 = L13_2
                L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
              end
            else
              L11_2 = vec3
              L12_2 = A3_2.coords
              L12_2 = L12_2.x
              L13_2 = A3_2.coords
              L13_2 = L13_2.y
              L14_2 = A3_2.coords
              L14_2 = L14_2.z
              L11_2 = L11_2(L12_2, L13_2, L14_2)
              L12_2 = lib
              L12_2 = L12_2.print
              L12_2 = L12_2.debug
              L13_2 = "Registering stash for property %s with slots %s and weight %s at coords %s (furniture stash)"
              L14_2 = L13_2
              L13_2 = L13_2.format
              L15_2 = A0_2
              L16_2 = L9_2.slots
              L17_2 = L9_2.weight
              L18_2 = json
              L18_2 = L18_2.encode
              L19_2 = L11_2
              L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L18_2(L19_2)
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
              L12_2 = RegisterStash
              L13_2 = L10_2
              L14_2 = A3_2.label
              L15_2 = L9_2.slots
              L16_2 = L9_2.weight
              L17_2 = L11_2
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
            end
          end
          L11_2 = LoadedProperties
          L11_2 = L11_2[A0_2]
          L11_2 = L11_2.inventories
          L12_2 = LoadedProperties
          L12_2 = L12_2[A0_2]
          L12_2 = L12_2.inventories
          L12_2 = #L12_2
          L12_2 = L12_2 + 1
          L13_2 = {}
          L13_2.id = L10_2
          L14_2 = A3_2.label
          L13_2.label = L14_2
          L14_2 = A3_2.coords
          L13_2.coords = L14_2
          L14_2 = L9_2.slots
          L13_2.slots = L14_2
          L14_2 = L9_2.weight
          L13_2.weight = L14_2
          L11_2[L12_2] = L13_2
        end
      end
    end
  end
  L8_2 = TriggerClientEvent
  L9_2 = "nolag_properties:client:updateFurniture"
  L10_2 = -1
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = L4_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = TriggerClientEvent
  L9_2 = "nolag_properties:client:propertyDataUpdated"
  L10_2 = -1
  L11_2 = A0_2
  L8_2(L9_2, L10_2, L11_2)
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "nolag_properties:server:forceOpenInventory"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.isPlayerAuthorized
  L5_2 = L3_2
  L6_2 = "forceopeninventory"
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L6_2 = false
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L6_2 = LoadedProperties
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.inventories
  L7_2 = ipairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.id
    if L13_2 == A2_2 then
      L13_2 = ForceOpenInventory
      L14_2 = A0_2
      L15_2 = L12_2.id
      L16_2 = L12_2.label
      L17_2 = L12_2.slots
      L18_2 = L12_2.weight
      L19_2 = L12_2.coords
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L13_2 = true
      return L13_2
    end
  end
  L7_2 = false
  return L7_2
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "nolag_properties:server:getAddress"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetAddress
  L3_2 = A1_2.address
  return L2_2(L3_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = Config
  L2_2 = L2_2.StarterApartment
  L2_2 = L2_2.Enabled
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "Starter apartment is not enabled"
    L2_2(L3_2)
    L2_2 = false
    L3_2 = "Starter apartment is not enabled"
    return L2_2, L3_2
  end
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.getName
    L3_2 = L3_2()
    A1_2 = L3_2
  else
    if not A1_2 then
      A1_2 = "Unknown"
    end
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.debug
    L4_2 = "Player not found, using name: "
    L5_2 = A1_2
    L6_2 = " creating starter apartment for offline player"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
  end
  L3_2 = PropertySQL
  L3_2 = L3_2.GetStarterApartment
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Player already have a starter apartment"
    L4_2(L5_2)
    L4_2 = false
    L5_2 = "Player already have a starter apartment"
    return L4_2, L5_2
  end
  L4_2 = Config
  L4_2 = L4_2.StarterApartment
  L4_2 = L4_2.BuildingId
  L5_2 = LoadedBuildings
  L5_2 = L5_2[L4_2]
  if not L5_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "Building does not exists"
    L5_2(L6_2)
    L5_2 = false
    L6_2 = "Building does not exists"
    return L5_2, L6_2
  end
  L5_2 = Config
  L5_2 = L5_2.StarterApartment
  L5_2 = L5_2.Interior
  L6_2 = GetAddress
  L7_2 = Config
  L7_2 = L7_2.StarterApartment
  L7_2 = L7_2.Address
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.StarterApartment
  L7_2 = L7_2.UniqueName
  if L7_2 then
    L7_2 = GetUniqueName
    L8_2 = Config
    L8_2 = L8_2.StarterApartment
    L8_2 = L8_2.Name
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_87
    end
  end
  L7_2 = Config
  L7_2 = L7_2.StarterApartment
  L7_2 = L7_2.Name
  ::lbl_87::
  L8_2 = Config
  L8_2 = L8_2.StarterApartment
  L8_2 = L8_2.Inventory
  L9_2 = Config
  L9_2 = L9_2.StarterApartment
  L9_2 = L9_2.InteractablePoints
  L10_2 = {}
  L11_2 = nil
  L12_2 = L5_2.type
  if "ipl" == L12_2 then
    L12_2 = IPLsData
    L13_2 = L5_2.name
    L12_2 = L12_2[L13_2]
    if not L12_2 then
      L12_2 = lib
      L12_2 = L12_2.print
      L12_2 = L12_2.error
      L13_2 = "Invalid ipl type"
      L12_2(L13_2)
      L12_2 = false
      L13_2 = "Invalid ipl type"
      return L12_2, L13_2
    end
    L12_2 = {}
    L13_2 = ipairs
    L14_2 = IPLsData
    L15_2 = L5_2.name
    L14_2 = L14_2[L15_2]
    L14_2 = L14_2.imgs
    if not L14_2 then
      L14_2 = {}
    end
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      L19_2 = #L12_2
      L19_2 = L19_2 + 1
      L20_2 = L18_2.url
      L12_2[L19_2] = L20_2
    end
    L13_2 = {}
    L13_2.doorLocked = true
    L14_2 = {}
    L13_2.tags = L14_2
    L13_2.images = L12_2
    L14_2 = locale
    L15_2 = "starter_apartment_message"
    L14_2 = L14_2(L15_2)
    L13_2.description = L14_2
    L13_2.isStarter = true
    L14_2 = L5_2.name
    L13_2.iplName = L14_2
    L14_2 = IPLsData
    L15_2 = L5_2.name
    L14_2 = L14_2[L15_2]
    L14_2 = L14_2.defaultValues
    L13_2.iplCustomization = L14_2
    L13_2.enterData = nil
    L13_2.exitCoords = nil
    L13_2.yardZone = nil
    L13_2.allowedPoints = L9_2
    L13_2.saleSignCoords = nil
    L13_2.inventoryData = L8_2
    L10_2 = L13_2
  else
    L12_2 = L5_2.type
    if "shell" == L12_2 then
      L12_2 = ShellsData
      L13_2 = L5_2.name
      L12_2 = L12_2[L13_2]
      if not L12_2 then
        L12_2 = lib
        L12_2 = L12_2.print
        L12_2 = L12_2.error
        L13_2 = "Invalid shell type"
        L12_2(L13_2)
        L12_2 = false
        L13_2 = "Invalid shell type"
        return L12_2, L13_2
      end
      L12_2 = {}
      L13_2 = ipairs
      L14_2 = ShellsData
      L15_2 = L5_2.name
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.imgs
      L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
      for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
        L19_2 = #L12_2
        L19_2 = L19_2 + 1
        L20_2 = L18_2.url
        L12_2[L19_2] = L20_2
      end
      L13_2 = {}
      L13_2.doorLocked = true
      L14_2 = {}
      L13_2.tags = L14_2
      L13_2.images = L12_2
      L14_2 = locale
      L15_2 = "starter_apartment_message"
      L14_2 = L14_2(L15_2)
      L13_2.description = L14_2
      L13_2.isStarter = true
      L14_2 = L5_2.name
      L13_2.shellType = L14_2
      L13_2.enterData = nil
      L13_2.exitCoords = nil
      L13_2.yardZone = nil
      L13_2.allowedPoints = L9_2
      L13_2.saleSignCoords = nil
      L13_2.inventoryData = L8_2
      L10_2 = L13_2
    end
  end
  L12_2 = PropertySQL
  L12_2 = L12_2.CreateProperty
  L13_2 = L6_2
  L14_2 = L7_2
  L15_2 = L5_2.type
  L16_2 = L10_2
  L17_2 = L4_2
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if not L12_2 then
    L13_2 = false
    L14_2 = "Property creation failed, contact server administrator"
    return L13_2, L14_2
  end
  L13_2 = Config
  L13_2 = L13_2.StarterApartment
  L13_2 = L13_2.RentedInstead
  if L13_2 then
    L13_2 = PropertySQL
    L13_2 = L13_2.SetRentPrice
    L14_2 = L12_2
    L15_2 = Config
    L15_2 = L15_2.StarterApartment
    L15_2 = L15_2.FutureRentPrice
    L16_2 = A1_2
    L17_2 = "Starter apartment rent"
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PropertySQL
    L13_2 = L13_2.SetPrice
    L14_2 = L12_2
    L15_2 = 0
    L16_2 = A1_2
    L17_2 = "Starter apartment"
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PropertySQL
    L13_2 = L13_2.SetOwner
    L14_2 = L12_2
    L15_2 = Config
    L15_2 = L15_2.DefaultBuyerType
    L16_2 = Config
    L16_2 = L16_2.DefaultBuyerIdentifier
    L17_2 = 0
    L18_2 = "Starter apartment"
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = os
    L13_2 = L13_2.date
    L14_2 = "%Y-%m-%d"
    L13_2 = L13_2(L14_2)
    L14_2 = os
    L14_2 = L14_2.date
    L15_2 = "%Y-%m-%d"
    L16_2 = os
    L16_2 = L16_2.time
    L16_2 = L16_2()
    L17_2 = Config
    L17_2 = L17_2.StarterApartment
    L17_2 = L17_2.InitialRentDays
    L17_2 = 86400 * L17_2
    L16_2 = L16_2 + L17_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = {}
    L15_2.type = "user"
    L15_2.identifier = A0_2
    L15_2.rentedFrom = L13_2
    L15_2.rentedTo = L14_2
    L15_2.rentedPrice = 0
    L16_2 = {}
    L17_2 = {}
    L18_2 = os
    L18_2 = L18_2.date
    L19_2 = "%Y-%m-%d"
    L18_2 = L18_2(L19_2)
    L17_2.actionDate = L18_2
    L18_2 = locale
    L19_2 = "property_rent_action_starter"
    L18_2 = L18_2(L19_2)
    L17_2.action = L18_2
    L17_2.rentedFrom = L13_2
    L17_2.rentedTo = L14_2
    L17_2.rentedPrice = 0
    L16_2[1] = L17_2
    L15_2.rentData = L16_2
    L11_2 = L15_2
    L15_2 = PropertySQL
    L15_2 = L15_2.SetRenter
    L16_2 = L12_2
    L17_2 = "user"
    L18_2 = A0_2
    L19_2 = L11_2.rentData
    L20_2 = L13_2
    L21_2 = L14_2
    L22_2 = 0
    L23_2 = false
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L15_2 = Logs
    L15_2 = L15_2.CreateProperty
    L16_2 = A0_2
    L17_2 = L12_2
    L18_2 = L5_2.type
    L19_2 = L7_2
    L20_2 = 0
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  else
    L13_2 = PropertySQL
    L13_2 = L13_2.SetPrice
    L14_2 = L12_2
    L15_2 = 0
    L16_2 = A1_2
    L17_2 = "Starter apartment"
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PropertySQL
    L13_2 = L13_2.SetOwner
    L14_2 = L12_2
    L15_2 = "user"
    L16_2 = A0_2
    L17_2 = 0
    L18_2 = "Starter apartment"
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = Logs
    L13_2 = L13_2.CreateProperty
    L14_2 = A0_2
    L15_2 = L12_2
    L16_2 = L5_2.type
    L17_2 = L7_2
    L18_2 = 0
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L13_2 = {}
  L13_2.id = L12_2
  L14_2 = Config
  L14_2 = L14_2.StarterApartment
  L14_2 = L14_2.RentedInstead
  if L14_2 then
    L14_2 = Config
    L14_2 = L14_2.DefaultBuyerType
    if L14_2 then
      goto lbl_361
    end
  end
  L14_2 = "user"
  ::lbl_361::
  L13_2.ownerType = L14_2
  L14_2 = Config
  L14_2 = L14_2.StarterApartment
  L14_2 = L14_2.RentedInstead
  if L14_2 then
    L14_2 = Config
    L14_2 = L14_2.DefaultBuyerIdentifier
    if L14_2 then
      goto lbl_372
    end
  end
  L14_2 = A0_2
  ::lbl_372::
  L13_2.owner = L14_2
  L13_2.label = L7_2
  L13_2.price = 0
  L14_2 = Config
  L14_2 = L14_2.StarterApartment
  L14_2 = L14_2.RentedInstead
  if L14_2 then
    L14_2 = Config
    L14_2 = L14_2.StarterApartment
    L14_2 = L14_2.FutureRentPrice
    if L14_2 then
      goto lbl_386
    end
  end
  L14_2 = 0
  ::lbl_386::
  L13_2.rentPrice = L14_2
  L13_2.purchasePrice = 0
  L14_2 = os
  L14_2 = L14_2.date
  L15_2 = "%Y-%m-%d"
  L14_2 = L14_2(L15_2)
  L13_2.purchaseDate = L14_2
  L14_2 = {}
  L13_2.keyHolders = L14_2
  L14_2 = L5_2.type
  L13_2.type = L14_2
  L13_2.doorLocked = true
  L13_2.buildingId = L4_2
  L14_2 = {}
  L15_2 = {}
  L14_2.outside = L15_2
  L15_2 = {}
  L14_2.inside = L15_2
  L13_2.furniture = L14_2
  L13_2.forSale = false
  L14_2 = Config
  L14_2 = L14_2.StarterApartment
  L14_2 = L14_2.RentedInstead
  L13_2.forRent = L14_2
  L14_2 = ConvertToVector
  L15_2 = L10_2
  L14_2 = L14_2(L15_2)
  L13_2.metadata = L14_2
  L13_2.rentData = L11_2
  L14_2 = LoadedProperties
  L15_2 = ServerProperty
  L16_2 = L15_2
  L15_2 = L15_2.new
  L17_2 = L13_2
  L15_2 = L15_2(L16_2, L17_2)
  L14_2[L12_2] = L15_2
  return L12_2
end
L8_1 = exports
L9_1 = "AddStarterApartment"
L10_1 = L7_1
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = Config
L9_1 = L9_1.GiveStarterApartmentCommand
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetAllOfflinePlayersWithNames
  L3_2 = L3_2()
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L7_1
    L11_2 = L9_2.identifier
    L12_2 = L9_2.name
    L10_2(L11_2, L12_2)
  end
end
L11_1 = true
L8_1(L9_1, L10_1, L11_1)
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "nolag_properties:server:addNewProperty"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.getName
    L3_2 = L3_2()
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "Unknown"
  ::lbl_12::
  L4_2 = {}
  if not L2_2 then
    L5_2 = false
    L6_2 = nil
    return L5_2, L6_2
  end
  if not A1_2 then
    L5_2 = lib
    L5_2 = L5_2.print
    L5_2 = L5_2.error
    L6_2 = "No data provided when adding a new property"
    L5_2(L6_2)
    L5_2 = false
    L6_2 = nil
    return L5_2, L6_2
  end
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorized
  L6_2 = L2_2
  L7_2 = "creation"
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L7_2 = false
    L8_2 = L6_2
    return L7_2, L8_2
  end
  L7_2 = string
  L7_2 = L7_2.lower
  L8_2 = A1_2.type
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L8_2 = false
    return L8_2
  end
  function L8_2(A0_3)
    local L1_3, L2_3
    if nil == A0_3 then
      L1_3 = nil
      return L1_3
    end
    if "" == A0_3 then
      L1_3 = nil
      return L1_3
    end
    L1_3 = json
    L1_3 = L1_3.decode
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    A0_3 = L1_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if "table" ~= L1_3 then
      L1_3 = nil
      return L1_3
    end
    L1_3 = ConvertToVector
    L2_3 = A0_3
    return L1_3(L2_3)
  end
  if "ipl" == L7_2 then
    L9_2 = {}
    L9_2.doorLocked = true
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.tags
      if L10_2 then
        goto lbl_76
      end
    end
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.tags
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.tags
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_76
        end
      end
    end
    L10_2 = nil
    ::lbl_76::
    L9_2.tags = L10_2
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.images
      if L10_2 then
        goto lbl_100
      end
    end
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.images
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.images
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_100
        end
      end
    end
    L10_2 = nil
    ::lbl_100::
    L9_2.images = L10_2
    L10_2 = A1_2.description
    L9_2.description = L10_2
    L10_2 = A1_2.iplType
    L9_2.iplName = L10_2
    L10_2 = IPLsData
    L11_2 = A1_2.iplType
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.defaultValues
    L9_2.iplCustomization = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.enterPoint
    L10_2 = L10_2(L11_2)
    L9_2.enterData = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.exitPoint
    L10_2 = L10_2(L11_2)
    L9_2.exitCoords = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.yardZoneCoords
    L10_2 = L10_2(L11_2)
    L9_2.yardZone = L10_2
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if L10_2 then
        goto lbl_145
      end
    end
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.interactionPoints
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_145
        end
      end
    end
    L10_2 = nil
    ::lbl_145::
    L9_2.allowedPoints = L10_2
    L10_2 = A1_2.signCoords
    if not L10_2 then
      L10_2 = nil
    end
    L9_2.saleSignCoords = L10_2
    L10_2 = A1_2.inventoryData
    if not L10_2 then
      L10_2 = {}
      L11_2 = IPLsData
      L12_2 = A1_2.iplType
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = L11_2.inventory
      end
      if L11_2 then
        L11_2 = L11_2.slots
      end
      if not L11_2 then
        L11_2 = Config
        L11_2 = L11_2.DefaultSlots
      end
      L10_2.slots = L11_2
      L11_2 = IPLsData
      L12_2 = A1_2.iplType
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = L11_2.inventory
      end
      if L11_2 then
        L11_2 = L11_2.weight
      end
      if not L11_2 then
        L11_2 = Config
        L11_2 = L11_2.DefaultWeight
      end
      L10_2.weight = L11_2
    end
    L9_2.inventoryData = L10_2
    L4_2 = L9_2
  elseif "shell" == L7_2 then
    L9_2 = ShellsData
    L10_2 = A1_2.shellType
    L9_2 = L9_2[L10_2]
    if L9_2 then
      L9_2 = L9_2.stash
    end
    if L9_2 then
      L9_2 = L9_2.slots
    end
    if L9_2 then
      L9_2 = ShellsData
      L10_2 = A1_2.shellType
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L9_2 = L9_2.stash
      end
      if L9_2 then
        L9_2 = L9_2.maxweight
      end
      if L9_2 then
        goto lbl_214
      end
    end
    L9_2 = false
    L10_2 = "Invalid shell type"
    do return L9_2, L10_2 end
    ::lbl_214::
    L9_2 = {}
    L9_2.doorLocked = true
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.tags
      if L10_2 then
        goto lbl_240
      end
    end
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.tags
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.tags
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_240
        end
      end
    end
    L10_2 = nil
    ::lbl_240::
    L9_2.tags = L10_2
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.images
      if L10_2 then
        goto lbl_264
      end
    end
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.images
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.images
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_264
        end
      end
    end
    L10_2 = nil
    ::lbl_264::
    L9_2.images = L10_2
    L10_2 = A1_2.description
    L9_2.description = L10_2
    L10_2 = A1_2.shellType
    L9_2.shellType = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.enterPoint
    L10_2 = L10_2(L11_2)
    L9_2.enterData = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.exitPoint
    L10_2 = L10_2(L11_2)
    L9_2.exitCoords = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.yardZoneCoords
    L10_2 = L10_2(L11_2)
    L9_2.yardZone = L10_2
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if L10_2 then
        goto lbl_304
      end
    end
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.interactionPoints
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_304
        end
      end
    end
    L10_2 = nil
    ::lbl_304::
    L9_2.allowedPoints = L10_2
    L10_2 = A1_2.signCoords
    if not L10_2 then
      L10_2 = nil
    end
    L9_2.saleSignCoords = L10_2
    L10_2 = A1_2.inventoryData
    if not L10_2 then
      L10_2 = {}
      L11_2 = ShellsData
      L12_2 = A1_2.shellType
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = L11_2.stash
      end
      if L11_2 then
        L11_2 = L11_2.slots
      end
      if not L11_2 then
        L11_2 = Config
        L11_2 = L11_2.DefaultSlots
      end
      L10_2.slots = L11_2
      L11_2 = ShellsData
      L12_2 = A1_2.shellType
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = L11_2.stash
      end
      if L11_2 then
        L11_2 = L11_2.maxweight
      end
      if not L11_2 then
        L11_2 = Config
        L11_2 = L11_2.DefaultWeight
      end
      L10_2.weight = L11_2
    end
    L9_2.inventoryData = L10_2
    L4_2 = L9_2
  elseif "mlo" == L7_2 then
    L9_2 = {}
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.tags
      if L10_2 then
        goto lbl_373
      end
    end
    L10_2 = type
    L11_2 = A1_2.tags
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.tags
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.tags
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_373
        end
      end
    end
    L10_2 = nil
    ::lbl_373::
    L9_2.tags = L10_2
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.images
      if L10_2 then
        goto lbl_397
      end
    end
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.images
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.images
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_397
        end
      end
    end
    L10_2 = nil
    ::lbl_397::
    L9_2.images = L10_2
    L10_2 = A1_2.description
    L9_2.description = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.mloInteractPoint
    L10_2 = L10_2(L11_2)
    L9_2.managePoint = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.yardZoneCoords
    L10_2 = L10_2(L11_2)
    L9_2.yardZone = L10_2
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if L10_2 then
        goto lbl_431
      end
    end
    L10_2 = type
    L11_2 = A1_2.interactionPoints
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.interactionPoints
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.interactionPoints
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_431
        end
      end
    end
    L10_2 = nil
    ::lbl_431::
    L9_2.allowedPoints = L10_2
    L10_2 = A1_2.inventoryData
    if not L10_2 then
      L10_2 = {}
      L11_2 = Config
      L11_2 = L11_2.MloInventoryData
      L11_2 = L11_2.Slots
      L11_2 = L11_2[2]
      L10_2.slots = L11_2
      L11_2 = Config
      L11_2 = L11_2.MloInventoryData
      L11_2 = L11_2.Weight
      L11_2 = L11_2[2]
      L10_2.weight = L11_2
    end
    L9_2.inventoryData = L10_2
    L10_2 = A1_2.signCoords
    if not L10_2 then
      L10_2 = nil
    end
    L9_2.saleSignCoords = L10_2
    L4_2 = L9_2
  elseif "building" == L7_2 then
    L9_2 = {}
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = A1_2.images
      if L10_2 then
        goto lbl_482
      end
    end
    L10_2 = type
    L11_2 = A1_2.images
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = A1_2.images
      if "" ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = A1_2.images
        L10_2 = L10_2(L11_2)
        if L10_2 then
          goto lbl_482
        end
      end
    end
    L10_2 = nil
    ::lbl_482::
    L9_2.images = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.enterPoint
    L10_2 = L10_2(L11_2)
    L9_2.enterData = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.exitPoint
    L10_2 = L10_2(L11_2)
    L9_2.exitCoords = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.cameraData
    L10_2 = L10_2(L11_2)
    L9_2.camData = L10_2
    L10_2 = A1_2.inventoryData
    if not L10_2 then
      L10_2 = {}
      L11_2 = Config
      L11_2 = L11_2.DefaultSlots
      L10_2.slots = L11_2
      L11_2 = Config
      L11_2 = L11_2.DefaultWeight
      L10_2.weight = L11_2
    end
    L9_2.inventoryData = L10_2
    L10_2 = L8_2
    L11_2 = A1_2.garagePoint
    L10_2 = L10_2(L11_2)
    L9_2.garagePoint = L10_2
    L4_2 = L9_2
  end
  L9_2 = L4_2.allowedPoints
  if L9_2 then
    L9_2 = {}
    L10_2 = ipairs
    L11_2 = L4_2.allowedPoints
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L9_2[L15_2] = true
    end
    L4_2.allowedPoints = L9_2
  end
  if "building" ~= L7_2 then
    L9_2 = Config
    L9_2 = L9_2.DefaultBuyerType
    L10_2 = Config
    L10_2 = L10_2.DefaultBuyerIdentifier
    L11_2 = Config
    L11_2 = L11_2.CreatePropertyAsSociety
    if L11_2 then
      L11_2 = Config
      L11_2 = L11_2.RealEstateJobs
      L12_2 = L2_2.job
      L12_2 = L12_2.name
      L11_2 = L11_2[L12_2]
      if nil ~= L11_2 then
        L9_2 = "society"
        L11_2 = L2_2.job
        L10_2 = L11_2.name
    end
    else
      L11_2 = Config
      L11_2 = L11_2.CreatePropertyAsSociety
      if not L11_2 then
        L9_2 = "user"
        L10_2 = L2_2.identifier
      end
    end
    L11_2 = Config
    L11_2 = L11_2.BuyPropertyOnCreation
    if L11_2 then
      L11_2 = RemoveMoney
      L12_2 = L9_2
      L13_2 = L10_2
      L14_2 = A1_2.price
      L15_2 = L2_2.identifier
      L16_2 = "Bought a property on creation"
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      if not L11_2 then
        L11_2 = false
        L12_2 = locale
        L13_2 = "property_buyer_doesnt_have_money"
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
        return L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
      end
    end
    L11_2 = tonumber
    L12_2 = A1_2.building
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = nil
    end
    L12_2 = PropertySQL
    L12_2 = L12_2.CreateProperty
    L13_2 = A1_2.address
    L14_2 = A1_2.name
    L15_2 = L7_2
    L16_2 = L4_2
    L17_2 = L11_2
    L18_2 = A1_2.forSale
    L19_2 = A1_2.forRent
    L20_2 = A1_2.mortagable
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    if not L12_2 then
      L13_2 = false
      L14_2 = "Property creation failed, contact server administrator"
      return L13_2, L14_2
    end
    L13_2 = PropertySQL
    L13_2 = L13_2.SetPrice
    L14_2 = L12_2
    L15_2 = A1_2.price
    L16_2 = L3_2
    L17_2 = "Initial price"
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PropertySQL
    L13_2 = L13_2.SetRentPrice
    L14_2 = L12_2
    L15_2 = A1_2.rentPrice
    L16_2 = L3_2
    L17_2 = "Initial rent price"
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = PropertySQL
    L13_2 = L13_2.SetOwner
    L14_2 = L12_2
    L15_2 = L9_2
    L16_2 = L10_2
    L17_2 = A1_2.price
    L18_2 = "Initial owner"
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = Logs
    L13_2 = L13_2.CreateProperty
    L14_2 = L2_2.identifier
    L15_2 = L12_2
    L16_2 = L7_2
    L17_2 = A1_2.name
    L18_2 = A1_2.price
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = {}
    L13_2.id = L12_2
    L13_2.ownerType = L9_2
    L13_2.owner = L10_2
    L14_2 = A1_2.address
    L13_2.address = L14_2
    L14_2 = A1_2.name
    L13_2.label = L14_2
    L14_2 = tonumber
    L15_2 = A1_2.price
    L14_2 = L14_2(L15_2)
    L13_2.price = L14_2
    L14_2 = tonumber
    L15_2 = A1_2.rentPrice
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = 0
    end
    L13_2.rentPrice = L14_2
    L14_2 = tonumber
    L15_2 = A1_2.price
    L14_2 = L14_2(L15_2)
    L13_2.purchasePrice = L14_2
    L14_2 = os
    L14_2 = L14_2.date
    L15_2 = "%Y-%m-%d"
    L14_2 = L14_2(L15_2)
    L13_2.purchaseDate = L14_2
    L14_2 = {}
    L13_2.keyHolders = L14_2
    L13_2.type = L7_2
    L13_2.doorLocked = true
    L13_2.buildingId = L11_2
    L14_2 = {}
    L15_2 = {}
    L14_2.outside = L15_2
    L15_2 = {}
    L14_2.inside = L15_2
    L13_2.furniture = L14_2
    L14_2 = A1_2.forSale
    L13_2.forSale = L14_2
    L14_2 = A1_2.forRent
    L13_2.forRent = L14_2
    L14_2 = ConvertToVector
    L15_2 = L4_2
    L14_2 = L14_2(L15_2)
    L13_2.metadata = L14_2
    L13_2.rentData = nil
    L14_2 = LoadedProperties
    L15_2 = ServerProperty
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = L13_2
    L15_2 = L15_2(L16_2, L17_2)
    L14_2[L12_2] = L15_2
  else
    L9_2 = BuildingSQL
    L9_2 = L9_2.CreateBuilding
    L10_2 = A1_2.address
    L11_2 = A1_2.name
    L12_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = Logs
    L10_2 = L10_2.CreateBuilding
    L11_2 = L2_2.identifier
    L12_2 = L9_2
    L13_2 = A1_2.name
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = LoadedBuildings
    L11_2 = ServerBuilding
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = {}
    L13_2.id = L9_2
    L14_2 = A1_2.address
    L13_2.name = L14_2
    L14_2 = A1_2.name
    L13_2.label = L14_2
    L13_2.metadata = L4_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2[L9_2] = L11_2
  end
  L9_2 = true
  return L9_2
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  if not A1_2 then
    A1_2 = "Server"
  end
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.inventories
  if L2_2 then
    L2_2 = ClearStash
    if L2_2 then
      L2_2 = pairs
      L3_2 = LoadedProperties
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.inventories
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = ClearStash
        L9_2 = L7_2.id
        L8_2(L9_2)
      end
    end
  end
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.doors
  if L2_2 then
    L2_2 = pairs
    L3_2 = LoadedProperties
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.doors
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = TriggerEvent
      L9_2 = "nolag_properties:server:editDoor"
      L10_2 = L7_2.id
      L8_2(L9_2, L10_2)
    end
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
  end
  L2_2 = Logs
  L2_2 = L2_2.DeleteProperty
  L3_2 = A1_2
  L4_2 = A0_2
  L5_2 = LoadedProperties
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.propertyData
  L5_2 = L5_2.type
  L6_2 = LoadedProperties
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.propertyData
  L6_2 = L6_2.label
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = LoadedProperties
  L2_2[A0_2] = nil
  L2_2 = MySQL
  L2_2 = L2_2.query
  L2_2 = L2_2.await
  L3_2 = "DELETE FROM properties WHERE id = ?"
  L4_2 = {}
  L5_2 = A0_2
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "nolag_properties:client:deleteProperty"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = true
  return L2_2
end
DeleteProperty = L8_1
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "nolag_properties:server:deleteProperty"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  if not A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Framework
  L3_2 = L3_2.isPlayerAuthorized
  L4_2 = L2_2
  L5_2 = "deleteproperty"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = false
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L5_2 = DeleteProperty
  L6_2 = A1_2
  L7_2 = L2_2.identifier
  return L5_2(L6_2, L7_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = 0
    return L3_2, L4_2
  end
  L3_2 = {}
  L4_2 = 0
  L5_2 = pairs
  L6_2 = LoadedProperties
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.propertyData
    L11_2 = L11_2.buildingId
    if L11_2 == A1_2 then
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = {}
      L12_2.id = L9_2
      L13_2 = L10_2.propertyData
      L13_2 = L13_2.label
      L12_2.label = L13_2
      L13_2 = L10_2.propertyData
      L13_2 = L13_2.type
      L12_2.type = L13_2
      L13_2 = L10_2.owner
      L12_2.owner = L13_2
      L13_2 = L10_2.ownerType
      L12_2.ownerType = L13_2
      L3_2[L11_2] = L12_2
      L11_2 = L10_2.inventories
      if L11_2 then
        L11_2 = ClearStash
        if L11_2 then
          L11_2 = pairs
          L12_2 = L10_2.inventories
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = ClearStash
            L18_2 = L16_2.id
            L17_2(L18_2)
          end
        end
      end
      L11_2 = L10_2.doors
      if L11_2 then
        L11_2 = L10_2.doors
        L11_2 = #L11_2
        if L11_2 > 0 then
          L11_2 = pairs
          L12_2 = L10_2.doors
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = TriggerEvent
            L18_2 = "nolag_properties:server:editDoor"
            L19_2 = L16_2.id
            L17_2(L18_2, L19_2)
          end
          L11_2 = Wait
          L12_2 = 1000
          L11_2(L12_2)
        end
      end
      L11_2 = Logs
      L11_2 = L11_2.DeleteProperty
      L12_2 = L2_2.identifier
      L13_2 = L9_2
      L14_2 = L10_2.propertyData
      L14_2 = L14_2.type
      L15_2 = L10_2.propertyData
      L15_2 = L15_2.label
      L11_2(L12_2, L13_2, L14_2, L15_2)
      L11_2 = LoadedProperties
      L11_2[L9_2] = nil
      L11_2 = TriggerClientEvent
      L12_2 = "nolag_properties:client:deleteProperty"
      L13_2 = -1
      L14_2 = L9_2
      L11_2(L12_2, L13_2, L14_2)
      L4_2 = L4_2 + 1
    end
  end
  if L4_2 > 0 then
    L5_2 = Wait
    L6_2 = 1000
    L5_2(L6_2)
  end
  L5_2 = #L3_2
  if L5_2 > 0 then
    L5_2 = {}
    L6_2 = 1
    L7_2 = #L3_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = #L5_2
      L10_2 = L10_2 + 1
      L11_2 = L3_2[L9_2]
      L11_2 = L11_2.id
      L5_2[L10_2] = L11_2
    end
    L6_2 = {}
    L7_2 = 1
    L8_2 = #L5_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = #L6_2
      L11_2 = L11_2 + 1
      L6_2[L11_2] = "?"
    end
    L7_2 = pcall
    L8_2 = MySQL
    L8_2 = L8_2.query
    L8_2 = L8_2.await
    L9_2 = "DELETE FROM properties WHERE id IN ("
    L10_2 = table
    L10_2 = L10_2.concat
    L11_2 = L6_2
    L12_2 = ","
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = ")"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = L5_2
    L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2)
    if not L7_2 then
      L9_2 = lib
      L9_2 = L9_2.print
      L9_2 = L9_2.error
      L10_2 = "Failed to delete properties from database for building: "
      L11_2 = A1_2
      L10_2 = L10_2 .. L11_2
      L9_2(L10_2)
      L9_2 = false
      L10_2 = 0
      return L9_2, L10_2
    end
  end
  L5_2 = true
  L6_2 = L4_2
  return L5_2, L6_2
end
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:deleteBuilding"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  if not A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = LoadedBuildings
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Framework
  L3_2 = L3_2.isPlayerAuthorized
  L4_2 = L2_2
  L5_2 = "deletebuilding"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = false
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L5_2 = L8_1
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L7_2 = lib
    L7_2 = L7_2.print
    L7_2 = L7_2.error
    L8_2 = "Failed to delete properties in building: "
    L9_2 = A1_2
    L8_2 = L8_2 .. L9_2
    L7_2(L8_2)
    L7_2 = false
    return L7_2
  end
  L7_2 = pcall
  L8_2 = MySQL
  L8_2 = L8_2.query
  L8_2 = L8_2.await
  L9_2 = "DELETE FROM `buildings` WHERE `id` = ?"
  L10_2 = {}
  L11_2 = A1_2
  L10_2[1] = L11_2
  L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    L9_2 = lib
    L9_2 = L9_2.print
    L9_2 = L9_2.error
    L10_2 = "Failed to delete building from database: "
    L11_2 = A1_2
    L10_2 = L10_2 .. L11_2
    L9_2(L10_2)
    L9_2 = false
    return L9_2
  end
  L9_2 = Logs
  L9_2 = L9_2.DeleteBuilding
  L10_2 = L2_2.identifier
  L11_2 = A1_2
  L12_2 = LoadedBuildings
  L12_2 = L12_2[A1_2]
  L12_2 = L12_2.name
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = LoadedBuildings
  L9_2[A1_2] = nil
  L9_2 = TriggerClientEvent
  L10_2 = "nolag_properties:client:deleteBuilding"
  L11_2 = -1
  L12_2 = A1_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = lib
  L9_2 = L9_2.print
  L9_2 = L9_2.debug
  L10_2 = "Building %s deleted successfully with %d properties"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = A1_2
  L13_2 = L6_2
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = true
  return L9_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:getAdminBuildings"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = {}
    L6_2 = {}
    L5_2.buildings = L6_2
    L5_2.total = 0
    return L5_2
  end
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorized
  L6_2 = L4_2
  L7_2 = "allproperties"
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L7_2 = {}
    L8_2 = {}
    L7_2.buildings = L8_2
    L7_2.total = 0
    return L7_2
  end
  L7_2 = {}
  L8_2 = {}
  L9_2 = pairs
  L10_2 = LoadedBuildings
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = {}
    L15_2.id = L13_2
    L16_2 = L14_2.name
    if not L16_2 then
      L16_2 = "Unknown"
    end
    L15_2.name = L16_2
    L16_2 = L14_2.label
    if not L16_2 then
      L16_2 = "Unknown Building"
    end
    L15_2.label = L16_2
    L16_2 = L14_2.metadata
    if L16_2 then
      L16_2 = L14_2.metadata
      L16_2 = L16_2.enterData
      if L16_2 then
        goto lbl_57
      end
    end
    L16_2 = nil
    ::lbl_57::
    L15_2.coords = L16_2
    L16_2 = L14_2.metadata
    if L16_2 then
      L16_2 = L14_2.metadata
      L16_2 = L16_2.garagePoint
      if L16_2 then
        L16_2 = true
        if L16_2 then
          goto lbl_69
        end
      end
    end
    L16_2 = false
    ::lbl_69::
    L15_2.garagePoint = L16_2
    L15_2.propertiesCount = 0
    L16_2 = pairs
    L17_2 = LoadedProperties
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
    for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
      L22_2 = L21_2.propertyData
      L22_2 = L22_2.buildingId
      if L22_2 == L13_2 then
        L22_2 = L15_2.propertiesCount
        L22_2 = L22_2 + 1
        L15_2.propertiesCount = L22_2
      end
    end
    if "" ~= A3_2 then
      L16_2 = string
      L16_2 = L16_2.find
      L17_2 = string
      L17_2 = L17_2.lower
      L18_2 = L14_2.label
      if not L18_2 then
        L18_2 = ""
      end
      L17_2 = L17_2(L18_2)
      L18_2 = string
      L18_2 = L18_2.lower
      L19_2 = A3_2
      L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2)
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      if not L16_2 then
        L16_2 = string
        L16_2 = L16_2.find
        L17_2 = string
        L17_2 = L17_2.lower
        L18_2 = L14_2.name
        if not L18_2 then
          L18_2 = ""
        end
        L17_2 = L17_2(L18_2)
        L18_2 = string
        L18_2 = L18_2.lower
        L19_2 = A3_2
        L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2)
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        if not L16_2 then
          goto lbl_124
        end
      end
    end
    L16_2 = #L8_2
    L16_2 = L16_2 + 1
    L8_2[L16_2] = L15_2
    ::lbl_124::
  end
  L9_2 = table
  L9_2 = L9_2.sort
  L10_2 = L8_2
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.id
    L3_3 = A1_3.id
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L9_2(L10_2, L11_2)
  L9_2 = #L8_2
  L10_2 = A1_2 - 1
  L10_2 = L10_2 * A2_2
  L10_2 = L10_2 + 1
  L11_2 = math
  L11_2 = L11_2.min
  L12_2 = L10_2 + A2_2
  L12_2 = L12_2 - 1
  L13_2 = L9_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L10_2
  L13_2 = L11_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L8_2[L15_2]
    if L16_2 then
      L16_2 = #L7_2
      L16_2 = L16_2 + 1
      L17_2 = L8_2[L15_2]
      L7_2[L16_2] = L17_2
    end
  end
  L12_2 = {}
  L12_2.buildings = L7_2
  L12_2.total = L9_2
  return L12_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:updateBuilding"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  if not (A1_2 and A2_2) or not A3_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = LoadedBuildings
  L5_2 = L5_2[A1_2]
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorized
  L6_2 = L4_2
  L7_2 = "edit_building"
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = MySQL
  L7_2 = L7_2.query
  L7_2 = L7_2.await
  L8_2 = "UPDATE buildings SET label = ?, name = ? WHERE id = ?"
  L9_2 = {}
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A1_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = LoadedBuildings
    L8_2 = L8_2[A1_2]
    L8_2.label = A2_2
    L8_2 = LoadedBuildings
    L8_2 = L8_2[A1_2]
    L8_2.name = A3_2
    L8_2 = GlobalState
    L9_2 = "building.%s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = LoadedBuildings
    L10_2 = L10_2[A1_2]
    L8_2[L9_2] = L10_2
    L8_2 = true
    return L8_2
  end
  L8_2 = false
  return L8_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:getPropertiesBySociety"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = LoadedProperties
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.ownerType
    if "society" == L9_2 then
      L9_2 = L8_2.owner
      if L9_2 == A1_2 then
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L2_2[L9_2] = L8_2
      end
    end
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:getClosestPlayers"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = lib
  L3_2 = L3_2.getNearbyPlayers
  L4_2 = A1_2
  L5_2 = 5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.id
    if L8_2 == A0_2 then
      L9_2 = Config
      L9_2 = L9_2.AllowSelfAsKeyholder
      if not L9_2 then
    end
    else
      L9_2 = Framework
      L9_2 = L9_2.GetPlayerFromId
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
      else
        L10_2 = L3_2[L7_2]
        L10_2 = L10_2.coords
        L11_2 = A1_2 - L10_2
        L11_2 = #L11_2
        L12_2 = #L2_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L13_2.distance = L11_2
        L14_2 = L9_2
        if L14_2 then
          L14_2 = L14_2.getName
        end
        L14_2 = L14_2()
        L13_2.name = L14_2
        L14_2 = L9_2
        if L14_2 then
          L14_2 = L14_2.identifier
        end
        L13_2.identifier = L14_2
        L2_2[L12_2] = L13_2
      end
    end
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:getPlayerName"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromIdentifier
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.getName
    L4_2 = L4_2()
    L2_2 = L4_2
  else
    L4_2 = GetOfflinePlayerName
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:isPlayerAuthorized"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Framework
  L3_2 = L3_2.isPlayerAuthorized
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L9_1(L10_1, L11_1)
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "nolag_properties:server:isInventoryEmpty"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = IsInventoryEmpty
  if L2_2 then
    L2_2 = IsInventoryEmpty
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
  end
  return L2_2
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = LoadedProperties
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.processRents
    L8_2(L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.checkLastEntered
    L8_2(L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.checkRentInactivity
    L8_2(L9_2)
    L8_2 = Wait
    L9_2 = 1
    L8_2(L9_2)
  end
end
L10_1 = lib
L10_1 = L10_1.cron
L10_1 = L10_1.new
L11_1 = "*/30 * * * *"
L12_1 = L9_1
L13_1 = {}
L13_1.debug = false
L10_1(L11_1, L12_1, L13_1)
L10_1 = AddEventHandler
L11_1 = "playerDropped"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Player
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.propertyId
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if not L2_2 then
    return
  end
  L4_2 = LoadedProperties
  L4_2 = L4_2[L2_2]
  L6_2 = L4_2
  L5_2 = L4_2.playerExit
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  if L2_2 then
    L5_2 = L4_2.type
    if "mlo" ~= L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.getExitCoords
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L6_2 = lib
        L6_2 = L6_2.print
        L6_2 = L6_2.error
        L7_2 = "Couldn't find exit coords for property: "
        L8_2 = L2_2
        L7_2 = L7_2 .. L8_2
        L6_2(L7_2)
        return
      end
      L6_2 = SetTimeout
      L7_2 = 5000
      function L8_2()
        local L0_3, L1_3, L2_3
        L0_3 = UpdatePlayerCooords
        L1_3 = L3_2.identifier
        L2_3 = L5_2
        L0_3(L1_3, L2_3)
      end
      L6_2(L7_2, L8_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = OnPlayerUnloadedEvent
if L10_1 then
  L10_1 = AddEventHandler
  L11_1 = OnPlayerUnloadedEvent
  function L12_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L1_2 = Player
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.state
    L1_2 = L1_2.propertyId
    L2_2 = Framework
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      return
    end
    if not L1_2 then
      return
    end
    L3_2 = LoadedProperties
    L3_2 = L3_2[L1_2]
    L5_2 = L3_2
    L4_2 = L3_2.playerExit
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    if L1_2 then
      L4_2 = L3_2.type
      if "mlo" ~= L4_2 then
        L5_2 = L3_2
        L4_2 = L3_2.getExitCoords
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L5_2 = lib
          L5_2 = L5_2.print
          L5_2 = L5_2.error
          L6_2 = "Couldn't find exit coords for property: "
          L7_2 = L1_2
          L6_2 = L6_2 .. L7_2
          L5_2(L6_2)
          return
        end
        L5_2 = SetTimeout
        L6_2 = 2000
        function L7_2()
          local L0_3, L1_3, L2_3
          L0_3 = UpdatePlayerCooords
          L1_3 = L2_2.identifier
          L2_3 = L4_2
          L0_3(L1_3, L2_3)
        end
        L5_2(L6_2, L7_2)
      end
    end
  end
  L10_1(L11_1, L12_1)
else
  L10_1 = lib
  L10_1 = L10_1.print
  L10_1 = L10_1.error
  L11_1 = "OnPlayerUnloadedEvent is not defined"
  L10_1(L11_1)
end
L10_1 = {}
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedBuildings
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.setGaragePoint
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L10_1.setGaragePoint = L11_1
L11_1 = {}
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.updateKeyHolderAccess
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.updateKeyHolderAccess = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.addKey
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L11_1.addKey = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.removeKey
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.removeKey = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.removeAllKeys
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L11_1.removeAllKeys = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.getTotalFurniture
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  return L4_2
end
L11_1.getTotalFurniture = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = LoadedProperties
  L5_2 = L5_2[A1_2]
  L6_2 = L5_2
  L5_2 = L5_2.rent
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L8_2 = L6_2
  return L7_2, L8_2
end
L11_1.rent = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.continueRent
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.continueRent = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.cancelRent
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.cancelRent = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.setAutoRenew
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.setAutoRenew = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.buy
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.buy = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.sell
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L11_1.sell = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.saveSettings
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.saveSettings = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.getRenters
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L11_1.getRenters = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.getFurniture
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  return L4_2
end
L11_1.getFurniture = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.toggleDoorlock
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  return L4_2
end
L11_1.toggleDoorlock = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.toggleLockdown
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.toggleLockdown = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.addCamData
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L11_1.addCamera = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.removeCamData
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L11_1.removeCamera = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.watchCam
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L11_1.watchCamera = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.policeRaid
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L11_1.policeRaid = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.updateYardZone
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.updateYardZone = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.updateManagePoint
  L5_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.updateManagePoint = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.transfer
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L11_1.transfer = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.getInventories
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L11_1.getInventories = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadedProperties
  L3_2 = L3_2[A1_2]
  L4_2 = L3_2
  L3_2 = L3_2.updateInventoryConfig
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L11_1.updateInventoryConfig = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = LoadedProperties
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.setInteractablePoint
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L11_1.setInteractablePoint = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.canCreateDoor
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L11_1.canCreateDoor = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L4_2 = L2_2.propertyData
  L4_2 = L4_2.metadata
  L4_2 = L4_2.images
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.images = L4_2
  L4_2 = L2_2.propertyData
  L4_2 = L4_2.metadata
  L4_2 = L4_2.description
  if not L4_2 then
    L4_2 = ""
  end
  L3_2.description = L4_2
  L4_2 = L2_2.propertyData
  L4_2 = L4_2.metadata
  L4_2 = L4_2.tags
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.tags = L4_2
  return L3_2
end
L11_1.getPropertyMetadata = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = {}
  L4_2 = L2_2.propertyData
  L4_2 = L4_2.purchaseDate
  L3_2.purchaseDate = L4_2
  L4_2 = L2_2.propertyData
  L4_2 = L4_2.purchasePrice
  L3_2.purchasePrice = L4_2
  return L3_2
end
L11_1.getPropertyPurchaseInfo = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = {}
    return L3_2
  end
  L3_2 = L2_2.propertyData
  L3_2 = L3_2.additionalLocks
  if not L3_2 then
    L3_2 = {}
  end
  return L3_2
end
L11_1.getPropertyAdditionalLocks = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = {}
    return L3_2
  end
  L3_2 = L2_2.propertyData
  L3_2 = L3_2.rentData
  if L3_2 then
    L3_2 = L2_2.propertyData
    L3_2 = L3_2.rentData
    L3_2 = L3_2.rentData
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = {}
  ::lbl_19::
  return L3_2
end
L11_1.getPropertyRentHistory = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_2.propertyData
  L3_2 = L3_2.doorLocked
  return L3_2
end
L11_1.getDoorLockedState = L12_1
L12_1 = {}
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2
  L2_2 = L2_2.playerEnter
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L12_1.enter = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2
  L2_2 = L2_2.playerExit
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L12_1.exit = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2
  L2_2 = L2_2.saveIplChanges
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L12_1.saveIplChanges = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = LoadedProperties
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2
  L2_2 = L2_2.doorBell
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L12_1.doorBell = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = LoadedProperties
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2
  L1_2 = L1_2.notifyBreaching
  L1_2(L2_2)
end
L12_1.notifyBreaching = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = L10_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = "nolag_properties:server:building:"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L7_2 = lib
    L7_2 = L7_2.callback
    L7_2 = L7_2.register
    L8_2 = L6_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
end
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = L11_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = "nolag_properties:server:property:"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L7_2 = lib
    L7_2 = L7_2.callback
    L7_2 = L7_2.register
    L8_2 = L6_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
end
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = L12_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = "nolag_properties:server:property:"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L7_2 = RegisterNetEvent
    L8_2 = L6_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
end
L16_1 = L15_1
L16_1()
L16_1 = L14_1
L16_1()
L16_1 = L13_1
L16_1()
