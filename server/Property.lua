local L0_1, L1_1, L2_1
L0_1 = lib
L0_1 = L0_1.class
L1_1 = "ServerProperty"
L0_1 = L0_1(L1_1)
ServerProperty = L0_1
L0_1 = require
L1_1 = "server.Hooks"
L0_1 = L0_1(L1_1)
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = tonumber
  L3_2 = A1_2.id
  L2_2 = L2_2(L3_2)
  A0_2.id = L2_2
  A0_2.propertyData = A1_2
  L2_2 = A0_2.propertyData
  L3_2 = {}
  L2_2.additionalLocks = L3_2
  L2_2 = {}
  A0_2.playersInside = L2_2
  L2_2 = {}
  A0_2.playersWatchingCam = L2_2
  L2_2 = {}
  A0_2.playersDoorbell = L2_2
  L2_2 = {}
  A0_2.inventories = L2_2
  L2_2 = A1_2.metadata
  if L2_2 then
    L2_2 = L2_2.points
  end
  if L2_2 then
    L2_2 = pairs
    L3_2 = A1_2.metadata
    L3_2 = L3_2.points
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2
      if L8_2 then
        L8_2 = L8_2.name
      end
      if "OpenInventory" == L8_2 then
        L8_2 = Config
        L8_2 = L8_2.DefaultSlots
        L9_2 = Config
        L9_2 = L9_2.DefaultWeight
        L10_2 = "property_"
        L11_2 = A1_2.id
        L12_2 = "_interactable_point_"
        L13_2 = L6_2
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
        L11_2 = A1_2.metadata
        if L11_2 then
          L11_2 = L11_2.inventoryData
        end
        if L11_2 then
          L11_2 = A1_2.metadata
          if L11_2 then
            L11_2 = L11_2.inventoryData
          end
          L8_2 = L11_2.slots
          L11_2 = A1_2.metadata
          if L11_2 then
            L11_2 = L11_2.inventoryData
          end
          L9_2 = L11_2.weight
        end
        L11_2 = RegisterStash
        if L11_2 then
          L11_2 = lib
          L11_2 = L11_2.print
          L11_2 = L11_2.debug
          L12_2 = "Registering stash for property %s with slots %s and weight %s at coords %s"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = A1_2.id
          L15_2 = L8_2
          L16_2 = L9_2
          L17_2 = json
          L17_2 = L17_2.encode
          L18_2 = L7_2.coords
          L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L17_2(L18_2)
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          L11_2 = RegisterStash
          L12_2 = L10_2
          L13_2 = L7_2.label
          L14_2 = L8_2
          L15_2 = L9_2
          L16_2 = L7_2.coords
          if L16_2 then
            L16_2 = L16_2.xyz
          end
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        end
        L11_2 = A0_2.inventories
        L12_2 = A0_2.inventories
        L12_2 = #L12_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L13_2.id = L10_2
        L14_2 = L7_2.label
        L13_2.label = L14_2
        L14_2 = L7_2.coords
        if L14_2 then
          L14_2 = L14_2.xyz
        end
        L13_2.coords = L14_2
        L13_2.slots = L8_2
        L13_2.weight = L9_2
        L11_2[L12_2] = L13_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.getFurniture
  L4_2 = "all"
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.InteractableProps
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = {}
  L5_2 = "inside"
  L6_2 = "outside"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = pairs
    L10_2 = L2_2[L8_2]
    if not L10_2 then
      L10_2 = {}
    end
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = Config
      L15_2 = L15_2.InteractableProps
      L16_2 = L14_2[2]
      L15_2 = L15_2[L16_2]
      if L15_2 then
        L15_2 = L14_2[5]
        if L15_2 then
          L15_2 = A0_2.propertyData
          L15_2 = L15_2.additionalLocks
          L16_2 = A0_2.propertyData
          L16_2 = L16_2.additionalLocks
          L16_2 = #L16_2
          L16_2 = L16_2 + 1
          L17_2 = {}
          L18_2 = "furni_"
          L19_2 = L13_2
          L18_2 = L18_2 .. L19_2
          L17_2.id = L18_2
          L18_2 = L14_2[3]
          L17_2.label = L18_2
          L15_2[L16_2] = L17_2
        end
        L15_2 = Config
        L15_2 = L15_2.InteractableProps
        L16_2 = L14_2[2]
        L15_2 = L15_2[L16_2]
        L15_2 = L15_2.inventory
        if L15_2 then
          L15_2 = Config
          L15_2 = L15_2.InteractableProps
          L16_2 = L14_2[2]
          L15_2 = L15_2[L16_2]
          L15_2 = L15_2.inventory
          L16_2 = "property_"
          L17_2 = A1_2.id
          L18_2 = "_furni_"
          L19_2 = L13_2
          L20_2 = "_"
          L21_2 = L8_2
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
          L17_2 = RegisterStash
          if L17_2 then
            L17_2 = Config
            L17_2 = L17_2.Inventory
            if "ox_inventory" == L17_2 then
              L17_2 = "property_"
              L18_2 = A1_2.id
              L19_2 = "_furni_"
              L20_2 = L14_2[1]
              L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
              L18_2 = MySQL
              L18_2 = L18_2.query
              L18_2 = L18_2.await
              L19_2 = "SELECT * FROM ox_inventory WHERE name = ? AND name NOT LIKE '%_inside' AND name NOT LIKE '%_outside'"
              L20_2 = {}
              L21_2 = L17_2
              L20_2[1] = L21_2
              L18_2 = L18_2(L19_2, L20_2)
              if L18_2 then
                L19_2 = #L18_2
                if L19_2 > 0 then
                  L19_2 = pcall
                  L20_2 = MySQL
                  L20_2 = L20_2.update
                  L21_2 = "UPDATE ox_inventory SET name = ? WHERE name = ? AND name NOT LIKE '%_inside' AND name NOT LIKE '%_outside'"
                  L22_2 = {}
                  L23_2 = L16_2
                  L24_2 = L17_2
                  L22_2[1] = L23_2
                  L22_2[2] = L24_2
                  L19_2 = L19_2(L20_2, L21_2, L22_2)
                  if L19_2 then
                    L20_2 = lib
                    L20_2 = L20_2.print
                    L20_2 = L20_2.debug
                    L21_2 = "Renamed inventory: "
                    L22_2 = L17_2
                    L23_2 = " to: "
                    L24_2 = L16_2
                    L21_2 = L21_2 .. L22_2 .. L23_2 .. L24_2
                    L20_2(L21_2)
                  else
                    L20_2 = lib
                    L20_2 = L20_2.print
                    L20_2 = L20_2.error
                    L21_2 = "Failed to rename inventory: "
                    L22_2 = L17_2
                    L23_2 = " to: "
                    L24_2 = L16_2
                    L21_2 = L21_2 .. L22_2 .. L23_2 .. L24_2
                    L20_2(L21_2)
                  end
                end
              end
            end
            L17_2 = A0_2.propertyData
            L17_2 = L17_2.type
            if "shell" == L17_2 and "inside" == L8_2 then
              L18_2 = A0_2
              L17_2 = A0_2.getEnterCoords
              L17_2 = L17_2(L18_2)
              if L17_2 then
                L18_2 = vec3
                L19_2 = L17_2.x
                L20_2 = L17_2.y
                L21_2 = Config
                L21_2 = L21_2.ShellZLevel
                L18_2 = L18_2(L19_2, L20_2, L21_2)
                L19_2 = vec3
                L20_2 = L18_2.x
                L21_2 = L18_2.y
                L22_2 = L18_2.z
                L19_2 = L19_2(L20_2, L21_2, L22_2)
                L20_2 = vec3
                L21_2 = L14_2[6]
                L21_2 = L21_2[1]
                L22_2 = L14_2[6]
                L22_2 = L22_2[2]
                L23_2 = L14_2[6]
                L23_2 = L23_2[3]
                L20_2 = L20_2(L21_2, L22_2, L23_2)
                L19_2 = L19_2 + L20_2
                L20_2 = lib
                L20_2 = L20_2.print
                L20_2 = L20_2.debug
                L21_2 = "Registering object stash for property %s with slots %s and weight %s at coords %s (furniture stash)"
                L22_2 = L21_2
                L21_2 = L21_2.format
                L23_2 = A1_2.id
                L24_2 = L15_2.slots
                L25_2 = L15_2.weight
                L26_2 = json
                L26_2 = L26_2.encode
                L27_2 = L19_2
                L26_2, L27_2 = L26_2(L27_2)
                L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L20_2 = RegisterStash
                L21_2 = L16_2
                L22_2 = L14_2[3]
                L23_2 = L15_2.slots
                L24_2 = L15_2.weight
                L25_2 = L19_2
                L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
              end
            else
              L17_2 = vec3
              L18_2 = L14_2[6]
              L18_2 = L18_2[1]
              L19_2 = L14_2[6]
              L19_2 = L19_2[2]
              L20_2 = L14_2[6]
              L20_2 = L20_2[3]
              L17_2 = L17_2(L18_2, L19_2, L20_2)
              L18_2 = lib
              L18_2 = L18_2.print
              L18_2 = L18_2.debug
              L19_2 = "Registering object stash with name %s for property %s with slots %s and weight %s at coords %s (furniture stash)"
              L20_2 = L19_2
              L19_2 = L19_2.format
              L21_2 = L16_2
              L22_2 = A1_2.id
              L23_2 = L15_2.slots
              L24_2 = L15_2.weight
              L25_2 = json
              L25_2 = L25_2.encode
              L26_2 = L17_2
              L25_2, L26_2, L27_2 = L25_2(L26_2)
              L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
              L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
              L18_2 = RegisterStash
              L19_2 = L16_2
              L20_2 = L14_2[3]
              L21_2 = L15_2.slots
              L22_2 = L15_2.weight
              L23_2 = L17_2
              L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
            end
          end
          L17_2 = A0_2.inventories
          L18_2 = A0_2.inventories
          L18_2 = #L18_2
          L18_2 = L18_2 + 1
          L19_2 = {}
          L19_2.id = L16_2
          L20_2 = L14_2[3]
          L19_2.label = L20_2
          L20_2 = L14_2[6]
          L19_2.coords = L20_2
          L20_2 = L15_2.slots
          L19_2.slots = L20_2
          L20_2 = L15_2.weight
          L19_2.weight = L20_2
          L17_2[L18_2] = L19_2
        end
      end
    end
  end
  L3_2 = A0_2.propertyData
  L3_2.furniture = nil
  L3_2 = AddLoadedProperty
  L4_2 = A0_2.id
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.sync
  L3_2(L4_2)
  return A0_2
end
L1_1.constructor = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.propertyData
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if "metadata" == L6_2 then
      L8_2 = {}
      L1_2.metadata = L8_2
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        if "images" ~= L12_2 and "description" ~= L12_2 and "tags" ~= L12_2 and "doorLocked" ~= L12_2 then
          L14_2 = L1_2.metadata
          L14_2[L12_2] = L13_2
        end
      end
    elseif "rentData" == L6_2 and L7_2 then
      L8_2 = {}
      L1_2.rentData = L8_2
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        if "rentData" ~= L12_2 then
          L14_2 = L1_2.rentData
          L14_2[L12_2] = L13_2
        end
      end
    elseif "additionalLocks" ~= L6_2 and "purchaseDate" ~= L6_2 and "purchasePrice" ~= L6_2 and "doorLocked" ~= L6_2 then
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L1_1.getFilteredPropertyData = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GlobalState
  L2_2 = "property.%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.getFilteredPropertyData
  L3_2 = L3_2(L4_2)
  L1_2[L2_2] = L3_2
end
L1_1.sync = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.sync
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = A0_2.id
  L2_2.property_id = L3_2
  L3_2 = {}
  L3_2.label = true
  L3_2.keyHolders = true
  L3_2.metadata = true
  L3_2.furniture = true
  L3_2.buildingId = true
  L3_2.forSale = true
  L3_2.forRent = true
  L3_2.forMortgage = true
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2.propertyData
    L1_3 = L1_3[A0_3]
    if nil ~= L1_3 then
      L1_3 = L3_2
      L1_3 = L1_3[A0_3]
      if L1_3 then
        L1_3 = L2_2
        L2_3 = A0_2.propertyData
        L2_3 = L2_3[A0_3]
        L1_3[A0_3] = L2_3
      end
    end
  end
  if nil == A1_2 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L4_2
      L12_2 = L9_2
      L11_2(L12_2)
    end
  else
    L5_2 = type
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if "string" == L5_2 then
      L5_2 = L4_2
      L6_2 = A1_2
      L5_2(L6_2)
    else
      L5_2 = type
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if "table" == L5_2 then
        L5_2 = ipairs
        L6_2 = A1_2
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L4_2
          L12_2 = L10_2
          L11_2(L12_2)
        end
      end
    end
  end
  L5_2 = PropertySQL
  L5_2 = L5_2.UpdateProperty
  L6_2 = L2_2
  L5_2(L6_2)
end
L1_1.save = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A0_2.playersInside
  L4_2 = A0_2.playersInside
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A1_2
  L3_2 = A0_2.propertyData
  L3_2 = L3_2.type
  if "ipl" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.IplsUseRoutingBuckets
    if not L3_2 then
      L3_2 = lib
      L3_2 = L3_2.triggerClientEvent
      L4_2 = "nolag_properties:client:concealPlayers"
      L5_2 = A0_2.playersInside
      L6_2 = A0_2.playersInside
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = Player
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "propertyId"
  L6_2 = A0_2.id
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = PlayersInProperties
  L4_2 = A0_2.id
  L3_2[A1_2] = L4_2
  L3_2 = L2_2.setMeta
  if L3_2 then
    L3_2 = L2_2.setMeta
    L4_2 = "insideProperty"
    L5_2 = A0_2.id
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.propertyData
  L3_2 = L3_2.type
  L4_2 = Config
  L4_2 = L4_2.ShellUseRoutingBuckets
  L5_2 = Config
  L5_2 = L5_2.IplsUseRoutingBuckets
  if L4_2 and "shell" == L3_2 or L5_2 and "ipl" == L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.debug
    L4_2 = "%s [%s] is being put in bucket %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = GetPlayerName
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = A1_2
    L8_2 = A0_2.id
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = SetPlayerRoutingBucket
    L4_2 = A1_2
    L5_2 = tonumber
    L6_2 = A0_2.id
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = Player
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L4_2 = L3_2
    L3_2 = L3_2.set
    L5_2 = "routingBucket"
    L6_2 = tonumber
    L7_2 = A0_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = PropertySQL
  L3_2 = L3_2.updateLastEntered
  L4_2 = A0_2.id
  L3_2(L4_2)
end
L1_1.playerEnter = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = 1
  L4_2 = A0_2.playersInside
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.playersInside
    L7_2 = L7_2[L6_2]
    if L7_2 == A1_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2.playersInside
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      break
    end
  end
  L3_2 = A0_2.propertyData
  L3_2 = L3_2.type
  if "ipl" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.IplsUseRoutingBuckets
    if not L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "nolag_properties:client:revealPlayers"
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L3_2 = lib
      L3_2 = L3_2.triggerClientEvent
      L4_2 = "nolag_properties:client:concealPlayers"
      L5_2 = A0_2.playersInside
      L6_2 = A0_2.playersInside
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = Player
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "propertyId"
  L6_2 = nil
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = PlayersInProperties
  L3_2[A1_2] = nil
  L3_2 = L2_2.clearMeta
  if L3_2 then
    L3_2 = L2_2.clearMeta
    L4_2 = "insideProperty"
    L3_2(L4_2)
  end
    L3_2 = A0_2.propertyData
    L3_2 = L3_2.type
    L4_2 = Config
    L4_2 = L4_2.ShellUseRoutingBuckets
    L4_2 = L4_2 and "shell" == L3_2
    if not L4_2 then
      L4_2 = Config
      L4_2 = L4_2.IplsUseRoutingBuckets
      L4_2 = L4_2 and "ipl" == L3_2
    end
    if L4_2 then
      L4_2 = lib
      L4_2 = L4_2.print
      L4_2 = L4_2.debug
      L5_2 = "%s [%s] is being put in bucket 0"
      L6_2 = L5_2
      L5_2 = L5_2.format
      L7_2 = GetPlayerName
      L8_2 = A1_2
      L7_2 = L7_2(L8_2)
      L8_2 = A1_2
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L4_2 = SetPlayerRoutingBucket
      L5_2 = A1_2
      L6_2 = 0
      L4_2(L5_2, L6_2)
      L4_2 = Player
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.state
      L5_2 = L4_2
      L4_2 = L4_2.set
      L6_2 = "routingBucket"
      L7_2 = 0
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L1_1.playerExit = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.propertyData
  L1_2 = L1_2.buildingId
  if L1_2 then
    L1_2 = LoadedBuildings
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.buildingId
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = LoadedBuildings
      L2_2 = A0_2.propertyData
      L2_2 = L2_2.buildingId
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.metadata
      L1_2 = L1_2.enterData
      return L1_2
  end
  else
    L1_2 = A0_2.propertyData
    L1_2 = L1_2.metadata
    L1_2 = L1_2.enterData
    if L1_2 then
      L1_2 = A0_2.propertyData
      L1_2 = L1_2.metadata
      L1_2 = L1_2.enterData
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L1_1.getEnterCoords = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.propertyData
  L1_2 = L1_2.buildingId
  if L1_2 then
    L1_2 = LoadedBuildings
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.buildingId
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = LoadedBuildings
      L2_2 = A0_2.propertyData
      L2_2 = L2_2.buildingId
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.metadata
      L1_2 = L1_2.exitCoords
      return L1_2
  end
  else
    L1_2 = A0_2.propertyData
    L1_2 = L1_2.metadata
    L1_2 = L1_2.exitCoords
    if L1_2 then
      L1_2 = A0_2.propertyData
      L1_2 = L1_2.metadata
      L1_2 = L1_2.exitCoords
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L1_1.getExitCoords = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = Config
  L2_2 = L2_2.InactivityDays
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    return
  end
  L1_2 = A0_2.propertyData
  L1_2 = L1_2.forSale
  if L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.StarterApartment
  L1_2 = L1_2.DisableInactivity
  if L1_2 then
    L1_2 = A0_2.propertyData
    L1_2 = L1_2.metadata
    if L1_2 then
      L1_2 = L1_2.isStarter
    end
    if L1_2 then
      return
    end
  end
  L1_2 = PropertySQL
  L1_2 = L1_2.checkLastEntered
  L2_2 = A0_2.id
  L3_2 = Config
  L3_2 = L3_2.InactivityDays
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = Logs
    L2_2 = L2_2.SetPropertyForSale
    L3_2 = A0_2.id
    L2_2(L3_2)
    L2_2 = A0_2.propertyData
    L2_2.forSale = true
    L3_2 = A0_2
    L2_2 = A0_2.save
    L4_2 = "forSale"
    L2_2(L3_2, L4_2)
  end
end
L1_1.checkLastEntered = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = Config
  L2_2 = L2_2.InactivityDaysForRent
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    return
  end
  L1_2 = A0_2.propertyData
  L1_2 = L1_2.rentData
  if L1_2 then
    L1_2 = L1_2.autoRenew
  end
  if not L1_2 then
    return
  end
  L1_2 = PropertySQL
  L1_2 = L1_2.checkLastEntered
  L2_2 = A0_2.id
  L3_2 = Config
  L3_2 = L3_2.InactivityDaysForRent
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.rentData
    L2_2.autoRenew = false
    L3_2 = A0_2
    L2_2 = A0_2.save
    L4_2 = "rentData"
    L2_2(L3_2, L4_2)
  end
end
L1_1.checkRentInactivity = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    L5_2 = locale
    L6_2 = "error_invalid_player"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
    return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  end
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.forSale
  if not L4_2 then
    L4_2 = false
    L5_2 = "Property is not for sale"
    return L4_2, L5_2
  end
  L4_2 = L0_1
  L5_2 = "buyProperty"
  L6_2 = {}
  L6_2.source = A1_2
  L6_2.player = L3_2
  L7_2 = A0_2.id
  L6_2.propertyId = L7_2
  L6_2.buyAs = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = false
    L5_2 = "You are not authorized to buy this property"
    return L4_2, L5_2
  end
  L4_2 = A0_2.propertyData
  if L4_2 then
    L4_2 = L4_2.rentData
  end
  if L4_2 then
    L4_2 = L4_2.identifier
  end
  if L4_2 then
    L4_2 = false
    L5_2 = "Someone is renting this property, you cannot buy it"
    return L4_2, L5_2
  end
  if "society" == A2_2 then
    L4_2 = Config
    L4_2 = L4_2.DisableSocietyBuying
    if L4_2 then
      L4_2 = false
      L5_2 = "Society buying is disabled"
      return L4_2, L5_2
    end
  end
  if "society" == A2_2 then
    L4_2 = Config
    L4_2 = L4_2.RequireBossGradeForSocietyBuying
    if L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.IsSocietyBoss
      L5_2 = L3_2
      L6_2 = L3_2.job
      L6_2 = L6_2.name
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L4_2 = false
        L5_2 = locale
        L6_2 = "property_not_society_boss"
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
        return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
      end
    end
  end
  if "society" == A2_2 then
    L4_2 = L3_2.job
    L4_2 = L4_2.name
    L5_2 = A0_2.propertyData
    L5_2 = L5_2.owner
    if L4_2 == L5_2 then
      L4_2 = false
      L5_2 = "You own this property"
      return L4_2, L5_2
    end
  elseif "user" == A2_2 then
    L4_2 = L3_2.identifier
    L5_2 = A0_2.propertyData
    L5_2 = L5_2.owner
    if L4_2 == L5_2 then
      L4_2 = false
      L5_2 = "You own this property"
      return L4_2, L5_2
    end
  end
  if "user" == A2_2 then
    L4_2 = Config
    L4_2 = L4_2.PropertyLimitOverrides
    L5_2 = L3_2.identifier
    L4_2 = L4_2[L5_2]
    L5_2 = L4_2 or L5_2
    if not L4_2 then
      L5_2 = Config
      L5_2 = L5_2.MaxPropertiesPerPlayer
    end
    L6_2 = GetPlayerPropertiesAmount
    L7_2 = L3_2.identifier
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = type
      L8_2 = Config
      L8_2 = L8_2.MaxPropertiesPerPlayer
      L7_2 = L7_2(L8_2)
      if "number" == L7_2 and L5_2 <= L6_2 then
        L7_2 = false
        L8_2 = locale
        L9_2 = "property_max_properties_reached"
        L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
        return L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
      end
    end
  end
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.price
  if "society" == A2_2 then
    L5_2 = L3_2.job
    L5_2 = L5_2.name
    if not L5_2 then
      L5_2 = L3_2.identifier
    end
  else
    L5_2 = L3_2.identifier
  end
  L6_2 = RemoveMoney
  L7_2 = A2_2
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = L3_2.identifier
  L11_2 = "Bought a property "
  L12_2 = A0_2.id
  L11_2 = L11_2 .. L12_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  if L6_2 then
    L6_2 = AddMoney
    L7_2 = A0_2.propertyData
    L7_2 = L7_2.ownerType
    L8_2 = A0_2.propertyData
    L8_2 = L8_2.owner
    L9_2 = L4_2
    L10_2 = L3_2.identifier
    L11_2 = "Sold a property "
    L12_2 = A0_2.id
    L11_2 = L11_2 .. L12_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2.propertyData
    L6_2.owner = L5_2
    L6_2 = A0_2.propertyData
    L6_2.ownerType = A2_2
    L6_2 = PropertySQL
    L6_2 = L6_2.SetOwner
    L7_2 = A0_2.id
    L8_2 = A2_2
    L9_2 = L5_2
    L10_2 = L4_2
    L11_2 = "Bought the property"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = A0_2.propertyData
    L6_2.purchasePrice = L4_2
    L6_2 = A0_2.propertyData
    L6_2.forSale = false
    L6_2 = A0_2.propertyData
    L6_2.forRent = false
    L7_2 = A0_2
    L6_2 = A0_2.save
    L8_2 = {}
    L9_2 = "forSale"
    L10_2 = "forRent"
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L6_2(L7_2, L8_2)
    L6_2 = Logs
    L6_2 = L6_2.BuyProperty
    L7_2 = L3_2.identifier
    L8_2 = A0_2.id
    L9_2 = L4_2
    L10_2 = A0_2.propertyData
    L10_2 = L10_2.label
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = true
    return L6_2
  else
    L6_2 = false
    L7_2 = "Not enough money"
    return L6_2, L7_2
  end
end
L1_1.buy = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    L6_2 = "Invalid player"
    return L5_2, L6_2
  end
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorized
  L6_2 = L4_2
  L7_2 = "transfer"
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = false
    L6_2 = "You are not authorized to transfer this property"
    return L5_2, L6_2
  end
  L5_2 = A0_2.propertyData
  L5_2.owner = A3_2
  L5_2 = A0_2.propertyData
  L5_2.ownerType = A2_2
  L6_2 = A0_2
  L5_2 = A0_2.save
  L7_2 = nil
  L5_2(L6_2, L7_2)
  L5_2 = PropertySQL
  L5_2 = L5_2.SetOwner
  L6_2 = A0_2.id
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A0_2.propertyData
  L9_2 = L9_2.purchasePrice
  L10_2 = "Transferred the property"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = true
  L6_2 = locale
  L7_2 = "success_property_transferred"
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
end
L1_1.transfer = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "Invalid player"
    return L3_2, L4_2
  end
  L3_2 = Config
  L3_2 = L3_2.StarterApartment
  L3_2 = L3_2.DisableForceSale
  if L3_2 then
    L3_2 = A0_2.propertyData
    L3_2 = L3_2.metadata
    if L3_2 then
      L3_2 = L3_2.isStarter
    end
    if L3_2 then
      L3_2 = false
      L4_2 = locale
      L5_2 = "property_cannot_sell_starter"
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
      return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    end
  end
  L3_2 = A0_2.propertyData
  L3_2 = L3_2.purchasePrice
  if not L3_2 then
    L4_2 = false
    L5_2 = "Property has not been purchased"
    return L4_2, L5_2
  end
  L4_2 = Config
  L4_2 = L4_2.SellPercentage
  L4_2 = L3_2 * L4_2
  L4_2 = L4_2 / 100
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.ownerType
  L6_2 = Config
  L6_2 = L6_2.DefaultBuyerType
  if L5_2 == L6_2 then
    L5_2 = A0_2.propertyData
    L5_2 = L5_2.owner
    L6_2 = Config
    L6_2 = L6_2.DefaultBuyerIdentifier
    if L5_2 == L6_2 then
      L5_2 = false
      L6_2 = locale
      L7_2 = "property_sell_failed"
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
      return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    end
  end
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.ownerType
  if "society" == L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.IsSocietyBoss
    L6_2 = L2_2
    L7_2 = A0_2.propertyData
    L7_2 = L7_2.owner
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = false
      L6_2 = locale
      L7_2 = "property_not_society_boss"
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
      return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    end
  else
    L5_2 = A0_2.propertyData
    L5_2 = L5_2.ownerType
    if "user" == L5_2 then
      L5_2 = A0_2.propertyData
      L5_2 = L5_2.owner
      L6_2 = L2_2.identifier
      if L5_2 ~= L6_2 then
        L5_2 = false
        L6_2 = locale
        L7_2 = "property_not_owner"
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
        return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
      end
    end
  end
  L5_2 = Config
  L5_2 = L5_2.RequireDefaultSellToBuy
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.SellPercentageForTheGovernment
    L5_2 = L4_2 * L5_2
    L5_2 = L5_2 / 100
    L6_2 = RemoveMoneyFromDefaultSeller
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = false
      L7_2 = locale
      L8_2 = "property_buyer_doesnt_have_money"
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
      return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    end
  end
  L5_2 = AddMoney
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.ownerType
  L7_2 = A0_2.propertyData
  L7_2 = L7_2.owner
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = L2_2.identifier
  L10_2 = locale
  L11_2 = "property_sold_to_government"
  L10_2, L11_2 = L10_2(L11_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2.propertyData
  L6_2 = Config
  L6_2 = L6_2.DefaultBuyerIdentifier
  L5_2.owner = L6_2
  L5_2 = A0_2.propertyData
  L6_2 = Config
  L6_2 = L6_2.DefaultBuyerType
  L5_2.ownerType = L6_2
  L5_2 = A0_2.propertyData
  L5_2.forSale = true
  L5_2 = A0_2.propertyData
  L5_2.forRent = false
  L5_2 = A0_2.propertyData
  L6_2 = {}
  L5_2.keyHolders = L6_2
  L5_2 = Config
  L5_2 = L5_2.ResetPropertyPriceOnSell
  if L5_2 then
    L5_2 = PropertySQL
    L5_2 = L5_2.SetPrice
    L6_2 = A0_2.id
    L7_2 = A0_2.propertyData
    L7_2 = L7_2.purchasePrice
    L8_2 = L2_2.getName
    L8_2 = L8_2()
    L9_2 = "Sold the property"
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2.propertyData
    L6_2 = A0_2.propertyData
    L6_2 = L6_2.purchasePrice
    L5_2.price = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.save
  L7_2 = nil
  L5_2(L6_2, L7_2)
  L5_2 = PropertySQL
  L5_2 = L5_2.SetOwner
  L6_2 = A0_2.id
  L7_2 = Config
  L7_2 = L7_2.DefaultBuyerType
  L8_2 = Config
  L8_2 = L8_2.DefaultBuyerIdentifier
  L9_2 = L4_2
  L10_2 = "Sold to government"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = UpdateDoorlocks
  L6_2 = A0_2.id
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "nolag_properties:client:sellProperty"
  L7_2 = -1
  L8_2 = A0_2.id
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Logs
  L5_2 = L5_2.SellProperty
  L6_2 = L2_2.identifier
  L7_2 = A0_2.id
  L5_2(L6_2, L7_2)
  L5_2 = true
  return L5_2
end
L1_1.sell = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L5_2 = Framework
  L5_2 = L5_2.GetPlayerFromId
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = false
    L7_2 = "Invalid player"
    return L6_2, L7_2
  end
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.forRent
  if not L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "property_not_for_rent"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  end
  L6_2 = L0_1
  L7_2 = "rentProperty"
  L8_2 = {}
  L8_2.source = A1_2
  L8_2.player = L5_2
  L9_2 = A0_2.id
  L8_2.propertyId = L9_2
  L8_2.rentAs = A2_2
  L8_2.rentDays = A3_2
  L8_2.autoRenew = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = false
    L7_2 = "You are not authorized to rent this property"
    return L6_2, L7_2
  end
  if "society" == A2_2 then
    L6_2 = Config
    L6_2 = L6_2.DisableSocietyRenting
    if L6_2 then
      L6_2 = false
      L7_2 = "Society renting is disabled"
      return L6_2, L7_2
    end
  end
  if "society" == A2_2 then
    L6_2 = Config
    L6_2 = L6_2.RequireBossGradeForSocietyRenting
    if L6_2 then
      L6_2 = Framework
      L6_2 = L6_2.IsSocietyBoss
      L7_2 = L5_2
      L8_2 = L5_2.job
      L8_2 = L8_2.name
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = false
        L7_2 = locale
        L8_2 = "property_not_society_boss"
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
        return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
      end
    end
  end
  if "society" == A2_2 then
    L6_2 = L5_2.job
    L6_2 = L6_2.name
    L7_2 = A0_2.propertyData
    L7_2 = L7_2.owner
    if L6_2 == L7_2 then
      L6_2 = false
      L7_2 = locale
      L8_2 = "notify_you_own_this_property"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
      return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
    end
  elseif "user" == A2_2 then
    L6_2 = L5_2.identifier
    L7_2 = A0_2.propertyData
    L7_2 = L7_2.owner
    if L6_2 == L7_2 then
      L6_2 = false
      L7_2 = locale
      L8_2 = "notify_you_own_this_property"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
      return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
    end
  end
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.forRent
  if not L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "property_not_for_rent"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  end
  L6_2 = Config
  L6_2 = L6_2.MaxRentDays
  if A3_2 > L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "property_rent_max_days_exceeded"
    L9_2 = Config
    L9_2 = L9_2.MaxRentDays
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2, L9_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  end
  L6_2 = A0_2.propertyData
  if L6_2 then
    L6_2 = L6_2.rentData
  end
  if L6_2 then
    L6_2 = L6_2.identifier
  end
  if L6_2 then
    L6_2 = false
    L7_2 = "Someone is already renting this property"
    return L6_2, L7_2
  end
  if "user" == A2_2 then
    L6_2 = Config
    L6_2 = L6_2.PropertyRentLimitOverrides
    L7_2 = L5_2.identifier
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2 or L7_2
    if not L6_2 then
      L7_2 = Config
      L7_2 = L7_2.MaxRentsPerPlayer
    end
    L8_2 = GetPlayerRentsAmount
    L9_2 = L5_2.identifier
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = type
      L10_2 = Config
      L10_2 = L10_2.MaxRentsPerPlayer
      L9_2 = L9_2(L10_2)
      if "number" == L9_2 and L7_2 <= L8_2 then
        L9_2 = false
        L10_2 = locale
        L11_2 = "property_max_rents_reached"
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2)
        return L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
      end
    end
  end
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.rentPrice
  L6_2 = L6_2 * A3_2
  L7_2 = os
  L7_2 = L7_2.date
  L8_2 = "%Y-%m-%d"
  L7_2 = L7_2(L8_2)
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = "%Y-%m-%d"
  L10_2 = os
  L10_2 = L10_2.time
  L10_2 = L10_2()
  L11_2 = 86400 * A3_2
  L10_2 = L10_2 + L11_2
  L8_2 = L8_2(L9_2, L10_2)
  if "society" == A2_2 then
    L9_2 = L5_2.job
    L9_2 = L9_2.name
    if not L9_2 then
      L9_2 = L5_2.identifier
    end
  else
    L9_2 = L5_2.identifier
  end
  L10_2 = RemoveMoney
  L11_2 = A2_2
  L12_2 = L9_2
  L13_2 = L6_2
  L14_2 = L5_2.identifier
  L15_2 = "Rent property "
  L16_2 = A0_2.id
  L15_2 = L15_2 .. L16_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  if L10_2 then
    L10_2 = AddMoney
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.ownerType
    L12_2 = A0_2.propertyData
    L12_2 = L12_2.owner
    L13_2 = L6_2
    L14_2 = L5_2.identifier
    L15_2 = "Rent property "
    L16_2 = A0_2.id
    L15_2 = L15_2 .. L16_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = A0_2.propertyData
    L11_2 = {}
    L11_2.type = A2_2
    L11_2.identifier = L9_2
    L11_2.rentedFrom = L7_2
    L11_2.rentedTo = L8_2
    L11_2.rentedPrice = L6_2
    L12_2 = A4_2 or L12_2
    if not A4_2 then
      L12_2 = false
    end
    L11_2.autoRenew = L12_2
    L12_2 = {}
    L13_2 = {}
    L14_2 = os
    L14_2 = L14_2.date
    L15_2 = "%Y-%m-%d"
    L14_2 = L14_2(L15_2)
    L13_2.actionDate = L14_2
    L14_2 = locale
    L15_2 = "property_rent_action_first"
    L14_2 = L14_2(L15_2)
    L13_2.action = L14_2
    L13_2.rentedFrom = L7_2
    L13_2.rentedTo = L8_2
    L13_2.rentedPrice = L6_2
    L12_2[1] = L13_2
    L11_2.rentData = L12_2
    L10_2.rentData = L11_2
    L10_2 = PropertySQL
    L10_2 = L10_2.SetRenter
    L11_2 = A0_2.id
    L12_2 = A2_2
    L13_2 = L9_2
    L14_2 = A0_2.propertyData
    L14_2 = L14_2.rentData
    L14_2 = L14_2.rentData
    L15_2 = L7_2
    L16_2 = L8_2
    L17_2 = L6_2
    L18_2 = A4_2 or L18_2
    if not A4_2 then
      L18_2 = false
    end
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if not L10_2 then
      L11_2 = false
      L12_2 = "Failed to rent the property"
      return L11_2, L12_2
    end
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.rentData
    L11_2.id = L10_2
    L12_2 = A0_2
    L11_2 = A0_2.sync
    L11_2(L12_2)
    L11_2 = TriggerClientEvent
    L12_2 = "nolag_properties:client:propertyDataUpdated"
    L13_2 = -1
    L14_2 = A0_2.id
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = Logs
    L11_2 = L11_2.RentProperty
    L12_2 = L5_2.identifier
    L13_2 = A0_2.id
    L14_2 = L6_2
    L15_2 = A0_2.propertyData
    L15_2 = L15_2.label
    L16_2 = L8_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = true
    return L11_2
  else
    L10_2 = false
    L11_2 = locale
    L12_2 = "property_renter_doesnt_have_money"
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2)
    return L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  end
end
L1_1.rent = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    L5_2 = "Invalid player"
    return L4_2, L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.isRenter
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = false
    L5_2 = "You are not a renter of this property"
    return L4_2, L5_2
  end
  L4_2 = Config
  L4_2 = L4_2.MaxRentDays
  if A2_2 > L4_2 then
    L4_2 = false
    L5_2 = locale
    L6_2 = "property_rent_max_days_exceeded"
    L7_2 = Config
    L7_2 = L7_2.MaxRentDays
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2, L7_2)
    return L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  end
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.rentPrice
  L4_2 = L4_2 * A2_2
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.rentData
  L5_2 = L5_2.rentedTo
  L6_2 = os
  L6_2 = L6_2.time
  L7_2 = {}
  L8_2 = tonumber
  L10_2 = L5_2
  L9_2 = L5_2.sub
  L11_2 = 1
  L12_2 = 4
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2.year = L8_2
  L8_2 = tonumber
  L10_2 = L5_2
  L9_2 = L5_2.sub
  L11_2 = 6
  L12_2 = 7
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2.month = L8_2
  L8_2 = tonumber
  L10_2 = L5_2
  L9_2 = L5_2.sub
  L11_2 = 9
  L12_2 = 10
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2.day = L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = os
  L7_2 = L7_2.date
  L8_2 = "%Y-%m-%d"
  L9_2 = 86400 * A2_2
  L9_2 = L6_2 + L9_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.rentData
  L8_2 = L8_2.type
  if "society" == L8_2 then
    L9_2 = L3_2.job
    L9_2 = L9_2.name
    if not L9_2 then
      L9_2 = L3_2.identifier
    end
  else
    L9_2 = L3_2.identifier
  end
  L10_2 = RemoveMoney
  L11_2 = L8_2
  L12_2 = L9_2
  L13_2 = L4_2
  L14_2 = L3_2.identifier
  L15_2 = "Continue to rent a property "
  L16_2 = A0_2.id
  L15_2 = L15_2 .. L16_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  if L10_2 then
    L10_2 = AddMoney
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.ownerType
    L12_2 = A0_2.propertyData
    L12_2 = L12_2.owner
    L13_2 = L4_2
    L14_2 = L3_2.identifier
    L15_2 = "Continue to rent a property "
    L16_2 = A0_2.id
    L15_2 = L15_2 .. L16_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = A0_2.propertyData
    L10_2 = L10_2.rentData
    L10_2.rentedTo = L7_2
    L10_2 = A0_2.propertyData
    L10_2 = L10_2.rentData
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.rentData
    L11_2 = L11_2.rentedPrice
    L11_2 = L11_2 + L4_2
    L10_2.rentedPrice = L11_2
    L10_2 = A0_2.propertyData
    L10_2 = L10_2.rentData
    L10_2 = L10_2.rentData
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.rentData
    L11_2 = L11_2.rentData
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L13_2 = os
    L13_2 = L13_2.date
    L14_2 = "%Y-%m-%d"
    L13_2 = L13_2(L14_2)
    L12_2.actionDate = L13_2
    L13_2 = locale
    L14_2 = "property_rent_action_continue"
    L13_2 = L13_2(L14_2)
    L12_2.action = L13_2
    L12_2.rentedFrom = L5_2
    L12_2.rentedTo = L7_2
    L12_2.rentedPrice = L4_2
    L10_2[L11_2] = L12_2
    L11_2 = A0_2
    L10_2 = A0_2.sync
    L10_2(L11_2)
    L10_2 = PropertySQL
    L10_2 = L10_2.ContinueRent
    L11_2 = A0_2.id
    L12_2 = L7_2
    L13_2 = A0_2.propertyData
    L13_2 = L13_2.rentData
    L13_2 = L13_2.rentedPrice
    L14_2 = A0_2.propertyData
    L14_2 = L14_2.rentData
    L14_2 = L14_2.rentData
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L10_2 = Logs
    L10_2 = L10_2.ExtendRentProperty
    L11_2 = L3_2.identifier
    L12_2 = A0_2.id
    L13_2 = L4_2
    L14_2 = A0_2.propertyData
    L14_2 = L14_2.label
    L15_2 = L5_2
    L16_2 = L7_2
    L17_2 = L8_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L10_2 = true
    return L10_2
  else
    L10_2 = false
    L11_2 = locale
    L12_2 = "property_renter_doesnt_have_money"
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
    return L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  end
end
L1_1.continueRent = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    L5_2 = "Invalid player"
    return L4_2, L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.isRenter
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = false
    L5_2 = "You are not a renter of this property"
    return L4_2, L5_2
  end
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.rentData
  L4_2.autoRenew = A2_2
  L4_2 = PropertySQL
  L4_2 = L4_2.SetAutoRenew
  L5_2 = A0_2.id
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.sync
  L4_2(L5_2)
  L4_2 = true
  return L4_2
end
L1_1.setAutoRenew = L2_1
L1_1 = ServerProperty
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.propertyData
  L1_2 = L1_2.rentData
  if not L1_2 then
    return
  end
  L1_2 = next
  L2_2 = A0_2.propertyData
  L2_2 = L2_2.rentData
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "%Y-%m-%d"
  L1_2 = L1_2(L2_2)
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Processing rents for property: "
  L4_2 = A0_2.id
  L5_2 = " that is rented to: "
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.rentData
  L6_2 = L6_2.rentedTo
  L7_2 = " and today is: "
  L8_2 = L1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2)
  L2_2 = A0_2.propertyData
  L2_2 = L2_2.rentData
  L2_2 = L2_2.autoRenew
  if L2_2 then
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.rentData
    L2_2 = L2_2.rentedTo
    if L2_2 ~= L1_2 then
      return
    end
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.rentPrice
    L3_2 = A0_2.propertyData
    L3_2 = L3_2.rentData
    L3_2 = L3_2.type
    L4_2 = A0_2.propertyData
    L4_2 = L4_2.rentData
    L4_2 = L4_2.identifier
    L5_2 = RemoveMoney
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L2_2
    L9_2 = L4_2
    L10_2 = "Auto renew rent "
    L11_2 = A0_2.id
    L10_2 = L10_2 .. L11_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    if L5_2 then
      L5_2 = AddMoney
      L6_2 = A0_2.propertyData
      L6_2 = L6_2.ownerType
      L7_2 = A0_2.propertyData
      L7_2 = L7_2.owner
      L8_2 = L2_2
      L9_2 = L4_2
      L10_2 = "Auto renew rent "
      L11_2 = A0_2.id
      L10_2 = L10_2 .. L11_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = A0_2.propertyData
      L5_2 = L5_2.rentData
      L5_2 = L5_2.rentedTo
      L6_2 = os
      L6_2 = L6_2.time
      L7_2 = {}
      L8_2 = tonumber
      L10_2 = L5_2
      L9_2 = L5_2.sub
      L11_2 = 1
      L12_2 = 4
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2.year = L8_2
      L8_2 = tonumber
      L10_2 = L5_2
      L9_2 = L5_2.sub
      L11_2 = 6
      L12_2 = 7
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2.month = L8_2
      L8_2 = tonumber
      L10_2 = L5_2
      L9_2 = L5_2.sub
      L11_2 = 9
      L12_2 = 10
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2.day = L8_2
      L6_2 = L6_2(L7_2)
      L7_2 = os
      L7_2 = L7_2.date
      L8_2 = "%Y-%m-%d"
      L9_2 = L6_2 + 86400
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2.propertyData
      L8_2 = L8_2.rentData
      L8_2.rentedTo = L7_2
      L8_2 = A0_2.propertyData
      L8_2 = L8_2.rentData
      L9_2 = A0_2.propertyData
      L9_2 = L9_2.rentData
      L9_2 = L9_2.rentedPrice
      L9_2 = L9_2 + L2_2
      L8_2.rentedPrice = L9_2
      L8_2 = A0_2.propertyData
      L8_2 = L8_2.rentData
      L8_2 = L8_2.rentData
      L9_2 = A0_2.propertyData
      L9_2 = L9_2.rentData
      L9_2 = L9_2.rentData
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L11_2 = os
      L11_2 = L11_2.date
      L12_2 = "%Y-%m-%d"
      L11_2 = L11_2(L12_2)
      L10_2.actionDate = L11_2
      L11_2 = locale
      L12_2 = "property_rent_action_continue"
      L11_2 = L11_2(L12_2)
      L12_2 = " ("
      L13_2 = locale
      L14_2 = "property_rent_action_autorenew"
      L13_2 = L13_2(L14_2)
      L14_2 = ")"
      L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
      L10_2.action = L11_2
      L10_2.rentedFrom = L5_2
      L10_2.rentedTo = L7_2
      L10_2.rentedPrice = L2_2
      L8_2[L9_2] = L10_2
      L9_2 = A0_2
      L8_2 = A0_2.sync
      L8_2(L9_2)
      L8_2 = PropertySQL
      L8_2 = L8_2.ContinueRent
      L9_2 = A0_2.id
      L10_2 = L7_2
      L11_2 = A0_2.propertyData
      L11_2 = L11_2.rentData
      L11_2 = L11_2.rentedPrice
      L12_2 = A0_2.propertyData
      L12_2 = L12_2.rentData
      L12_2 = L12_2.rentData
      L8_2(L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2.cancelRent
      L7_2 = nil
      L8_2 = "auto_cancel"
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L2_2 = A0_2.propertyData
    L2_2 = L2_2.rentData
    L2_2 = L2_2.rentedTo
    if L2_2 then
      L2_2 = A0_2.propertyData
      L2_2 = L2_2.rentData
      L2_2 = L2_2.rentedTo
      if L1_2 > L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.cancelRent
        L4_2 = nil
        L5_2 = "rent_ended"
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L1_1.processRents = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if A1_2 and not L3_2 then
    L4_2 = false
    L5_2 = "Invalid player"
    return L4_2, L5_2
  end
  if "renter" == A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2.isRenter
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = false
      L5_2 = "You are not a renter of this property"
      return L4_2, L5_2
    end
  end
  if "owner" == A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2.isOwner
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = false
      L5_2 = "You are not the owner of this property"
      return L4_2, L5_2
    end
  end
  if "owner" == A2_2 then
    L4_2 = locale
    L5_2 = "property_rent_action_cancel_owner"
    L4_2 = L4_2(L5_2)
  elseif "renter" == A2_2 then
    L4_2 = locale
    L5_2 = "property_rent_action_cancel_renter"
    L4_2 = L4_2(L5_2)
  elseif "rent_ended" == A2_2 then
    L4_2 = locale
    L5_2 = "property_rent_action_cancel_rent_ended"
    L4_2 = L4_2(L5_2)
  else
    L4_2 = locale
    L5_2 = "property_rent_action_cancel_auto_renew"
    L4_2 = L4_2(L5_2)
  end
  L5_2 = Config
  L5_2 = L5_2.RemoveAllKeysOnRentCancel
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.removeAllKeys
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.rentData
  L6_2 = os
  L6_2 = L6_2.date
  L7_2 = "%Y-%m-%d"
  L6_2 = L6_2(L7_2)
  L5_2.canceledAt = L6_2
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.rentData
  L5_2 = L5_2.rentData
  L6_2 = A0_2.propertyData
  L6_2 = L6_2.rentData
  L6_2 = L6_2.rentData
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L7_2 = {}
  L8_2 = os
  L8_2 = L8_2.date
  L9_2 = "%Y-%m-%d"
  L8_2 = L8_2(L9_2)
  L7_2.actionDate = L8_2
  L7_2.action = L4_2
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.rentData
  L8_2 = L8_2.rentedFrom
  L7_2.rentedFrom = L8_2
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.rentData
  L8_2 = L8_2.rentedTo
  L7_2.rentedTo = L8_2
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.rentData
  L8_2 = L8_2.rentedPrice
  L7_2.rentedPrice = L8_2
  L5_2[L6_2] = L7_2
  L5_2 = PropertySQL
  L5_2 = L5_2.CancelRent
  L6_2 = A0_2.id
  L7_2 = A0_2.propertyData
  L7_2 = L7_2.rentData
  L7_2 = L7_2.id
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.rentData
  L8_2 = L8_2.rentData
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Logs
  L5_2 = L5_2.CancelRentProperty
  L6_2 = L3_2
  if L6_2 then
    L6_2 = L6_2.identifier
  end
  if not L6_2 then
    L6_2 = "server (auto_cancel)"
  end
  L7_2 = A0_2.id
  L8_2 = A0_2.propertyData
  L8_2 = L8_2.label
  L9_2 = A0_2.propertyData
  L9_2 = L9_2.rentData
  L9_2 = L9_2.canceledAt
  L10_2 = A0_2.propertyData
  L10_2 = L10_2.rentData
  L10_2 = L10_2.rentedFrom
  L11_2 = A0_2.propertyData
  L11_2 = L11_2.rentData
  L11_2 = L11_2.rentedTo
  L12_2 = A0_2.propertyData
  L12_2 = L12_2.rentData
  L12_2 = L12_2.rentedPrice
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2.propertyData
  L6_2 = {}
  L5_2.rentData = L6_2
  L6_2 = A0_2
  L5_2 = A0_2.sync
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "nolag_properties:client:propertyDataUpdated"
  L7_2 = -1
  L8_2 = A0_2.id
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = true
  return L5_2
end
L1_1.cancelRent = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = PropertySQL
  L2_2 = L2_2.getRenters
  L3_2 = A0_2.id
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.purchaseDate
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  if L2_2 then
    L4_2 = L2_2[1]
    if L4_2 then
      L4_2 = pairs
      L5_2 = L2_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = Framework
        L10_2 = L10_2.GetPlayerFromIdentifier
        L11_2 = L9_2.identifier
        L10_2 = L10_2(L11_2)
        L11_2 = L9_2.identifier
        L12_2 = L10_2
        if L12_2 then
          L12_2 = L12_2.getName
        end
        if L12_2 then
          L12_2 = L10_2
          if L12_2 then
            L12_2 = L12_2.getName
          end
          L12_2 = L12_2()
          L11_2 = L12_2
        else
          L12_2 = GetOfflinePlayerName
          L13_2 = L9_2.identifier
          L12_2 = L12_2(L13_2)
          if L12_2 and "Unknown" ~= L12_2 then
            L11_2 = L12_2
          end
        end
        L12_2 = #L3_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L14_2 = L9_2.id
        L13_2.id = L14_2
        L14_2 = L9_2.type
        L13_2.type = L14_2
        L13_2.name = L11_2
        L14_2 = L9_2.identifier
        L13_2.identifier = L14_2
        L14_2 = json
        L14_2 = L14_2.decode
        L15_2 = L9_2.rent_data
        L14_2 = L14_2(L15_2)
        L13_2.rentData = L14_2
        L14_2 = L9_2.rented_from
        if L14_2 then
          L14_2 = os
          L14_2 = L14_2.date
          L15_2 = "%Y-%m-%d"
          L16_2 = L9_2.rented_from
          L16_2 = L16_2 / 1000
          L14_2 = L14_2(L15_2, L16_2)
        else
          L14_2 = nil
        end
        L13_2.rentedFrom = L14_2
        L14_2 = L9_2.rented_to
        if L14_2 then
          L14_2 = os
          L14_2 = L14_2.date
          L15_2 = "%Y-%m-%d"
          L16_2 = L9_2.rented_to
          L16_2 = L16_2 / 1000
          L14_2 = L14_2(L15_2, L16_2)
        else
          L14_2 = nil
        end
        L13_2.rentedTo = L14_2
        L14_2 = L9_2.rented_price
        L13_2.rentedPrice = L14_2
        L14_2 = L9_2.canceled_on
        if L14_2 and L14_2 == L9_2.canceled_on then
          L14_2 = os
          L14_2 = L14_2.date
          L15_2 = "%Y-%m-%d"
          L16_2 = L9_2.canceled_on
          L16_2 = L16_2 / 1000
          L14_2 = L14_2(L15_2, L16_2)
        else
          L14_2 = locale
          L15_2 = "property_rent_not_canceled"
          L14_2 = L14_2(L15_2)
        end
        L13_2.canceledAt = L14_2
        L14_2 = L9_2.canceled_on
        if nil == L14_2 then
          L14_2 = L9_2.rented_to
          L15_2 = os
          L15_2 = L15_2.time
          L15_2 = L15_2()
          L15_2 = L15_2 * 1000
          if L14_2 > L15_2 then
            L14_2 = true
          else
            L14_2 = false
          end
        else
          L14_2 = false
        end
        L13_2.isActive = L14_2
        L14_2 = L9_2.auto_renew
        L13_2.autoRenew = L14_2
        L3_2[L12_2] = L13_2
      end
    end
  end
  return L3_2
end
L1_1.getRenters = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = false
    L6_2 = locale
    L7_2 = "invalid_player"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.playerHaveKey
  L7_2 = L4_2
  L8_2 = "manage_property_keys"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = false
    L6_2 = locale
    L7_2 = "no_keys"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
    return L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  end
  L5_2 = Framework
  L5_2 = L5_2.GetPlayerFromIdentifier
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  if L6_2 then
    L6_2 = L6_2.source
  end
  if not L6_2 then
    L6_2 = 0
  end
  if A1_2 == L6_2 then
    L7_2 = Config
    L7_2 = L7_2.AllowSelfAsKeyholder
    if not L7_2 then
      L7_2 = false
      L8_2 = locale
      L9_2 = "cannot_add_self_as_keyholder"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
      return L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    end
  end
  if not L5_2 or 0 == L6_2 then
    L7_2 = false
    L8_2 = locale
    L9_2 = "player_not_found"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    return L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.isRenter
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.isOwner
  L10_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2)
  if L7_2 and not L8_2 then
    L9_2 = pairs
    L10_2 = A3_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      if "manage_property_settings" == L13_2 or "manage_property_renters" == L13_2 then
        A3_2[L13_2] = false
      end
    end
  end
  L9_2 = TriggerClientEvent
  L10_2 = "nolag_properties:client:notify"
  L11_2 = A1_2
  L12_2 = {}
  L13_2 = locale
  L14_2 = "key_added_successfully"
  L15_2 = A0_2.propertyData
  L15_2 = L15_2.label
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.description = L13_2
  L12_2.type = "success"
  L12_2.duration = 8500
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = TriggerClientEvent
  L10_2 = "nolag_properties:client:notify"
  L11_2 = L6_2
  L12_2 = {}
  L13_2 = locale
  L14_2 = "key_received"
  L15_2 = A0_2.propertyData
  L15_2 = L15_2.label
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.description = L13_2
  L12_2.type = "success"
  L12_2.duration = 8500
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A0_2.propertyData
  L9_2 = L9_2.keyHolders
  L10_2 = L5_2.identifier
  L9_2[L10_2] = A3_2
  L9_2 = Logs
  L9_2 = L9_2.AddKeyHolder
  L10_2 = L4_2.identifier
  L11_2 = A0_2.id
  L12_2 = L5_2.identifier
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2.save
  L11_2 = "keyHolders"
  L9_2(L10_2, L11_2)
  L9_2 = TriggerClientEvent
  L10_2 = "nolag_properties:client:propertyDataUpdated"
  L11_2 = -1
  L12_2 = A0_2.id
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = true
  return L9_2
end
L1_1.addKey = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Framework
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    L5_2 = "Invalid player"
    return L4_2, L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.playerHaveKey
  L6_2 = L3_2
  L7_2 = "manage_property_keys"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = false
    L5_2 = "You do not have a key for this property"
    return L4_2, L5_2
  end
  if A1_2 == A2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = TriggerClientEvent
  L5_2 = "nolag_properties:client:notify"
  L6_2 = A1_2
  L7_2 = {}
  L8_2 = locale
  L9_2 = "key_removed_successfully"
  L10_2 = A0_2.propertyData
  L10_2 = L10_2.label
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.description = L8_2
  L7_2.type = "success"
  L7_2.duration = 8500
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Framework
  L4_2 = L4_2.GetPlayerFromIdentifier
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L4_2.source
  end
  if not L4_2 then
    L4_2 = 0
  end
  if 0 ~= L4_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "nolag_properties:client:notify"
    L7_2 = L4_2
    L8_2 = {}
    L9_2 = locale
    L10_2 = "key_lost"
    L11_2 = A0_2.propertyData
    L11_2 = L11_2.label
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.description = L9_2
    L8_2.type = "success"
    L8_2.duration = 8500
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2.propertyData
  L5_2 = L5_2.keyHolders
  L5_2[A2_2] = nil
  L5_2 = Logs
  L5_2 = L5_2.RemoveKeyHolder
  L6_2 = L3_2.identifier
  L7_2 = A0_2.id
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2.save
  L7_2 = "keyHolders"
  L5_2(L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "nolag_properties:client:propertyDataUpdated"
  L7_2 = -1
  L8_2 = A0_2.id
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = true
  return L5_2
end
L1_1.removeKey = L2_1
L1_1 = ServerProperty
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = Framework
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if A1_2 and not L2_2 then
    L3_2 = false
    L4_2 = "Invalid player"
    return L3_2, L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.playerHaveKey
  L5_2 = L2_2
  L6_2 = "manage_property_keys"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = false
    L4_2 = "You do not have a key for this property"
    return L3_2, L4_2
  end
  if A1_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "nolag_properties:client:notify"
    L5_2 = A1_2
    L6_2 = {}
    L7_2 = locale
    L8_2 = "key_removed_all_successfully"
    L9_2 = A0_2.propertyData
    L9_2 = L9_2.label
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.description = L7_2
    L6_2.type = "success"
    L6_2.duration = 8500
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = pairs
  L4_2 = A0_2.propertyData
  L4_2 = L4_2.keyHolders
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = Framework
    L9_2 = L9_2.GetPlayerFromIdentifier
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L9_2.source
    end
    if not L9_2 then
      L9_2 = 0
    end
    if 0 ~= L9_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "nolag_properties:client:notify"
      L12_2 = L9_2
      L13_2 = {}
      L14_2 = locale
      L15_2 = "key_lost"
      L16_2 = A0_2.propertyData
      L16_2 = L16_2.label
      L14_2 = L14_2(L15_2, L16_2)
      L13_2.description = L14_2
      L13_2.type = "success"
      L13_2.duration = 8500
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L3_2 = A0_2.propertyData
  L4_2 = {}
  L3_2.keyHolders = L4_2
  L3_2 = Logs
  L3_2 = L3_2.RemoveAllKeyHolder
  L4_2 = L2_2
  if L4_2 then
    L4_2 = L4_2.identifier
  end
  if not L4_2 then
    L4_2 = "server (auto_cancel)"
  end
  L5_2 = A0_2.id
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.save
  L5_2 = "keyHolders"
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L1_1.removeAllKeys = L2_1
