local L0_1, L1_1, L2_1
L0_1 = {}
Property = L0_1
L0_1 = Property
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.id = A1_2
  L4_2 = A2_2.owner
  L3_2.owner = L4_2
  L4_2 = A2_2.ownerType
  L3_2.ownerType = L4_2
  L4_2 = A2_2.label
  L3_2.label = L4_2
  L4_2 = A2_2.address
  L3_2.address = L4_2
  L4_2 = A2_2.price
  L3_2.price = L4_2
  L4_2 = A2_2.rentPrice
  if not L4_2 then
    L4_2 = 0
  end
  L3_2.rentPrice = L4_2
  L3_2.purchasePrice = nil
  L3_2.purchaseDate = nil
  L4_2 = string
  L4_2 = L4_2.lower
  L5_2 = A2_2.type
  L4_2 = L4_2(L5_2)
  L3_2.type = L4_2
  L4_2 = {}
  L3_2.blip = L4_2
  L4_2 = A2_2.metadata
  if L4_2 then
    L4_2 = A2_2.metadata
    L4_2 = L4_2.doorLocked
    if L4_2 then
      goto lbl_37
    end
  end
  L4_2 = false
  ::lbl_37::
  L3_2.doorLocked = L4_2
  L4_2 = {}
  L3_2.doors = L4_2
  L4_2 = A2_2.buildingId
  L3_2.buildingId = L4_2
  L4_2 = A2_2.keyHolders
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.keyHolders = L4_2
  L4_2 = A2_2.forSale
  L3_2.forSale = L4_2
  L4_2 = Config
  L4_2 = L4_2.EnableRenting
  if L4_2 then
    L4_2 = A2_2.forRent
    if L4_2 then
      goto lbl_59
    end
  end
  L4_2 = false
  ::lbl_59::
  L3_2.forRent = L4_2
  L4_2 = {}
  L3_2.additionalLocks = L4_2
  L4_2 = {}
  L5_2 = {}
  L4_2.inside = L5_2
  L5_2 = {}
  L4_2.outside = L5_2
  L3_2.spawnedFurniture = L4_2
  L4_2 = {}
  L3_2.interactablePoints = L4_2
  L4_2 = A2_2.metadata
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.metadata = L4_2
  L4_2 = A2_2.rentData
  L3_2.rentData = L4_2
  L4_2 = setmetatable
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L5_2 = L3_2
  L4_2 = L3_2.createZones
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.createBlip
  L4_2(L5_2)
  return L3_2
end
L0_1.new = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getPropertyMetadata"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = {}
    L3_2 = {}
    L2_2.images = L3_2
    L2_2.description = ""
    L3_2 = {}
    L2_2.tags = L3_2
  end
  return L2_2
end
L0_1.getMetadata = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getPropertyPurchaseInfo"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = {}
    L2_2.purchaseDate = nil
    L2_2.purchasePrice = nil
  end
  return L2_2
end
L0_1.getPurchaseInfo = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getPropertyAdditionalLocks"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = {}
  end
  return L2_2
end
L0_1.getAdditionalLocks = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getPropertyRentHistory"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = {}
  end
  return L2_2
end
L0_1.getRentHistory = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getDoorLockedState"
  L3_2 = false
  L4_2 = A0_2.id
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.getDoorLockedState = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.addProperty
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.error
      L3_2 = "Building with ID "
      L4_2 = A0_2.buildingId
      L5_2 = " not found"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
    end
    L2_2 = A0_2.type
    if "mlo" == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.spawnYardZone
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2.spawnYardZone
    L1_2(L2_2)
  end
end
L0_1.createZones = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = lib
    L3_3 = L3_3.zones
    L3_3 = L3_3.poly
    L4_3 = {}
    L5_3 = A0_3.points
    L4_3.points = L5_3
    L5_3 = A0_3.thickness
    L4_3.thickness = L5_3
    L5_3 = Config
    L5_3 = L5_3.Debug
    L4_3.debug = L5_3
    L4_3.onEnter = A1_3
    L4_3.onExit = A2_3
    return L3_3(L4_3)
  end
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = lib
    L3_3 = L3_3.zones
    L3_3 = L3_3.sphere
    L4_3 = {}
    L5_3 = A0_3.coords
    L4_3.coords = L5_3
    L5_3 = A0_3.radius
    L4_3.radius = L5_3
    L5_3 = Config
    L5_3 = L5_3.Debug
    L4_3.debug = L5_3
    L4_3.onEnter = A1_3
    L4_3.onExit = A2_3
    return L3_3(L4_3)
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = CreateInteractablePoint
    L2_3 = A0_3
    L3_3 = {}
    L4_3 = locale
    L5_3 = "ui_manage_property"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.icon = "fas fa-house-chimney-user"
    function L4_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.openInteractMenu
      L0_4(L1_4)
    end
    L3_3.onSelect = L4_3
    L4_3 = A0_2
    return L1_3(L2_3, L3_3, L4_3)
  end
  L4_2 = A0_2.metadata
  L4_2 = L4_2.yardZone
  if L4_2 then
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = A0_2.metadata
    L6_2 = L6_2.yardZone
    L6_2 = L6_2.center
    L5_2.coords = L6_2
    L6_2 = A0_2.metadata
    L6_2 = L6_2.yardZone
    L6_2 = L6_2.center
    L7_2 = A0_2.metadata
    L7_2 = L7_2.yardZone
    L7_2 = L7_2.farthestPoint
    L6_2 = L6_2 - L7_2
    L6_2 = #L6_2
    L7_2 = Config
    L7_2 = L7_2.YardZoneRadius
    L6_2 = L6_2 + L7_2
    L5_2.radius = L6_2
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.enterBigZone
      L0_3(L1_3)
    end
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exitBigZone
      L0_3(L1_3)
    end
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2.bigZone = L4_2
    L4_2 = L1_2
    L5_2 = A0_2.metadata
    L5_2 = L5_2.yardZone
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.enterYardZone
      L0_3(L1_3)
    end
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exitYardZone
      L0_3(L1_3)
    end
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2.yardZone = L4_2
  end
  L4_2 = A0_2.type
  if "shell" ~= L4_2 then
    L4_2 = A0_2.type
    if "ipl" ~= L4_2 then
      goto lbl_80
    end
  end
  L4_2 = A0_2.metadata
  L4_2 = L4_2.enterData
  if L4_2 then
    L4_2 = A0_2.enterPropertyZone
    if not L4_2 then
      L4_2 = L3_2
      L5_2 = A0_2.metadata
      L5_2 = L5_2.enterData
      L4_2 = L4_2(L5_2)
    end
    A0_2.enterPropertyZone = L4_2
    L4_2 = A0_2.bigZone
    if not L4_2 then
      L4_2 = L2_2
      L5_2 = {}
      L6_2 = A0_2.metadata
      L6_2 = L6_2.enterData
      L5_2.coords = L6_2
      L5_2.radius = 25
      function L6_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.enterBigZone
        L0_3(L1_3)
      end
      function L7_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.exitBigZone
        L0_3(L1_3)
      end
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      A0_2.bigZone = L4_2
    end
  else
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.error
    L5_2 = "Enter data not found for Shell type property ID: "
    L6_2 = A0_2.id
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
  end
  ::lbl_80::
end
L0_1.spawnYardZone = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.bigZone
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exitBigZone
    L1_2(L2_2)
    L1_2 = A0_2.bigZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    A0_2.bigZone = nil
  end
  L1_2 = A0_2.yardZone
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exitYardZone
    L1_2(L2_2)
    L1_2 = A0_2.yardZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    A0_2.yardZone = nil
  end
end
L0_1.despawnYardZone = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.yardZone
  L1_2 = nil ~= L1_2
  L2_2 = A0_2.metadata
  L2_2 = L2_2.yardZone
  L2_2 = nil ~= L2_2
  L3_2 = L1_2 or L3_2
  L3_2 = L2_2 or L3_2
  if L1_2 and L2_2 then
    L3_2 = A0_2.yardZone
    L3_2 = L3_2.coords
    L4_2 = A0_2.metadata
    L4_2 = L4_2.yardZone
    L4_2 = L4_2.center
    L3_2 = L3_2 ~= L4_2
  end
  if not ((L1_2 or not L2_2) and (not L1_2 or L2_2)) or L3_2 then
    L4_2 = lib
    L4_2 = L4_2.print
    L4_2 = L4_2.debug
    L5_2 = "Updating yard zone for property: "
    L6_2 = A0_2.id
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.despawnYardZone
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.spawnYardZone
    L4_2(L5_2)
  end
end
L0_1.updateYardZone = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Updating manage point for property: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.insidePropertyZone
  if L1_2 then
    L1_2 = L1_2.data
  end
  if L1_2 then
    L1_2 = L1_2.coords
  end
  if L1_2 then
    L1_2 = A0_2.metadata
    if L1_2 then
      L1_2 = L1_2.managePoint
    end
    if L1_2 then
      L1_2 = A0_2.insidePropertyZone
      L1_2 = L1_2.data
      L1_2 = L1_2.coords
      L2_2 = A0_2.metadata
      L2_2 = L2_2.managePoint
      if L1_2 ~= L2_2 then
        L1_2 = A0_2.insidePropertyZone
        L2_2 = L1_2
        L1_2 = L1_2.remove
        L1_2(L2_2)
        A0_2.insidePropertyZone = nil
        L1_2 = CreateInteractablePoint
        L2_2 = A0_2.metadata
        L2_2 = L2_2.managePoint
        L3_2 = {}
        L4_2 = locale
        L5_2 = "ui_manage_property"
        L4_2 = L4_2(L5_2)
        L3_2.label = L4_2
        L3_2.icon = "fas fa-house-chimney-user"
        function L4_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.openInteractMenu
          L0_3(L1_3)
        end
        L3_2.onSelect = L4_2
        L4_2 = A0_2
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        A0_2.insidePropertyZone = L1_2
      end
    end
  end
end
L0_1.updateManagePoint = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.metadata
      L2_2 = L2_2.enterData
      return L2_2
    end
  end
  L1_2 = A0_2.metadata
  L1_2 = L1_2.enterData
  if not L1_2 then
    L1_2 = A0_2.metadata
    L1_2 = L1_2.yardZone
    if L1_2 then
      L1_2 = A0_2.metadata
      L1_2 = L1_2.yardZone
      L1_2 = L1_2.center
    end
  end
  return L1_2
end
L0_1.getBlipCoords = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.deleteBlip
  L1_2(L2_2)
  L1_2 = A0_2.buildingId
  if L1_2 then
    return
  end
  L1_2 = Client
  L1_2 = L1_2.blipsVisibility
  L1_2 = L1_2.all
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.getBlipCoords
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = nil
  L3_2 = A0_2.forSale
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Blips
    L4_2 = A0_2.type
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.forSale
    if L3_2 then
      L3_2 = L3_2.Disabled
    end
    if not L3_2 then
      L2_2 = "forSale"
  end
  else
    L3_2 = A0_2.forRent
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.isRented
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Blips
        L4_2 = A0_2.type
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.forRent
        if L3_2 then
          L3_2 = L3_2.Disabled
        end
        if not L3_2 then
          L2_2 = "forRent"
      end
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2.isOwner
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Blips
        L4_2 = A0_2.type
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.owner
        if L3_2 then
          L3_2 = L3_2.Disabled
        end
        if not L3_2 then
          L2_2 = "owner"
      end
      else
        L4_2 = A0_2
        L3_2 = A0_2.isRenter
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = Config
          L3_2 = L3_2.Blips
          L4_2 = A0_2.type
          L3_2 = L3_2[L4_2]
          L3_2 = L3_2.renter
          if L3_2 then
            L3_2 = L3_2.Disabled
          end
          if not L3_2 then
            L2_2 = "renter"
        end
        else
          L4_2 = A0_2
          L3_2 = A0_2.hasKey
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = Config
            L3_2 = L3_2.Blips
            L4_2 = A0_2.type
            L3_2 = L3_2[L4_2]
            L3_2 = L3_2.keyholder
            if L3_2 then
              L3_2 = L3_2.Disabled
            end
            if not L3_2 then
              L2_2 = "keyholder"
          end
          else
            L2_2 = "default"
          end
        end
      end
    end
  end
  L3_2 = Config
  L3_2 = L3_2.Blips
  L4_2 = A0_2.type
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Blips
    L4_2 = A0_2.type
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.default
  end
  if "default" == L2_2 then
    L4_2 = "all"
    if L4_2 then
      goto lbl_125
    end
  end
  if "owner" == L2_2 then
    L4_2 = "owned"
    if L4_2 then
      goto lbl_125
    end
  end
  L4_2 = L2_2
  ::lbl_125::
  if not L3_2 then
    return
  end
  L5_2 = L3_2.Disabled
  if L5_2 then
    return
  end
  L5_2 = Client
  L5_2 = L5_2.blipsVisibility
  L5_2 = L5_2[L4_2]
  if not L5_2 then
    return
  end
  L5_2 = A0_2.blip
  L6_2 = AddBlipForCoord
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L9_2 = L1_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.handle = L6_2
  L5_2 = SetBlipSprite
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.Sprite
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipScale
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.Scale
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipColour
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.Color
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipDisplay
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.Display
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipAsShortRange
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.ShortRange
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipCategory
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L7_2 = L3_2.Category
  L5_2(L6_2, L7_2)
  L5_2 = BeginTextCommandSetBlipName
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = A0_2.label
  L5_2(L6_2)
  L5_2 = EndTextCommandSetBlipName
  L6_2 = A0_2.blip
  L6_2 = L6_2.handle
  L5_2(L6_2)
end
L0_1.createBlip = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.blip
  L1_2 = L1_2.handle
  if L1_2 then
    L1_2 = RemoveBlip
    L2_2 = A0_2.blip
    L2_2 = L2_2.handle
    L1_2(L2_2)
    L1_2 = A0_2.blip
    L1_2.handle = nil
  end
end
L0_1.deleteBlip = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.getBlipCoords
  L1_2 = L1_2(L2_2)
  L2_2 = SetNewWaypoint
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2(L3_2, L4_2)
end
L0_1.setWaypoint = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L2_2 = A0_2.metadata
  if L2_2 then
    L2_2 = L2_2.lockdown
  end
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.getDoorLockedState
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.hasKey
  L3_2 = L3_2(L4_2)
  if L3_2 and not L2_2 then
    L1_2 = false
  else
    L3_2 = Config
    L3_2 = L3_2.ExitEnterWhileLocked
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.hasKey
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L1_2 = false
    end
    elseif not L2_2 then
      L1_2 = false
    else
      L3_2 = A0_2.forSale
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.isRented
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          goto lbl_48
        end
      end
      L3_2 = A0_2.forRent
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.isRented
        L3_2 = L3_2(L4_2)
        ::lbl_48::
        if not L3_2 then
          L3_2 = Config
          L3_2 = L3_2.OpenForPreview
          if L3_2 then
            L1_2 = false
          end
        end
      end
    end
  end
  return L1_2
end
L0_1.isDoorBlocked = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.price
  if nil ~= L2_2 then
    L2_2 = A1_2.price
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = A0_2.price
  ::lbl_8::
  A0_2.price = L2_2
  L2_2 = A1_2.rentPrice
  if nil ~= L2_2 then
    L2_2 = A1_2.rentPrice
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = A0_2.rentPrice
  ::lbl_16::
  A0_2.rentPrice = L2_2
  L2_2 = A1_2.name
  if nil ~= L2_2 then
    L2_2 = A1_2.name
    if L2_2 then
      goto lbl_24
    end
  end
  L2_2 = A0_2.label
  ::lbl_24::
  A0_2.label = L2_2
  L2_2 = A1_2.description
  if nil ~= L2_2 then
    L2_2 = A1_2.description
    if L2_2 then
      goto lbl_32
    end
  end
  L2_2 = A0_2.description
  ::lbl_32::
  A0_2.description = L2_2
  L2_2 = type
  L3_2 = A1_2.forSale
  L2_2 = L2_2(L3_2)
  if "nil" ~= L2_2 then
    L2_2 = A1_2.forSale
    if L2_2 then
      goto lbl_50
    end
  end
  L2_2 = type
  L3_2 = A1_2.forSale
  L2_2 = L2_2(L3_2)
  L2_2 = "nil" == L2_2 and L2_2
  ::lbl_50::
  A0_2.forSale = L2_2
  L2_2 = type
  L3_2 = A1_2.forRent
  L2_2 = L2_2(L3_2)
  if "nil" ~= L2_2 then
    L2_2 = A1_2.forRent
    if L2_2 then
      goto lbl_68
    end
  end
  L2_2 = type
  L3_2 = A1_2.forRent
  L2_2 = L2_2(L3_2)
  L2_2 = "nil" == L2_2 and L2_2
  ::lbl_68::
  A0_2.forRent = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.getMetadata
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.tags
  if nil ~= L3_2 then
    L3_2 = A1_2.tags
    L2_2.tags = L3_2
  end
  L3_2 = A1_2.images
  if nil ~= L3_2 then
    L3_2 = A1_2.images
    L2_2.images = L3_2
  end
  L3_2 = A0_2.metadata
  L4_2 = A1_2.allowedPoints
  if nil ~= L4_2 then
    L4_2 = A1_2.allowedPoints
    if L4_2 then
      goto lbl_90
    end
  end
  L4_2 = A0_2.metadata
  L4_2 = L4_2.allowedPoints
  ::lbl_90::
  L3_2.allowedPoints = L4_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:saveSettings"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = {}
  L8_2 = A0_2.price
  L7_2.price = L8_2
  L8_2 = A0_2.rentPrice
  L7_2.rentPrice = L8_2
  L8_2 = A0_2.label
  L7_2.label = L8_2
  L8_2 = L2_2.description
  L7_2.description = L8_2
  L8_2 = A0_2.forSale
  L7_2.forSale = L8_2
  L8_2 = A0_2.forRent
  L7_2.forRent = L8_2
  L8_2 = L2_2.tags
  L7_2.tags = L8_2
  L8_2 = L2_2.images
  L7_2.images = L8_2
  L8_2 = A0_2.metadata
  L8_2 = L8_2.allowedPoints
  L7_2.allowedPoints = L8_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_130
    end
  end
  L7_2 = "error"
  ::lbl_130::
  L6_2.type = L7_2
  L5_2(L6_2)
  return L3_2
end
L0_1.updateSettings = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.getMetadata
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.images
  L4_2 = L2_2.images
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A1_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:saveSettings"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = {}
  L8_2 = A0_2.price
  L7_2.price = L8_2
  L8_2 = A0_2.rentPrice
  L7_2.rentPrice = L8_2
  L8_2 = A0_2.label
  L7_2.label = L8_2
  L8_2 = L2_2.description
  L7_2.description = L8_2
  L8_2 = A0_2.forSale
  L7_2.forSale = L8_2
  L8_2 = A0_2.forRent
  L7_2.forRent = L8_2
  L8_2 = L2_2.tags
  L7_2.tags = L8_2
  L8_2 = L2_2.images
  L7_2.images = L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.addImage = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.owner
  A0_2.owner = L2_2
  L2_2 = A1_2.ownerType
  A0_2.ownerType = L2_2
  L2_2 = A1_2.label
  A0_2.label = L2_2
  L2_2 = A1_2.price
  A0_2.price = L2_2
  L2_2 = A1_2.rentPrice
  A0_2.rentPrice = L2_2
  L2_2 = A1_2.type
  A0_2.type = L2_2
  L2_2 = A1_2.doorLocked
  if nil ~= L2_2 then
    L2_2 = A1_2.doorLocked
    A0_2.doorLocked = L2_2
  end
  L2_2 = A1_2.buildingId
  A0_2.buildingId = L2_2
  L2_2 = A1_2.keyHolders
  A0_2.keyHolders = L2_2
  L2_2 = A1_2.metadata
  if not L2_2 then
    L2_2 = {}
  end
  A0_2.metadata = L2_2
  L2_2 = A1_2.rentData
  A0_2.rentData = L2_2
  L2_2 = A1_2.forSale
  A0_2.forSale = L2_2
  L2_2 = A1_2.forRent
  A0_2.forRent = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.createBlip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.updateInteractablePoints
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.spawnCamera
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.spawnLockdownBarrier
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.updateYardZone
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.updateManagePoint
  L2_2(L3_2)
end
L0_1.updateData = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.metadata
      L2_2 = L2_2.camData
      if L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  else
    L1_2 = A0_2.metadata
    L1_2 = L1_2.camData
    L1_2 = nil ~= L1_2
    return L1_2
  end
end
L0_1.hasCamera = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = PlayerData
  L2_2 = L2_2.identifier
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1.isUser = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Framework
  L2_2 = L2_2.isSocietyBoss
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1.isUserSocietyBoss = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.rentData
  if L1_2 then
    L1_2 = A0_2.rentData
    L1_2 = L1_2.identifier
  end
  return L1_2
end
L0_1.isRented = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.hasKey
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isOwner
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.isAbleToManage = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.keyHolders
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.isRenter
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.isOwner
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_20
    end
    L3_2 = A0_2
    L2_2 = A0_2.isRented
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_20::
  L2_2 = A0_2.keyHolders
  L3_2 = PlayerData
  L3_2 = L3_2.identifier
  L2_2 = L2_2[L3_2]
  if nil ~= L2_2 then
    if nil == A1_2 then
      L2_2 = true
      return L2_2
    end
    L2_2 = A0_2.keyHolders
    L3_2 = PlayerData
    L3_2 = L3_2.identifier
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.hasKey = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.rentData
  if L1_2 then
    L1_2 = A0_2.rentData
    L1_2 = L1_2.identifier
  end
  return L1_2
end
L0_1.haveRenter = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.ownerType
  if "user" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isUser
    L3_2 = A0_2.owner
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = A0_2.ownerType
  if "society" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isUserSocietyBoss
    L3_2 = A0_2.owner
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.isOwner = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.rentData
  if L1_2 then
    L1_2 = L1_2.type
  end
  if "user" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isUser
    L3_2 = A0_2.rentData
    L3_2 = L3_2.identifier
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = A0_2.rentData
  if L1_2 then
    L1_2 = L1_2.type
  end
  if "society" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.isUserSocietyBoss
    L3_2 = A0_2.rentData
    L3_2 = L3_2.identifier
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.isRenter = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.forSale
  if not L1_2 then
    L1_2 = A0_2.forRent
    if not L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.haveRenter
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  ::lbl_10::
  return L1_2
end
L0_1.showOffer = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.UseContextMenuForInteractionMenu
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.openInteractMenuContext
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.openInteractMenuUI
    L1_2(L2_2)
  end
end
L0_1.openInteractMenu = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if "enter" == A1_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.insideProperty
    if not L2_2 then
      L2_2 = A0_2.type
      if "mlo" ~= L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  elseif "exit" == A1_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.insideProperty
    if L2_2 then
      L2_2 = A0_2.type
      if "mlo" ~= L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  elseif "toggle_lock" == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.hasKey
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2.type
      if "mlo" ~= L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  elseif "doorbell" == A1_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.insideProperty
    if not L2_2 then
      L2_2 = A0_2.type
      if "mlo" ~= L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  elseif "camera" == A1_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.insideProperty
    if L2_2 then
      L2_2 = A0_2.type
      L2_2 = "mlo" ~= L2_2
    end
    return L2_2
  elseif "police_raid" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.isPlayerAuthorizedToRaid
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2.type
      L3_2 = A0_2
      L2_2 = A0_2.getDoorLockedState
      L2_2 = "mlo" ~= L2_2 and L2_2
    end
    return L2_2
  elseif "police_lockdown" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.isPlayerAuthorizedToLockdown
    return L2_2()
  elseif "manage_property" == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.isAbleToManage
    return L2_2(L3_2)
  elseif "show_offer" == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.showOffer
    return L2_2(L3_2)
  elseif "lockpick" == A1_2 then
    L2_2 = Config
    L2_2 = L2_2.EnableLockpick
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.hasKey
      L2_2 = L2_2(L3_2)
      L2_2 = A0_2.type
      L2_2 = A0_2.metadata
      L2_2 = L2_2.lockdown
      L3_2 = A0_2
      L2_2 = A0_2.getDoorLockedState
      L2_2 = not L2_2 and L2_2
    end
    return L2_2
  end
end
L0_1.displayOption = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.hasKey
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.getDoorLockedState
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "enter"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_enter"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = "fas fa-ban"
        if L7_2 then
          goto lbl_40
        end
      end
    end
    L7_2 = "fas fa-right-to-bracket"
    ::lbl_40::
    L6_2.icon = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = locale
        L8_2 = "property_under_police_lockdown"
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_63
        end
      end
    end
    if L3_2 then
      L7_2 = locale
      L8_2 = "property_locked"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_63
      end
    end
    L7_2 = nil
    ::lbl_63::
    L6_2.description = L7_2
    L8_2 = A0_2
    L7_2 = A0_2.isDoorBlocked
    L7_2 = L7_2(L8_2)
    L6_2.disabled = L7_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.enter
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "exit"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_exit"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = "fas fa-ban"
        if L7_2 then
          goto lbl_103
        end
      end
    end
    L7_2 = "fas fa-right-from-bracket"
    ::lbl_103::
    L6_2.icon = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = locale
        L8_2 = "property_under_police_lockdown"
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_126
        end
      end
    end
    if L3_2 then
      L7_2 = locale
      L8_2 = "property_locked"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_126
      end
    end
    L7_2 = nil
    ::lbl_126::
    L6_2.description = L7_2
    L8_2 = A0_2
    L7_2 = A0_2.isDoorBlocked
    L7_2 = L7_2(L8_2)
    L6_2.disabled = L7_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "toggle_lock"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    if L3_2 then
      L7_2 = locale
      L8_2 = "ui_unlock"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_159
      end
    end
    L7_2 = locale
    L8_2 = "ui_lock"
    L7_2 = L7_2(L8_2)
    ::lbl_159::
    L6_2.title = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = "fas fa-ban"
        if L7_2 then
          goto lbl_178
        end
      end
    end
    if L3_2 then
      L7_2 = "fas fa-lock-open"
      if L7_2 then
        goto lbl_178
      end
    end
    L7_2 = "fas fa-lock"
    ::lbl_178::
    L6_2.icon = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        L7_2 = locale
        L8_2 = "property_under_police_lockdown"
        L7_2 = L7_2(L8_2)
      end
    end
    L6_2.description = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = Config
      L7_2 = L7_2.PoliceLockdown
      L7_2 = L7_2.DisableEnter
      if L7_2 then
        goto lbl_202
      end
    end
    L7_2 = not L2_2
    ::lbl_202::
    L6_2.disabled = L7_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.toggleDoorlock
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.openInteractMenu
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "lockpick"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_lockpick"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.icon = "fas fa-lock"
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.lockPickProperty
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "doorbell"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_bell"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.icon = "fas fa-bell"
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.doorBell
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "police_raid"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    if L3_2 then
      L7_2 = locale
      L8_2 = "police_raid"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_280
      end
    end
    L7_2 = locale
    L8_2 = "police_raid_cancel"
    L7_2 = L7_2(L8_2)
    ::lbl_280::
    L6_2.title = L7_2
    L6_2.icon = "fas fa-hammer"
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.policeRaid
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "police_lockdown"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = locale
      L8_2 = "police_unlock"
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_313
      end
    end
    L7_2 = locale
    L8_2 = "police_lockdown"
    L7_2 = L7_2(L8_2)
    ::lbl_313::
    L6_2.title = L7_2
    L7_2 = A0_2.metadata
    L7_2 = L7_2.lockdown
    if L7_2 then
      L7_2 = "fas fa-unlock"
      if L7_2 then
        goto lbl_322
      end
    end
    L7_2 = "fas fa-lock"
    ::lbl_322::
    L6_2.icon = L7_2
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.policeLockdown
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "manage_property"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and not A1_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_manage_property"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.icon = "fas fa-house-chimney-user"
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.manageProperty
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "show_offer"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "ui_property_offer"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.icon = "fas fa-handshake"
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.openOffer
      L0_3(L1_3)
    end
    L6_2.onSelect = L7_2
    L4_2[L5_2] = L6_2
  end
  L5_2 = #L4_2
  if 0 == L5_2 then
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = {}
    L7_2 = #L4_2
    L7_2 = L7_2 + 1
    L6_2.id = L7_2
    L7_2 = locale
    L8_2 = "no_options"
    L7_2 = L7_2(L8_2)
    L6_2.title = L7_2
    L6_2.icon = "fas fa-exclamation-triangle"
    L6_2.disabled = true
    L4_2[L5_2] = L6_2
  end
  L5_2 = lib
  L5_2 = L5_2.registerContext
  L6_2 = {}
  L7_2 = "property_menu_"
  L8_2 = A0_2.id
  L7_2 = L7_2 .. L8_2
  L6_2.id = L7_2
  L7_2 = A0_2.buildingId
  if L7_2 then
    L7_2 = PlayerData
    L7_2 = L7_2.insideProperty
    if not L7_2 then
      L7_2 = "building_menu_"
      L8_2 = A0_2.buildingId
      L7_2 = L7_2 .. L8_2
      if L7_2 then
        goto lbl_412
      end
    end
  end
  L7_2 = nil
  ::lbl_412::
  L6_2.menu = L7_2
  L7_2 = A0_2.label
  L6_2.title = L7_2
  L6_2.icon = "fa-solid fa-building"
  L6_2.options = L4_2
  L5_2(L6_2)
  L5_2 = lib
  L5_2 = L5_2.showContext
  L6_2 = "property_menu_"
  L7_2 = A0_2.id
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
end
L0_1.openInteractMenuContext = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.getDoorLockedState
  L1_2 = L1_2(L2_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setInteractionMenuVisible"
  L4_2 = {}
  L5_2 = A0_2.label
  L4_2.propertyName = L5_2
  L5_2 = A0_2.id
  L4_2.propertyId = L5_2
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  L4_2.inside = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.hasKey
  L5_2 = L5_2(L6_2)
  L4_2.hasKey = L5_2
  L4_2.doorLocked = L1_2
  L6_2 = A0_2
  L5_2 = A0_2.isDoorBlocked
  L5_2 = L5_2(L6_2)
  L4_2.doorBlocked = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.isAbleToManage
  L5_2 = L5_2(L6_2)
  L4_2.isAbleToManage = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.showOffer
  L5_2 = L5_2(L6_2)
  L4_2.showOffer = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.displayOption
  L7_2 = "lockpick"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.showLockpick = L5_2
  L5_2 = A0_2.metadata
  L5_2 = L5_2.lockdown
  L4_2.underLockdown = L5_2
  L5_2 = Config
  L5_2 = L5_2.PoliceLockdown
  L4_2.lockdownOptions = L5_2
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorizedToRaid
  L5_2 = L5_2()
  L4_2.isPlayerAuthorizedToRaid = L5_2
  L5_2 = Framework
  L5_2 = L5_2.isPlayerAuthorizedToLockdown
  L5_2 = L5_2()
  L4_2.isPlayerAuthorizedToLockdown = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L0_1.openInteractMenuUI = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.allowedPoints
  L1_2 = L1_2.OpenGarageMenu
  return L1_2
end
L0_1.hasGarage = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.yardZone
  if L1_2 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2.metadata
    L2_2 = L2_2.yardZone
    L2_2 = L2_2.area
    L2_2 = L2_2 * 100
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 / 100
    return L1_2
  end
  L1_2 = 200
  return L1_2
end
L0_1.getYardSize = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.getMetadata
  L1_2 = L1_2(L2_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "openPropertyDetails"
  L4_2 = {}
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.id = L6_2
  L6_2 = A0_2.label
  L5_2.title = L6_2
  L6_2 = A0_2.metadata
  L6_2 = L6_2.yardZone
  L6_2 = nil ~= L6_2
  L5_2.hasYard = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.hasGarage
  L6_2 = L6_2(L7_2)
  L5_2.garage = L6_2
  L6_2 = A0_2.address
  L5_2.address = L6_2
  L6_2 = A0_2.type
  L5_2.type = L6_2
  L6_2 = L1_2.description
  L5_2.description = L6_2
  L6_2 = A0_2.price
  L5_2.price = L6_2
  L6_2 = A0_2.rentPrice
  L5_2.rentPrice = L6_2
  L6_2 = L1_2.tags
  L5_2.tags = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.getYardSize
  L6_2 = L6_2(L7_2)
  L5_2.size = L6_2
  L6_2 = L1_2.images
  L5_2.images = L6_2
  L6_2 = A0_2.forSale
  L5_2.isForSale = L6_2
  L6_2 = A0_2.forRent
  L5_2.isForRent = L6_2
  L4_2.property = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L0_1.openOffer = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "nolag_properties:server:property:rent"
  L6_2 = false
  L7_2 = A0_2.id
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L4_2 then
    L6_2 = Framework
    L6_2 = L6_2.Notify
    L7_2 = {}
    L8_2 = locale
    L9_2 = "property_rented_successfully"
    L10_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.description = L8_2
    L7_2.type = "success"
    L6_2(L7_2)
    L6_2 = true
    return L6_2
  else
    L6_2 = Framework
    L6_2 = L6_2.Notify
    L7_2 = {}
    L8_2 = locale
    L9_2 = "property_rented_failed"
    L8_2 = L8_2(L9_2)
    L7_2.title = L8_2
    L7_2.description = L5_2
    L7_2.type = "error"
    L6_2(L7_2)
    L6_2 = false
    return L6_2
  end
end
L0_1.rentProperty = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:continueRent"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "property_rent_continue_successfully"
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.description = L5_2
    L4_2.type = "success"
    L3_2(L4_2)
    L3_2 = true
    return L3_2
  else
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "property_rent_continue_failed"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.type = "error"
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
end
L0_1.continueRent = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:cancelRent"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "property_rent_cancel_successfully"
    L6_2 = L6_2(L7_2)
    L5_2.description = L6_2
    L5_2.type = "success"
    L4_2(L5_2)
    L4_2 = true
    return L4_2
  else
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
end
L0_1.cancelRent = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:setAutoRenew"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L3_2 = A0_2.rentData
    L3_2.autoRenew = A1_2
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    if A1_2 then
      L5_2 = locale
      L6_2 = "property_rent_autorenew_enabled"
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_27
      end
    end
    L5_2 = locale
    L6_2 = "property_rent_autorenew_disabled"
    L5_2 = L5_2(L6_2)
    ::lbl_27::
    L4_2.description = L5_2
    L4_2.type = "success"
    L3_2(L4_2)
    L3_2 = true
    return L3_2
  else
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "property_rent_autorenew_failed"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.type = "error"
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
end
L0_1.setAutoRenew = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = A0_2.type
    if "shell" ~= L1_2 then
      L1_2 = A0_2.type
      if "ipl" ~= L1_2 then
        goto lbl_15
      end
    end
    L1_2 = PlayerData
    L1_2 = L1_2.insideProperty
    if not L1_2 then
      return
    end
  end
  ::lbl_15::
  L1_2 = PlayerData
  L1_2 = L1_2.insideProperty
  if not L1_2 then
    L1_2 = A0_2.metadata
    L1_2 = L1_2.yardZone
    if nil == L1_2 then
      return
    end
  end
  L1_2 = Config
  L1_2 = L1_2.MaxFurnitureOutside
  if L1_2 then
    L1_2 = type
    L2_2 = Config
    L2_2 = L2_2.MaxFurnitureOutside
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.MaxFurnitureOutside
      if 0 == L1_2 then
        L1_2 = PlayerData
        L1_2 = L1_2.insideProperty
        if not L1_2 then
          L1_2 = Framework
          L1_2 = L1_2.Notify
          L2_2 = {}
          L3_2 = locale
          L4_2 = "notify_furniture_outside_disabled"
          L3_2 = L3_2(L4_2)
          L2_2.description = L3_2
          L2_2.type = "error"
          L1_2(L2_2)
          return
        end
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.MaxFurnitureInside
  if L1_2 then
    L1_2 = type
    L2_2 = Config
    L2_2 = L2_2.MaxFurnitureInside
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.MaxFurnitureInside
      if 0 == L1_2 then
        L1_2 = PlayerData
        L1_2 = L1_2.insideProperty
        if L1_2 then
          L1_2 = Framework
          L1_2 = L1_2.Notify
          L2_2 = {}
          L3_2 = locale
          L4_2 = "notify_furniture_inside_disabled"
          L3_2 = L3_2(L4_2)
          L2_2.description = L3_2
          L2_2.type = "error"
          L1_2(L2_2)
          return
        end
      end
    end
  end
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L2_2 = A0_2.id
  L1_2.propertyId = L2_2
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L2_2 = PlayerData
  L2_2 = L2_2.insideProperty
  if L2_2 then
    L2_2 = "inside"
    if L2_2 then
      goto lbl_96
    end
  end
  L2_2 = "outside"
  ::lbl_96::
  L1_2.furnitureType = L2_2
  L1_2 = OpenFurniture
  L1_2()
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Started editing furniture for property: "
  L3_2 = A0_2.label
  L4_2 = " with ID: "
  L5_2 = A0_2.id
  L6_2 = " in environment: "
  L7_2 = Client
  L7_2 = L7_2.furnitureInfo
  L7_2 = L7_2.furnitureType
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L1_2(L2_2)
end
L0_1.furniture = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.keyHolders
  L3_2 = A1_2.identifier
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    return
  end
  L3_2 = pairs
  L4_2 = A1_2.locks
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    L10_2 = L8_2.access
    L2_2[L9_2] = L10_2
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:updateKeyHolderAccess"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_36
    end
  end
  L7_2 = "error"
  ::lbl_36::
  L6_2.type = L7_2
  L5_2(L6_2)
end
L0_1.updateKeyHolderAccess = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2.getLocksInfo
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.isRenter
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.isOwner
  L5_2 = L5_2(L6_2)
  L6_2 = PlayerData
  L6_2 = L6_2.identifier
  if A1_2 == L6_2 then
    if L5_2 then
      L7_2 = A0_2
      L6_2 = A0_2.isRented
      L6_2 = L6_2(L7_2)
    end
    if not L6_2 or L4_2 then
      L6_2 = pairs
      L7_2 = L3_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        if L4_2 then
          L12_2 = L11_2.id
          if "manage_property_renters" == L12_2 then
            goto lbl_35
          end
        end
        if L4_2 then
          L12_2 = L11_2.id
          ::lbl_35::
          if "manage_property_settings" == L12_2 and not L5_2 then
            L12_2 = #L2_2
            L12_2 = L12_2 + 1
            L13_2 = {}
            L14_2 = L11_2.id
            L13_2.id = L14_2
            L14_2 = L11_2.label
            L13_2.label = L14_2
            L13_2.access = false
            L2_2[L12_2] = L13_2
        end
        else
          L12_2 = #L2_2
          L12_2 = L12_2 + 1
          L13_2 = {}
          L14_2 = L11_2.id
          L13_2.id = L14_2
          L14_2 = L11_2.label
          L13_2.label = L14_2
          L13_2.access = true
          L2_2[L12_2] = L13_2
        end
      end
  end
  else
    L6_2 = PlayerData
    L6_2 = L6_2.identifier
    if A1_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.isOwner
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = pairs
        L7_2 = L3_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = #L2_2
          L12_2 = L12_2 + 1
          L13_2 = {}
          L14_2 = L11_2.id
          L13_2.id = L14_2
          L14_2 = L11_2.label
          L13_2.label = L14_2
          L14_2 = L11_2.id
          L14_2 = L11_2.id
          L14_2 = A0_2.keyHolders
          if L14_2 then
            L14_2 = L14_2[A1_2]
          end
          if L14_2 then
            L14_2 = A0_2.keyHolders
            L14_2 = L14_2[A1_2]
            L15_2 = L11_2.id
            L14_2 = L14_2[L15_2]
          end
          L14_2 = "manage_property_renters" == L14_2 or L14_2
          L13_2.access = L14_2
          L2_2[L12_2] = L13_2
        end
    end
    else
      L6_2 = A0_2.keyHolders
      if L6_2 then
        L6_2 = A0_2.keyHolders
        L6_2 = L6_2[A1_2]
        if L6_2 then
          L6_2 = lib
          L6_2 = L6_2.print
          L6_2 = L6_2.debug
          L7_2 = "Key holder found"
          L6_2(L7_2)
          L6_2 = A0_2.keyHolders
          L6_2 = L6_2[A1_2]
          L7_2 = pairs
          L8_2 = L3_2
          L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
          for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
            L13_2 = L12_2.id
            L13_2 = L6_2[L13_2]
            if not L13_2 then
              L13_2 = false
            end
            L15_2 = A0_2
            L14_2 = A0_2.isRented
            L14_2 = L14_2(L15_2)
            if L14_2 then
              L14_2 = L12_2.id
              if "manage_property_settings" ~= L14_2 then
                L14_2 = L12_2.id
                if "manage_property_renters" ~= L14_2 then
                  goto lbl_147
                end
              end
              L13_2 = false
            end
            ::lbl_147::
            L14_2 = #L2_2
            L14_2 = L14_2 + 1
            L15_2 = {}
            L16_2 = L12_2.id
            L15_2.id = L16_2
            L16_2 = L12_2.label
            L15_2.label = L16_2
            L15_2.access = L13_2
            L2_2[L14_2] = L15_2
          end
      end
      else
        L6_2 = lib
        L6_2 = L6_2.print
        L6_2 = L6_2.debug
        L7_2 = "Key holder not found"
        L6_2(L7_2)
        L6_2 = pairs
        L7_2 = L3_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = #L2_2
          L12_2 = L12_2 + 1
          L13_2 = {}
          L14_2 = L11_2.id
          L13_2.id = L14_2
          L14_2 = L11_2.label
          L13_2.label = L14_2
          L13_2.access = false
          L2_2[L12_2] = L13_2
        end
      end
    end
  end
  L6_2 = {}
  L6_2.identifier = A1_2
  L6_2.locks = L2_2
  return L6_2
end
L0_1.getKeyHolderInfo = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "manage_property_keys"
  L3_2 = locale
  L4_2 = "lock_manage_property_keys"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L3_2 = {}
  L3_2.id = "manage_property_furniture"
  L4_2 = locale
  L5_2 = "lock_manage_property_furniture"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L4_2 = {}
  L4_2.id = "manage_interactable_points"
  L5_2 = locale
  L6_2 = "lock_manage_interactable_points"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L5_2 = {}
  L5_2.id = "manage_property_renters"
  L6_2 = locale
  L7_2 = "lock_manage_property_renters"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L6_2 = {}
  L6_2.id = "manage_property_security"
  L7_2 = locale
  L8_2 = "lock_manage_property_security"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L7_2 = {}
  L7_2.id = "manage_property_settings"
  L8_2 = locale
  L9_2 = "lock_manage_property_settings"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L2_2 = A0_2.metadata
  L2_2 = L2_2.type
  if "mlo" == L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L3_2.id = "manage_doors"
    L4_2 = locale
    L5_2 = "lock_manage_doors"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.metadata
  L2_2 = L2_2.type
  if "ipl" == L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = {}
    L3_2.id = "manage_ipl"
    L4_2 = locale
    L5_2 = "lock_manage_ipl"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L1_2[L2_2] = L3_2
  end
  L2_2 = A0_2.doors
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.doors
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L9_2 = {}
      L10_2 = "door_"
      L11_2 = L7_2.id
      L10_2 = L10_2 .. L11_2
      L9_2.id = L10_2
      L10_2 = L7_2.name
      L9_2.label = L10_2
      L1_2[L8_2] = L9_2
    end
  end
  L2_2 = A0_2.metadata
  L2_2 = L2_2.points
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.metadata
    L3_2 = L3_2.points
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2
      if L8_2 then
        L8_2 = L8_2.requireKeys
      end
      if L8_2 then
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L9_2 = {}
        L10_2 = "interactable_point_"
        L11_2 = L6_2
        L10_2 = L10_2 .. L11_2
        L9_2.id = L10_2
        L10_2 = L7_2.label
        L9_2.label = L10_2
        L1_2[L8_2] = L9_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.getAdditionalLocks
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = #L1_2
      L9_2 = L9_2 + 1
      L1_2[L9_2] = L8_2
    end
  end
  return L1_2
end
L0_1.getLocksInfo = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = pairs
  L5_2 = A0_2
  L4_2 = A0_2.getLocksInfo
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    L2_2[L9_2] = false
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:addKey"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = A1_2
  L8_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    L5_2 = Framework
    L5_2 = L5_2.Notify
    L6_2 = {}
    L6_2.description = L4_2
    L6_2.type = "error"
    L5_2(L6_2)
  end
  return L3_2
end
L0_1.addKeyHolder = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:removeKey"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
  end
  return L2_2
end
L0_1.removeKeyHolder = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:removeAllKeys"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L4_2.description = L2_2
    L4_2.type = "error"
    L3_2(L4_2)
  end
  return L1_2
end
L0_1.removeAllKeyHolders = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.buildingId
  if L1_2 then
  else
    L1_2 = A0_2.metadata
    L1_2 = L1_2.camData
    if L1_2 then
      L1_2 = A0_2.metadata
      L1_2 = L1_2.camData
      L1_2 = L1_2.camObjectCoords
      if L1_2 then
        L1_2 = A0_2.metadata
        L1_2 = L1_2.camData
        L1_2 = L1_2.camObjectRotation
        if L1_2 then
          L1_2 = A0_2.securityCamera
          if L1_2 then
            L1_2 = A0_2.securityCamera
            L2_2 = L1_2
            L1_2 = L1_2.update
            L3_2 = {}
            L4_2 = A0_2.metadata
            L4_2 = L4_2.camData
            L4_2 = L4_2.camObjectCoords
            L3_2.coords = L4_2
            L4_2 = A0_2.metadata
            L4_2 = L4_2.camData
            L4_2 = L4_2.camObjectRotation
            L3_2.rotation = L4_2
            L1_2(L2_2, L3_2)
            L1_2 = lib
            L1_2 = L1_2.print
            L1_2 = L1_2.debug
            L2_2 = "Camera updated for property: "
            L3_2 = A0_2.id
            L2_2 = L2_2 .. L3_2
            L1_2(L2_2)
          else
            L1_2 = A0_2.metadata
            L1_2 = L1_2.camData
            L1_2 = L1_2.camObjectCoords
            L2_2 = A0_2.metadata
            L2_2 = L2_2.camData
            L2_2 = L2_2.camObjectRotation
            L3_2 = "prop_cctv_cam_04c"
            L4_2 = {}
            L4_2.id = 0
            L5_2 = A0_2.id
            L4_2.propertyId = L5_2
            L4_2.coords = L1_2
            L4_2.rotation = L2_2
            L4_2.model = L3_2
            L4_2.disableCliping = true
            L5_2 = Furniture
            L6_2 = L5_2
            L5_2 = L5_2.new
            L7_2 = L4_2
            L5_2 = L5_2(L6_2, L7_2)
            A0_2.securityCamera = L5_2
            L5_2 = lib
            L5_2 = L5_2.print
            L5_2 = L5_2.debug
            L6_2 = "Camera spawned for property: "
            L7_2 = A0_2.id
            L6_2 = L6_2 .. L7_2
            L5_2(L6_2)
          end
      end
    end
    else
      L1_2 = A0_2.securityCamera
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.despawnCamera
        L1_2(L2_2)
      else
        L1_2 = lib
        L1_2 = L1_2.print
        L1_2 = L1_2.debug
        L2_2 = "Camera data not found for property: "
        L3_2 = A0_2.id
        L2_2 = L2_2 .. L3_2
        L1_2(L2_2)
      end
    end
  end
end
L0_1.spawnCamera = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.buildingId
  if L1_2 then
  else
    L1_2 = A0_2.securityCamera
    if L1_2 then
      L1_2 = A0_2.securityCamera
      L2_2 = L1_2
      L1_2 = L1_2.despawnObject
      L1_2(L2_2)
      A0_2.securityCamera = nil
      L1_2 = PlayerData
      L1_2 = L1_2.currentCamera
      L2_2 = A0_2.id
      if L1_2 == L2_2 then
        L1_2 = PlayerData
        L1_2.currentCamera = nil
      end
    end
  end
end
L0_1.despawnCamera = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = L1_2
    L2_2 = L1_2.openCamera
    L4_2 = A0_2.type
    if "shell" == L4_2 then
      L4_2 = PlayerData
      L4_2 = L4_2.insideProperty
      if L4_2 then
        L4_2 = A0_2.id
        if L4_2 then
          goto lbl_20
        end
      end
    end
    L4_2 = nil
    ::lbl_20::
    L2_2(L3_2, L4_2)
    L2_2 = PlayerData
    L3_2 = A0_2.id
    L2_2.currentCamera = L3_2
  else
    L1_2 = A0_2.metadata
    L1_2 = L1_2.camData
    if not L1_2 then
      L2_2 = Framework
      L2_2 = L2_2.Notify
      L3_2 = {}
      L4_2 = locale
      L5_2 = "camera_not_found"
      L4_2 = L4_2(L5_2)
      L3_2.description = L4_2
      L3_2.type = "error"
      L2_2(L3_2)
      return
    end
    L2_2 = SecurityCam
    L3_2 = L1_2
    L4_2 = A0_2.type
    if "shell" == L4_2 then
      L4_2 = PlayerData
      L4_2 = L4_2.insideProperty
      if L4_2 then
        L4_2 = A0_2.id
        if L4_2 then
          goto lbl_53
        end
      end
    end
    L4_2 = nil
    ::lbl_53::
    L2_2(L3_2, L4_2)
    L2_2 = PlayerData
    L3_2 = A0_2.id
    L2_2.currentCamera = L3_2
  end
end
L0_1.openCamera = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerData
  L1_2 = L1_2.insideProperty
  if L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.Notify
    L2_2 = {}
    L3_2 = locale
    L4_2 = "camera_add_inside"
    L3_2 = L3_2(L4_2)
    L2_2.description = L3_2
    L2_2.type = "error"
    L1_2(L2_2)
    return
  end
  L1_2 = GetCamData
  L2_2 = false
  L3_2 = A0_2.id
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "camera_not_found"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.type = "error"
    L3_2(L4_2)
    return
  else
    A0_2.securityCamera = L2_2
    L3_2 = A0_2.metadata
    L3_2.camData = L1_2
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "nolag_properties:server:property:addCamera"
    L5_2 = false
    L6_2 = A0_2.id
    L7_2 = L1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "camera_added"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.type = "success"
    L3_2(L4_2)
  end
end
L0_1.addCamera = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.camData
  if not L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.Notify
    L2_2 = {}
    L3_2 = locale
    L4_2 = "camera_not_found"
    L3_2 = L3_2(L4_2)
    L2_2.description = L3_2
    L2_2.type = "error"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2.metadata
  L1_2.camData = nil
  L1_2 = A0_2.securityCamera
  if L1_2 then
    L1_2 = A0_2.securityCamera
    L2_2 = L1_2
    L1_2 = L1_2.despawnObject
    L1_2(L2_2)
  end
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:removeCamera"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Framework
  L1_2 = L1_2.Notify
  L2_2 = {}
  L3_2 = locale
  L4_2 = "camera_removed"
  L3_2 = L3_2(L4_2)
  L2_2.description = L3_2
  L2_2.type = "success"
  L1_2(L2_2)
end
L0_1.removeCamera = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.metadata
    L2_2 = L2_2.camData
    L3_2 = nil ~= L2_2
    return L3_2
  else
    L1_2 = A0_2.metadata
    L1_2 = L1_2.camData
    L2_2 = nil ~= L1_2
    return L2_2
  end
end
L0_1.hasSecurityCam = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.getDoorLockedState
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:toggleDoorlock"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = false
  L7_2 = true
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.lockPickProperty = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.getDoorLockedState
  L1_2 = L1_2(L2_2)
  L2_2 = not L1_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:toggleDoorlock"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    A0_2.doorLocked = L2_2
    L4_2 = true
    return L4_2
  else
    L4_2 = false
    return L4_2
  end
end
L0_1.toggleDoorlock = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Playing doorbell sound"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "nolag_properties:server:property:doorBell"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
end
L0_1.doorBell = L1_1
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "nolag_properties:client:tryRaidingProperty"
function L2_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.RaidProperty
  return L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:policeRaid"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = Framework
  L3_2 = L3_2.Notify
  L4_2 = {}
  L4_2.description = L2_2
  if L1_2 then
    L5_2 = "success"
    if L5_2 then
      goto lbl_19
    end
  end
  L5_2 = "error"
  ::lbl_19::
  L4_2.type = L5_2
  L3_2(L4_2)
end
L0_1.policeRaid = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.lockdown
  L1_2 = not L1_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:toggleLockdown"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L4_2 = lib
    L4_2 = L4_2.callback
    L4_2 = L4_2.await
    L5_2 = "nolag_properties:server:property:toggleDoorlock"
    L6_2 = false
    L7_2 = A0_2.id
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    if L1_2 then
      L4_2 = lib
      L4_2 = L4_2.playAnim
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = "pickup_object"
      L7_2 = "pickup_low"
      L8_2 = 8.0
      L9_2 = -8
      L10_2 = -1
      L11_2 = 49
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_2 = Wait
      L5_2 = 1800
      L4_2(L5_2)
      L5_2 = A0_2
      L4_2 = A0_2.spawnLockdownBarrier
      L4_2(L5_2)
      L4_2 = ClearPedTasks
      L5_2 = cache
      L5_2 = L5_2.ped
      L4_2(L5_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2.despawnLockdownBarrier
      L4_2(L5_2)
    end
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    if L2_2 then
      L6_2 = "success"
      if L6_2 then
        goto lbl_58
      end
    end
    L6_2 = "error"
    ::lbl_58::
    L5_2.type = L6_2
    L4_2(L5_2)
  end
  return L2_2
end
L0_1.policeLockdown = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.lockdown
  if L1_2 then
    L1_2 = A0_2.lockdownBarrier
    if L1_2 then
      return
    end
    L1_2 = A0_2.metadata
    L1_2 = L1_2.exitCoords
    if not L1_2 then
      return
    end
    L1_2 = Furniture
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = 0
    L3_2.propertyId = 0
    L4_2 = vector3
    L5_2 = A0_2.metadata
    L5_2 = L5_2.exitCoords
    L5_2 = L5_2.x
    L6_2 = A0_2.metadata
    L6_2 = L6_2.exitCoords
    L6_2 = L6_2.y
    L7_2 = A0_2.metadata
    L7_2 = L7_2.exitCoords
    L7_2 = L7_2.z
    L7_2 = L7_2 - 1.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.coords = L4_2
    L4_2 = vector3
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = A0_2.metadata
    L7_2 = L7_2.exitCoords
    L7_2 = L7_2.w
    if not L7_2 then
      L7_2 = 0.0
    end
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.rotation = L4_2
    L3_2.model = "prop_barrier_work05"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.lockdownBarrier = L1_2
  else
    L1_2 = A0_2.lockdownBarrier
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.despawnLockdownBarrier
      L1_2(L2_2)
    end
  end
end
L0_1.spawnLockdownBarrier = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.lockdownBarrier
  if L1_2 then
    L1_2 = A0_2.lockdownBarrier
    L2_2 = L1_2
    L1_2 = L1_2.despawnObject
    L1_2(L2_2)
    A0_2.lockdownBarrier = nil
  end
end
L0_1.despawnLockdownBarrier = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.owner
  L1_2 = nil ~= L1_2
  return L1_2
end
L0_1.isOwned = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Entered big zone of property: "
  L3_2 = A0_2.label
  L4_2 = " with ID: "
  L5_2 = A0_2.id
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideBigZone
  L2_2 = A0_2.id
  L1_2[L2_2] = true
  L1_2 = A0_2.spawnedFurniture
  L1_2 = L1_2.outside
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.despawnFurniture
    L3_2 = "outside"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.spawnFurniture
  L3_2 = "outside"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.spawnCamera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.spawnSaleSign
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.spawnLockdownBarrier
  L1_2(L2_2)
end
L0_1.enterBigZone = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Exited big zone of property: "
  L3_2 = A0_2.label
  L4_2 = " with ID: "
  L5_2 = A0_2.id
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideBigZone
  L2_2 = A0_2.id
  L1_2[L2_2] = false
  L2_2 = A0_2
  L1_2 = A0_2.despawnFurniture
  L3_2 = "outside"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnCamera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnSaleSign
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnLockdownBarrier
  L1_2(L2_2)
end
L0_1.exitBigZone = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if "inside" ~= A1_2 and "outside" ~= A1_2 then
    return
  end
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Despawning furniture for property with ID: "
  L4_2 = A0_2.id
  L5_2 = " in environment: "
  L6_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = A0_2.spawnedFurniture
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.spawnedFurniture
    L3_2 = L3_2[A1_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.despawnObject
      L8_2(L9_2)
    end
    L2_2 = A0_2.spawnedFurniture
    L3_2 = {}
    L2_2[A1_2] = L3_2
  end
end
L0_1.despawnFurniture = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  if "inside" ~= A1_2 and "outside" ~= A1_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.MaxFurnitureOutside
  if L2_2 then
    L2_2 = type
    L3_2 = Config
    L3_2 = L3_2.MaxFurnitureOutside
    L2_2 = L2_2(L3_2)
    if "number" == L2_2 then
      L2_2 = Config
      L2_2 = L2_2.MaxFurnitureOutside
      if 0 == L2_2 and "outside" == A1_2 then
        L2_2 = PlayerData
        L2_2 = L2_2.insideProperty
        if not L2_2 then
          return
        end
      end
    end
  end
  L2_2 = Config
  L2_2 = L2_2.MaxFurnitureInside
  if L2_2 then
    L2_2 = type
    L3_2 = Config
    L3_2 = L3_2.MaxFurnitureInside
    L2_2 = L2_2(L3_2)
    if "number" == L2_2 then
      L2_2 = Config
      L2_2 = L2_2.MaxFurnitureInside
      if 0 == L2_2 and "inside" == A1_2 then
        L2_2 = PlayerData
        L2_2 = L2_2.insideProperty
        if L2_2 then
          return
        end
      end
    end
  end
  L2_2 = A0_2.spawnedFurniture
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = A0_2.spawnedFurniture
    L2_2 = L2_2[A1_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      return
    end
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:getFurniture"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Spawning furniture for property with ID: "
  L5_2 = A0_2.id
  L6_2 = " in environment: "
  L7_2 = A1_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  if not L2_2 then
    return
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2[1]
    L10_2 = L8_2[2]
    L11_2 = L8_2[3]
    L12_2 = L8_2[4]
    L13_2 = L8_2[5]
    L14_2 = L8_2[6]
    L15_2 = L8_2[7]
    L16_2 = L8_2[8]
    L17_2 = {}
    L18_2 = L14_2[1]
    L17_2.x = L18_2
    L18_2 = L14_2[2]
    L17_2.y = L18_2
    L18_2 = L14_2[3]
    L17_2.z = L18_2
    L18_2 = A0_2.type
    if "shell" == L18_2 and "inside" == A1_2 then
      L18_2 = GetOffsetFromEntityInWorldCoords
      L19_2 = A0_2.shellData
      L19_2 = L19_2.object
      L20_2 = L14_2[1]
      L21_2 = L14_2[2]
      L22_2 = L14_2[3]
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
      L17_2 = L18_2
    end
    L18_2 = {}
    L18_2.uId = L9_2
    L18_2.id = L7_2
    L19_2 = A0_2.id
    L18_2.propertyId = L19_2
    L19_2 = {}
    L20_2 = L15_2[1]
    L19_2.x = L20_2
    L20_2 = L15_2[2]
    L19_2.y = L20_2
    L20_2 = L15_2[3]
    L19_2.z = L20_2
    L18_2.rotation = L19_2
    L18_2.coords = L17_2
    L18_2.model = L10_2
    L19_2 = L11_2 or L19_2
    if not L11_2 then
      L19_2 = "Furniture"
      L20_2 = L7_2
      L19_2 = L19_2 .. L20_2
    end
    L18_2.label = L19_2
    L18_2.price = L12_2
    L18_2.type = L16_2
    L18_2.requireKeys = L13_2
    L18_2.environment = A1_2
    L18_2.bought = true
    L19_2 = A0_2.spawnedFurniture
    L19_2 = L19_2[A1_2]
    L20_2 = Furniture
    L21_2 = L20_2
    L20_2 = L20_2.new
    L22_2 = L18_2
    L20_2 = L20_2(L21_2, L22_2)
    L19_2[L7_2] = L20_2
  end
end
L0_1.spawnFurniture = L1_1
L0_1 = Property
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2.spawnedFurniture
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    return
  end
  L4_2 = A0_2.spawnedFurniture
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2[A2_2]
  if not L4_2 and A3_2 then
    L4_2 = A3_2.coords
    L5_2 = A0_2.type
    if "shell" == L5_2 then
      L5_2 = A3_2.environment
      if "inside" == L5_2 then
        L5_2 = GetOffsetFromEntityInWorldCoords
        L6_2 = A0_2.shellData
        L6_2 = L6_2.object
        L7_2 = L4_2.x
        L8_2 = L4_2.y
        L9_2 = L4_2.z
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L4_2 = L5_2
      end
    end
    L5_2 = A0_2.spawnedFurniture
    L5_2 = L5_2[A1_2]
    L6_2 = Furniture
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.id = A2_2
    L9_2 = A0_2.id
    L8_2.propertyId = L9_2
    L9_2 = A3_2.rotation
    L8_2.rotation = L9_2
    L9_2 = A3_2.type
    L8_2.type = L9_2
    L8_2.coords = L4_2
    L9_2 = A3_2.model
    L8_2.model = L9_2
    L9_2 = A3_2.label
    if not L9_2 then
      L9_2 = "Furniture"
      L10_2 = A2_2
      L9_2 = L9_2 .. L10_2
    end
    L8_2.label = L9_2
    L9_2 = A3_2.requireKeys
    L8_2.requireKeys = L9_2
    L9_2 = A3_2.environment
    L8_2.environment = L9_2
    L8_2.bought = true
    L6_2 = L6_2(L7_2, L8_2)
    L5_2[A2_2] = L6_2
  else
    L4_2 = A0_2.spawnedFurniture
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2[A2_2]
    if A3_2 then
      L5_2 = A3_2.coords
      L6_2 = A0_2.type
      if "shell" == L6_2 then
        L6_2 = A3_2.environment
        if "inside" == L6_2 then
          L6_2 = GetOffsetFromEntityInWorldCoords
          L7_2 = A0_2.shellData
          L7_2 = L7_2.object
          L8_2 = L5_2.x
          L9_2 = L5_2.y
          L10_2 = L5_2.z
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
          L5_2 = L6_2
        end
      end
      L6_2 = A3_2.label
      if not L6_2 then
        L6_2 = "Furniture"
        L7_2 = A2_2
        L6_2 = L6_2 .. L7_2
      end
      L4_2.label = L6_2
      L6_2 = A3_2.requireKeys
      L4_2.requireKeys = L6_2
      L7_2 = L4_2
      L6_2 = L4_2.update
      L8_2 = {}
      L8_2.coords = L5_2
      L9_2 = A3_2.rotation
      L8_2.rotation = L9_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = L4_2
      L5_2 = L4_2.despawnObject
      L5_2(L6_2)
      L5_2 = A0_2.spawnedFurniture
      L5_2 = L5_2[A1_2]
      L5_2[A2_2] = nil
    end
  end
  L4_2 = Client
  L4_2 = L4_2.furnitureInfo
  L4_2 = L4_2.propertyId
  L5_2 = A0_2.id
  if L4_2 == L5_2 then
    L4_2 = Client
    L4_2 = L4_2.furnitureInfo
    L4_2 = L4_2.furnitureType
    if L4_2 == A1_2 then
      L4_2 = SendNUIMessage
      L5_2 = {}
      L5_2.action = "furniture:refreshObjects"
      L4_2(L5_2)
    end
  end
end
L0_1.updateFurniture = L1_1
L0_1 = Property
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.type
  if "shell" ~= L1_2 then
    L1_2 = A0_2.type
    if "ipl" ~= L1_2 then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.enter
  L1_2(L2_2)
  goto lbl_30
  ::lbl_10::
  L1_2 = A0_2.type
  if "mlo" == L1_2 then
    L1_2 = SetEntityCoords
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = A0_2.metadata
    L3_2 = L3_2.managePoint
    L3_2 = L3_2.x
    L4_2 = A0_2.metadata
    L4_2 = L4_2.managePoint
    L4_2 = L4_2.y
    L5_2 = A0_2.metadata
    L5_2 = L5_2.managePoint
    L5_2 = L5_2.z
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  ::lbl_30::
end
L0_1.spawnInside = L1_1
L0_1 = false
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Entering property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.type
  if "shell" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.enterShell
    L1_2(L2_2)
  else
    L1_2 = A0_2.type
    if "ipl" == L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.enterIPL
      L1_2(L2_2)
    else
      L1_2 = A0_2.type
      if "mlo" == L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.enterMLO
        L1_2(L2_2)
      end
    end
  end
end
L1_1.enter = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = ShellsData
  L2_2 = A0_2.metadata
  L2_2 = L2_2.shellType
  L1_2 = L1_2[L2_2]
  if nil == L1_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "Shell data not found"
    L2_2(L3_2)
    return
  end
  L2_2 = nil
  L3_2 = A0_2.buildingId
  if L3_2 then
    L3_2 = BuildingManager
    L4_2 = L3_2
    L3_2 = L3_2.getBuildingById
    L5_2 = A0_2.buildingId
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = vector3
      L5_2 = L3_2.metadata
      L5_2 = L5_2.enterData
      L5_2 = L5_2.x
      L6_2 = L3_2.metadata
      L6_2 = L6_2.enterData
      L6_2 = L6_2.y
      L7_2 = A0_2.metadata
      L7_2 = L7_2.shellZLevel
      if not L7_2 then
        L7_2 = Config
        L7_2 = L7_2.ShellZLevel
      end
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L2_2 = L4_2
    end
  else
    L3_2 = A0_2.metadata
    L3_2 = L3_2.enterData
    if L3_2 then
      L3_2 = vector3
      L4_2 = A0_2.metadata
      L4_2 = L4_2.enterData
      L4_2 = L4_2.x
      L5_2 = A0_2.metadata
      L5_2 = L5_2.enterData
      L5_2 = L5_2.y
      L6_2 = A0_2.metadata
      L6_2 = L6_2.shellZLevel
      if not L6_2 then
        L6_2 = Config
        L6_2 = L6_2.ShellZLevel
      end
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2 = L3_2
    else
      L3_2 = lib
      L3_2 = L3_2.print
      L3_2 = L3_2.error
      L4_2 = "Shell enter data not found"
      L3_2(L4_2)
      return
    end
  end
  L3_2 = DoScreenFadeOut
  L4_2 = 200
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 300
  L3_2(L4_2)
  L3_2 = FreezeEntityPosition
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "nolag_properties:server:property:enter"
  L5_2 = A0_2.id
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.object = nil
  L3_2.objectCoords = nil
  A0_2.shellData = L3_2
  L3_2 = A0_2.shellData
  L4_2 = A0_2.shellData
  L5_2 = SpawnShell
  L6_2 = L1_2.hash
  L7_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L4_2.objectCoords = L6_2
  L3_2.object = L5_2
  L3_2 = A0_2.shellData
  L3_2 = L3_2.object
  if 0 == L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Shell object not found"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = DoScreenFadeIn
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = FreezeEntityPosition
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = TriggerServerEvent
    L4_2 = "nolag_properties:server:property:exit"
    L5_2 = A0_2.id
    L3_2(L4_2, L5_2)
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "entity_cant_be_loaded"
    L5_2 = L5_2(L6_2)
    L4_2.description = L5_2
    L4_2.type = "error"
    L3_2(L4_2)
    return
  end
  L3_2 = true
  L0_1 = L3_2
  L3_2 = PlayerData
  L3_2.insideProperty = true
  L3_2 = PlayerData
  L3_2.currentProperty = A0_2
  L3_2 = LocalPlayer
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "instance"
  L6_2 = A0_2.id
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = LocalPlayer
  L3_2 = L3_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "currentProperty"
  L6_2 = A0_2.id
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerEvent
  L4_2 = "nolag_properties:client:weatherSync"
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetExtraTimecycleModifier
  L4_2 = "INT_NOdirectLight"
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.spawnFurniture
  L5_2 = "inside"
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.spawnInteractablePoints
  L5_2 = "inside"
  L3_2(L4_2, L5_2)
  L3_2 = L1_2.doorOffset
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = A0_2.shellData
  L5_2 = L5_2.object
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = SetEntityCoords
  L6_2 = cache
  L6_2 = L6_2.ped
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = SetEntityHeading
  L6_2 = cache
  L6_2 = L6_2.ped
  L7_2 = L1_2.doorOffset
  L7_2 = L7_2.h
  L5_2(L6_2, L7_2)
  L5_2 = CreateInteractablePoint
  L6_2 = vector3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = {}
  L8_2 = locale
  L9_2 = "ui_manage_property"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L7_2.icon = "fas fa-house-chimney-user"
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.openInteractMenu
    L0_3(L1_3)
  end
  L7_2.onSelect = L8_2
  L8_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2.insidePropertyZone = L5_2
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = A0_2.shellData
      L1_3 = L1_3.object
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = cache
        L1_3 = L1_3.ped
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityCoords
        L2_3 = A0_2.shellData
        L2_3 = L2_3.object
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 - L1_3
        L0_3 = #L0_3
        L1_3 = Config
        L1_3 = L1_3.ShellDistanceToCheck
        if not L1_3 then
          L1_3 = 50.0
        end
        if L0_3 > L1_3 then
          L0_3 = SetEntityCoords
          L1_3 = cache
          L1_3 = L1_3.ped
          L2_3 = L4_2.x
          L3_3 = L4_2.y
          L4_3 = L4_2.z
          L5_3 = false
          L6_3 = false
          L7_3 = false
          L8_3 = false
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          L0_3 = SetEntityHeading
          L1_3 = cache
          L1_3 = L1_3.ped
          L2_3 = L1_2.doorOffset
          L2_3 = L2_3.h
          L0_3(L1_3, L2_3)
        end
      end
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
    end
  end
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = 100
  L5_2(L6_2)
  L5_2 = DoScreenFadeIn
  L6_2 = 100
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = cache
  L6_2 = L6_2.ped
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L1_1.enterShell = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Opening MLO menu for property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Show offer: "
  L3_2 = tostring
  L5_2 = A0_2
  L4_2 = A0_2.showOffer
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.showOffer
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.manageProperty
    L1_2(L2_2)
  else
    L1_2 = lib
    L1_2 = L1_2.registerContext
    L2_2 = {}
    L2_2.id = "mlo_menu"
    L3_2 = A0_2.label
    L2_2.title = L3_2
    L2_2.menu = "mlo_menu"
    L3_2 = {}
    L4_2 = {}
    L5_2 = locale
    L6_2 = "ui_manage_property"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L4_2.icon = "fas fa-house-chimney-user"
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.manageProperty
      L0_3(L1_3)
    end
    L4_2.onSelect = L5_2
    L5_2 = {}
    L6_2 = locale
    L7_2 = "ui_property_offer"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L5_2.icon = "fas fa-handshake"
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.openOffer
      L0_3(L1_3)
    end
    L5_2.onSelect = L6_2
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L2_2.options = L3_2
    L1_2(L2_2)
    L1_2 = lib
    L1_2 = L1_2.showContext
    L2_2 = "mlo_menu"
    L1_2(L2_2)
  end
end
L1_1.openMloMenu = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = TriggerServerEvent
  L2_2 = "nolag_properties:server:property:enter"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = true
  L0_1 = L1_2
  L1_2 = PlayerData
  L1_2.insideProperty = true
  L1_2 = PlayerData
  L1_2.currentProperty = A0_2
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "instance"
  L4_2 = A0_2.id
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = A0_2.id
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = DoScreenFadeOut
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = IPLsData
  L2_2 = A0_2.metadata
  L2_2 = L2_2.iplName
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "IPL data not found"
    L2_2(L3_2)
    return
  end
  L2_2 = L1_2.iplRequest
  if L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Requesting ipl: "
    L4_2 = L1_2.iplRequest
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = RequestIpl
    L3_2 = L1_2.iplRequest
    L2_2(L3_2)
  end
  L2_2 = L1_2.exteriorHashs
  if L2_2 then
    L2_2 = type
    L3_2 = L1_2.exteriorHashs
    L2_2 = L2_2(L3_2)
    if "function" == L2_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Setting exterior hashs"
      L2_2(L3_2)
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3
        while true do
          L0_3 = L0_1
          if not L0_3 then
            break
          end
          L0_3 = L1_2.exteriorHashs
          L0_3()
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
      end
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.spawnFurniture
  L4_2 = "inside"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.spawnInteractablePoints
  L4_2 = "inside"
  L2_2(L3_2, L4_2)
  L2_2 = CreateInteractablePoint
  L3_2 = L1_2.insideCoords
  L4_2 = {}
  L5_2 = locale
  L6_2 = "ui_manage_property"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.icon = "fas fa-house-chimney-user"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.openInteractMenu
    L0_3(L1_3)
  end
  L4_2.onSelect = L5_2
  L5_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.insidePropertyZone = L2_2
  L2_2 = SetEntityCoords
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = L1_2.insideCoords
  L4_2 = L4_2.x
  L5_2 = L1_2.insideCoords
  L5_2 = L5_2.y
  L6_2 = L1_2.insideCoords
  L6_2 = L6_2.z
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = L1_2.insideCoords
  L2_2 = L2_2.w
  if L2_2 then
    L2_2 = SetEntityHeading
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L1_2.insideCoords
    L4_2 = L4_2.w
    L2_2(L3_2, L4_2)
  end
  L2_2 = IplCreator
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = A0_2.id
  L5_2 = A0_2.metadata
  L5_2 = L5_2.iplName
  L6_2 = A0_2.metadata
  L6_2 = L6_2.iplCustomization
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.IPL = L2_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = cache
      L1_3 = L1_3.ped
      L0_3 = L0_3(L1_3)
      L1_3 = L1_2.insideCoords
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = Config
      L1_3 = L1_3.IplDistanceToCheck
      if not L1_3 then
        L1_3 = 75.0
      end
      if L0_3 > L1_3 then
        L0_3 = SetEntityCoords
        L1_3 = cache
        L1_3 = L1_3.ped
        L2_3 = L1_2.insideCoords
        L2_3 = L2_3.x
        L3_3 = L1_2.insideCoords
        L3_3 = L3_3.y
        L4_3 = L1_2.insideCoords
        L4_3 = L4_3.z
        L5_3 = false
        L6_3 = false
        L7_3 = false
        L8_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L0_3 = L1_2.insideCoords
        L0_3 = L0_3.w
        if L0_3 then
          L0_3 = SetEntityHeading
          L1_3 = cache
          L1_3 = L1_3.ped
          L2_3 = L1_2.insideCoords
          L2_3 = L2_3.w
          L0_3(L1_3, L2_3)
        end
      end
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = FreezeEntityPosition
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1.enterIPL = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Entering MLO property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideMlos
  L2_2 = A0_2.id
  L1_2[L2_2] = true
  L1_2 = A0_2.metadata
  L1_2 = L1_2.managePoint
  if L1_2 then
    L1_2 = CreateInteractablePoint
    L2_2 = A0_2.metadata
    L2_2 = L2_2.managePoint
    L3_2 = {}
    L4_2 = locale
    L5_2 = "ui_manage_property"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L3_2.icon = "fas fa-house-chimney-user"
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.openMloMenu
      L0_3(L1_3)
    end
    L3_2.onSelect = L4_2
    L4_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.insidePropertyZone = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.spawnInteractablePoints
  L3_2 = "inside"
  L1_2(L2_2, L3_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "insideArea"
  L4_2 = true
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = A0_2.id
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1.enterMLO = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Entering yard of property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideYards
  L2_2 = A0_2.id
  L1_2[L2_2] = true
  L2_2 = A0_2
  L1_2 = A0_2.spawnInteractablePoints
  L3_2 = "outside"
  L1_2(L2_2, L3_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "insideArea"
  L4_2 = true
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = A0_2.id
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.type
  if "mlo" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.enter
    L1_2(L2_2)
  end
end
L1_1.enterYardZone = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Exiting property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.type
  if "shell" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exitShell
    L1_2(L2_2)
  else
    L1_2 = A0_2.type
    if "ipl" == L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.exitIPL
      L1_2(L2_2)
    else
      L1_2 = A0_2.type
      if "mlo" == L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.exitMLO
        L1_2(L2_2)
      end
    end
  end
end
L1_1.exit = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = DoScreenFadeOut
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = ForcedExit
  if not L1_2 then
    L1_2 = Wait
    L2_2 = 300
    L1_2(L2_2)
  end
  L1_2 = FreezeEntityPosition
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = DoesEntityExist
  L2_2 = A0_2.shellData
  L2_2 = L2_2.object
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = A0_2.shellData
    L2_2 = L2_2.object
    L1_2(L2_2)
  end
  L1_2 = A0_2.shellData
  L1_2.object = nil
  L1_2 = A0_2.shellData
  L1_2.objectCoords = nil
  L1_2 = false
  L0_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.despawnFurniture
  L3_2 = "inside"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.deleteInteractablePoints
  L3_2 = "inside"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.insidePropertyZone
  L2_2 = L1_2
  L1_2 = L1_2.remove
  L1_2(L2_2)
  L1_2 = TriggerEvent
  L2_2 = "nolag_properties:client:weatherSync"
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ClearExtraTimecycleModifier
  L1_2()
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.metadata
    L2_2 = L2_2.exitCoords
    if L2_2 then
      L2_2 = L1_2.metadata
      L2_2 = L2_2.exitCoords
      L3_2 = SetEntityCoords
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L7_2 = L2_2.z
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L3_2 = SetEntityHeading
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.w
      L3_2(L4_2, L5_2)
    else
      L2_2 = L1_2.metadata
      L2_2 = L2_2.enterData
      L3_2 = SetEntityCoords
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L7_2 = L2_2.z
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  else
    L1_2 = A0_2.metadata
    L1_2 = L1_2.exitCoords
    if L1_2 then
      L1_2 = lib
      L1_2 = L1_2.print
      L1_2 = L1_2.debug
      L2_2 = "Exit coords found for property: "
      L3_2 = A0_2.id
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = lib
      L1_2 = L1_2.print
      L1_2 = L1_2.debug
      L2_2 = "Exit coords: "
      L3_2 = json
      L3_2 = L3_2.encode
      L4_2 = A0_2.metadata
      L4_2 = L4_2.exitCoords
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = A0_2.metadata
      L1_2 = L1_2.exitCoords
      L2_2 = SetEntityCoords
      L3_2 = cache
      L3_2 = L3_2.ped
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L6_2 = L1_2.z
      L7_2 = false
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L2_2 = SetEntityHeading
      L3_2 = cache
      L3_2 = L3_2.ped
      L4_2 = L1_2.w
      L2_2(L3_2, L4_2)
    else
      L1_2 = lib
      L1_2 = L1_2.print
      L1_2 = L1_2.debug
      L2_2 = "Exit coords not found for property: "
      L3_2 = A0_2.id
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = lib
      L1_2 = L1_2.print
      L1_2 = L1_2.debug
      L2_2 = "Using enter coords: "
      L3_2 = json
      L3_2 = L3_2.encode
      L4_2 = A0_2.metadata
      L4_2 = L4_2.enterData
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = A0_2.metadata
      L1_2 = L1_2.enterData
      L2_2 = SetEntityCoords
      L3_2 = cache
      L3_2 = L3_2.ped
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L6_2 = L1_2.z
      L7_2 = false
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L1_2 = ForcedExit
  if not L1_2 then
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = DoScreenFadeIn
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "nolag_properties:server:property:exit"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = PlayerData
  L1_2.insideProperty = false
  L1_2 = PlayerData
  L1_2.currentProperty = nil
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "instance"
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = nil
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1.exitShell = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = DoScreenFadeOut
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = ForcedExit
  if not L1_2 then
    L1_2 = Wait
    L2_2 = 300
    L1_2(L2_2)
  end
  L1_2 = FreezeEntityPosition
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = IPLsData
  L2_2 = A0_2.metadata
  L2_2 = L2_2.iplName
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2.iplRequest
    if L2_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Removing ipl: "
      L4_2 = L1_2.iplRequest
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = RemoveIpl
      L3_2 = L1_2.iplRequest
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2.insidePropertyZone
  L3_2 = L2_2
  L2_2 = L2_2.remove
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.despawnFurniture
  L4_2 = "inside"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.deleteInteractablePoints
  L4_2 = "inside"
  L2_2(L3_2, L4_2)
  L2_2 = false
  L0_1 = L2_2
  L2_2 = A0_2.buildingId
  if L2_2 then
    L2_2 = BuildingManager
    L3_2 = L2_2
    L2_2 = L2_2.getBuildingById
    L4_2 = A0_2.buildingId
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2.metadata
    L3_2 = L3_2.exitCoords
    if L3_2 then
      L3_2 = L2_2.metadata
      L3_2 = L3_2.exitCoords
      L4_2 = SetEntityCoords
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L4_2 = SetEntityHeading
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = L3_2.w
      L4_2(L5_2, L6_2)
    else
      L3_2 = L2_2.metadata
      L3_2 = L3_2.enterData
      L4_2 = SetEntityCoords
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  else
    L2_2 = A0_2.metadata
    L2_2 = L2_2.exitCoords
    if L2_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Exit coords found for property: "
      L4_2 = A0_2.id
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Exit coords: "
      L4_2 = json
      L4_2 = L4_2.encode
      L5_2 = A0_2.metadata
      L5_2 = L5_2.exitCoords
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = A0_2.metadata
      L2_2 = L2_2.exitCoords
      L3_2 = lib
      L3_2 = L3_2.print
      L3_2 = L3_2.debug
      L4_2 = "Exit coords: "
      L5_2 = json
      L5_2 = L5_2.encode
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      L3_2 = SetEntityCoords
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L7_2 = L2_2.z
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L3_2 = SetEntityHeading
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.w
      L3_2(L4_2, L5_2)
    else
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Exit coords not found for property: "
      L4_2 = A0_2.id
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Using enter coords: "
      L4_2 = json
      L4_2 = L4_2.encode
      L5_2 = A0_2.metadata
      L5_2 = L5_2.enterData
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = A0_2.metadata
      L2_2 = L2_2.enterData
      L3_2 = SetEntityCoords
      L4_2 = cache
      L4_2 = L4_2.ped
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L7_2 = L2_2.z
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
  L2_2 = ForcedExit
  if not L2_2 then
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = DoScreenFadeIn
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = FreezeEntityPosition
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2.IPL = nil
  L2_2 = TriggerServerEvent
  L3_2 = "nolag_properties:server:property:exit"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  L2_2 = PlayerData
  L2_2.insideProperty = false
  L2_2 = PlayerData
  L2_2.currentProperty = nil
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L3_2 = L2_2
  L2_2 = L2_2.set
  L4_2 = "instance"
  L5_2 = nil
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L3_2 = L2_2
  L2_2 = L2_2.set
  L4_2 = "currentProperty"
  L5_2 = nil
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1.exitIPL = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Exiting MLO property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideMlos
  L2_2 = A0_2.id
  L1_2[L2_2] = nil
  L1_2 = A0_2.insidePropertyZone
  if L1_2 then
    L1_2 = A0_2.insidePropertyZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.deleteInteractablePoints
  L3_2 = "inside"
  L1_2(L2_2, L3_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "insideArea"
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = nil
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1.exitMLO = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Exiting yard of property: "
  L3_2 = A0_2.label
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = PlayerData
  L1_2 = L1_2.insideYards
  L2_2 = A0_2.id
  L1_2[L2_2] = nil
  L2_2 = A0_2
  L1_2 = A0_2.deleteInteractablePoints
  L3_2 = "outside"
  L1_2(L2_2, L3_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "insideArea"
  L4_2 = false
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "currentProperty"
  L4_2 = nil
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.type
  if "mlo" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L1_1.exitYardZone = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.type
  if "ipl" == L1_2 then
    L1_2 = GetEntityCoords
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = SetEntityCoords
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = 2500.0
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = A0_2.IPL
    L3_2 = A0_2.metadata
    L3_2 = L3_2.iplCustomization
    L2_2.data = L3_2
    L2_2 = A0_2.IPL
    L3_2 = L2_2
    L2_2 = L2_2.setData
    L2_2(L3_2)
    L2_2 = SetEntityCoords
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = L1_2.x
    L5_2 = L1_2.y
    L6_2 = L1_2.z
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
  end
end
L1_1.refreshIpl = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.yardZone
  if L2_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.insideProperty
    if not L2_2 then
      L2_2 = A0_2.yardZone
      L3_2 = L2_2
      L2_2 = L2_2.contains
      L4_2 = A1_2
      return L2_2(L3_2, L4_2)
  end
  else
    L2_2 = true
    return L2_2
  end
end
L1_1.isPointInside = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2.buildingId = nil
  L2_2 = A0_2
  L1_2 = A0_2.createZones
  L1_2(L2_2)
end
L1_1.removeFromBuilding = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.name
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Adding interactable point: "
  L5_2 = L2_2
  L6_2 = " to property: "
  L7_2 = A0_2.id
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = A0_2.metadata
  L3_2 = L3_2.points
  if not L3_2 then
    L3_2 = A0_2.metadata
    L4_2 = {}
    L3_2.points = L4_2
  end
  L3_2 = Config
  L3_2 = L3_2.Functions
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = L3_2.type
  end
  if "outside" == L3_2 then
    L4_2 = A0_2.metadata
    L4_2 = L4_2.yardZone
    if L4_2 then
      L4_2 = A0_2.metadata
      L4_2 = L4_2.yardZone
      L4_2 = L4_2.center
      if L4_2 then
        goto lbl_47
      end
    end
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "notify_no_yard_zone_for_outside_point"
    L6_2 = L6_2(L7_2)
    L5_2.description = L6_2
    L5_2.type = "error"
    L4_2(L5_2)
    return
  end
  ::lbl_47::
  L4_2 = A0_2.metadata
  L4_2 = L4_2.points
  if L4_2 then
    L4_2 = A0_2.metadata
    L4_2 = L4_2.points
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    if L4_2 then
      goto lbl_59
    end
  end
  L4_2 = 1
  ::lbl_59::
  L5_2 = nil
  if "OpenGarageMenu" == L2_2 then
    L6_2 = GetPointCoordsCar
    L7_2 = A0_2.id
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  else
    L6_2 = Config
    L6_2 = L6_2.PointSelectionMethods
    L6_2 = L6_2.interactablePoints
    L6_2 = "ped" == L6_2
    L7_2 = PlayerData
    L7_2 = L7_2.insideProperty
    if not L7_2 then
      L7_2 = A0_2.yardZone
      if L7_2 then
        L7_2 = GetPointInsideZone
        L8_2 = A0_2.yardZone
        L7_2 = L7_2(L8_2)
        if L7_2 then
          goto lbl_90
          L5_2 = L7_2 or L5_2
        end
      end
    end
    L7_2 = GetPointCoords
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  end
  ::lbl_90::
  L6_2 = {}
  L6_2.id = L4_2
  L6_2.name = L2_2
  L7_2 = A1_2.label
  L6_2.label = L7_2
  L7_2 = A1_2.interactRange
  L6_2.interactRange = L7_2
  L7_2 = A1_2.requireKeys
  L6_2.requireKeys = L7_2
  L6_2.coords = L5_2
  L7_2 = L6_2.coords
  if not L7_2 then
    L7_2 = Framework
    L7_2 = L7_2.Notify
    L8_2 = {}
    L9_2 = locale
    L10_2 = "no_point_found"
    L9_2 = L9_2(L10_2)
    L8_2.description = L9_2
    L8_2.type = "error"
    L7_2(L8_2)
    return
  end
  L7_2 = A0_2.metadata
  L7_2 = L7_2.points
  L8_2 = L6_2.id
  L7_2[L8_2] = L6_2
  L7_2 = lib
  L7_2 = L7_2.callback
  L7_2 = L7_2.await
  L8_2 = "nolag_properties:server:property:setInteractablePoint"
  L9_2 = false
  L10_2 = A0_2.id
  L11_2 = L6_2
  L7_2, L8_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L9_2 = Framework
  L9_2 = L9_2.Notify
  L10_2 = {}
  L10_2.description = L8_2
  if L7_2 then
    L11_2 = "success"
    if L11_2 then
      goto lbl_138
    end
  end
  L11_2 = "error"
  ::lbl_138::
  L10_2.type = L11_2
  L9_2(L10_2)
  if not L7_2 then
    return
  end
end
L1_1.addInteractablePoint = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = lib
  L3_2 = L3_2.print
  L3_2 = L3_2.debug
  L4_2 = "Updating interactable point: "
  L5_2 = A1_2.id
  L6_2 = " for property: "
  L7_2 = A0_2.id
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = A0_2.interactablePoints
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = next
    L4_2 = A0_2.interactablePoints
    L5_2 = A1_2.id
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2.interactablePoints
      L4_2 = A1_2.id
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.data
      if L3_2 then
        L3_2 = L3_2.coords
      end
      L4_2 = A1_2.coords
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2 = L3_2[L4_2]
        L4_2 = L3_2
        L3_2 = L3_2.setCoords
        L5_2 = A1_2.coords
        if L5_2 then
          L5_2 = A1_2.coords
          L5_2 = L5_2.w
          if L5_2 then
            L5_2 = vector4
            L6_2 = A1_2.coords
            L6_2 = L6_2.x
            L7_2 = A1_2.coords
            L7_2 = L7_2.y
            L8_2 = A1_2.coords
            L8_2 = L8_2.z
            L9_2 = A1_2.coords
            L9_2 = L9_2.w
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            if L5_2 then
              goto lbl_63
            end
          end
        end
        L5_2 = vector3
        L6_2 = A1_2.coords
        L6_2 = L6_2.x
        L7_2 = A1_2.coords
        L7_2 = L7_2.y
        L8_2 = A1_2.coords
        L8_2 = L8_2.z
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        ::lbl_63::
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2.interactablePoints
      L4_2 = A1_2.id
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.data
      if L3_2 then
        L3_2 = L3_2.options
      end
      if L3_2 then
        L3_2 = L3_2.label
      end
      L4_2 = A1_2.label
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2 = L3_2[L4_2]
        L4_2 = L3_2
        L3_2 = L3_2.setLabel
        L5_2 = A1_2.label
        L3_2(L4_2, L5_2)
      end
      L3_2 = A0_2.interactablePoints
      L4_2 = A1_2.id
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.data
      if L3_2 then
        L3_2 = L3_2.options
      end
      if L3_2 then
        L3_2 = L3_2.radius
      end
      L4_2 = A1_2.interactRange
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2 = L3_2[L4_2]
        L4_2 = L3_2
        L3_2 = L3_2.setRadius
        L5_2 = A1_2.interactRange
        L3_2(L4_2, L5_2)
      end
      L3_2 = tostring
      L4_2 = A0_2.interactablePoints
      L5_2 = A1_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.data
      if L4_2 then
        L4_2 = L4_2.options
      end
      if L4_2 then
        L4_2 = L4_2.requireKeys
      end
      L3_2 = L3_2(L4_2)
      L4_2 = tostring
      L5_2 = A1_2.requireKeys
      L4_2 = L4_2(L5_2)
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2 = L3_2[L4_2]
        L4_2 = L3_2
        L3_2 = L3_2.setRequireKeys
        L5_2 = A1_2.requireKeys
        L3_2(L4_2, L5_2)
      end
  end
  else
    L3_2 = A0_2.interactablePoints
    L4_2 = A1_2.id
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = A1_2.coords
      if not L3_2 then
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2 = L3_2[L4_2]
        L4_2 = L3_2
        L3_2 = L3_2.remove
        L3_2(L4_2)
        L3_2 = A0_2.interactablePoints
        L4_2 = A1_2.id
        L3_2[L4_2] = nil
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2.shouldSpawnInteractablePoint
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.spawnInteractablePoint
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  if A2_2 then
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "nolag_properties:server:property:setInteractablePoint"
    L5_2 = false
    L6_2 = A0_2.id
    L7_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = Framework
    L5_2 = L5_2.Notify
    L6_2 = {}
    L6_2.description = L4_2
    if L3_2 then
      L7_2 = "success"
      if L7_2 then
        goto lbl_172
      end
    end
    L7_2 = "error"
    ::lbl_172::
    L6_2.type = L7_2
    L5_2(L6_2)
  end
end
L1_1.updateInteractablePoint = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Config
  L2_2 = L2_2.Functions
  L3_2 = A1_2.name
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.error
    L3_2 = "Function not found for point: "
    L4_2 = A1_2.name
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2.metadata
  L2_2 = L2_2.allowedPoints
  L3_2 = A1_2.name
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Point not allowed: "
    L4_2 = A1_2.name
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Functions
  L3_2 = A1_2.name
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.type
  L3_2 = A0_2.type
  L3_2 = "shell" == L3_2
  L4_2 = PlayerData
  L4_2 = L4_2.insideYards
  L5_2 = A0_2.id
  L4_2 = L4_2[L5_2]
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  if L5_2 then
    L5_2 = PlayerData
    L5_2 = L5_2.currentProperty
    if L5_2 then
      L5_2 = PlayerData
      L5_2 = L5_2.currentProperty
      L5_2 = L5_2.id
      L6_2 = A0_2.id
      L5_2 = L5_2 == L6_2
    end
  end
  L6_2 = A0_2.metadata
  L6_2 = L6_2.yardZone
  if L6_2 then
    L6_2 = A0_2.metadata
    L6_2 = L6_2.yardZone
    L6_2 = L6_2.center
    L6_2 = nil ~= L6_2
  end
  L8_2 = A0_2
  L7_2 = A0_2.isPointInside
  L9_2 = vector3
  L10_2 = A1_2.coords
  L10_2 = L10_2.x
  L11_2 = A1_2.coords
  L11_2 = L11_2.y
  L12_2 = A1_2.coords
  L12_2 = L12_2.z
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2.type
  if "mlo" == L8_2 and L4_2 then
    L8_2 = true
    return L8_2
  elseif L3_2 and L5_2 and "inside" == L2_2 then
    L8_2 = true
    return L8_2
  elseif L3_2 and L6_2 and L7_2 and L4_2 and "outside" == L2_2 then
    L8_2 = true
    return L8_2
  else
    L8_2 = false
    return L8_2
  end
end
L1_1.shouldSpawnInteractablePoint = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.metadata
  L2_2 = L2_2.points
  if not L2_2 then
    L2_2 = A0_2.metadata
    L3_2 = {}
    L2_2.points = L3_2
  end
  L2_2 = pairs
  L3_2 = A0_2.metadata
  L3_2 = L3_2.points
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = next
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = Config
        L8_2 = L8_2.Functions
        L9_2 = L7_2.name
        L8_2 = L8_2[L9_2]
        if L8_2 then
          if A1_2 then
            L8_2 = Config
            L8_2 = L8_2.Functions
            L9_2 = L7_2.name
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.type
            if L8_2 == A1_2 then
              L9_2 = A0_2
              L8_2 = A0_2.shouldSpawnInteractablePoint
              L10_2 = L7_2
              L8_2 = L8_2(L9_2, L10_2)
              if L8_2 then
                L9_2 = A0_2
                L8_2 = A0_2.spawnInteractablePoint
                L10_2 = L7_2
                L8_2(L9_2, L10_2)
              end
            end
          end
      end
    end
    else
      L8_2 = lib
      L8_2 = L8_2.print
      L8_2 = L8_2.error
      L9_2 = "Point data is nil or empty for point: "
      L10_2 = L7_2.name
      L9_2 = L9_2 .. L10_2
      L8_2(L9_2)
    end
  end
end
L1_1.spawnInteractablePoints = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2.forSale
  if not L1_2 then
    return
  end
  L1_2 = A0_2.metadata
  L1_2 = L1_2.saleSignCoords
  if not L1_2 then
    return
  end
  L2_2 = 2063723294
  L3_2 = LoadModel
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.success
  if not L4_2 then
    return
  end
  L4_2 = CreateObject
  L5_2 = L2_2
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = false
  L10_2 = true
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityRotation
  L6_2 = L4_2
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 9.0
  L10_2 = 0
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = PlaceObjectOnGroundProperly
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityInvincible
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHeading
  L6_2 = L4_2
  L7_2 = L1_2.w
  L5_2(L6_2, L7_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = {}
  L6_2.x = 0.46
  L6_2.y = -0.02
  L6_2.z = 2.077
  L5_2.tr = L6_2
  L6_2 = {}
  L6_2.x = 0.46
  L6_2.y = -0.02
  L6_2.z = 0.61
  L5_2.br = L6_2
  L6_2 = {}
  L6_2.x = -1.05
  L6_2.y = -0.02
  L6_2.z = 0.61
  L5_2.bl = L6_2
  L6_2 = {}
  L6_2.x = -1.05
  L6_2.y = -0.02
  L6_2.z = 2.077
  L5_2.tl = L6_2
  L6_2 = GetEntityCoords
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetOffsetFromEntityInWorldCoords
  L8_2 = L4_2
  L9_2 = L5_2.tl
  L9_2 = L9_2.x
  L10_2 = L5_2.tl
  L10_2 = L10_2.y
  L11_2 = L5_2.tl
  L11_2 = L11_2.z
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = GetOffsetFromEntityInWorldCoords
  L9_2 = L4_2
  L10_2 = L5_2.tr
  L10_2 = L10_2.x
  L11_2 = L5_2.tr
  L11_2 = L11_2.y
  L12_2 = L5_2.tr
  L12_2 = L12_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = GetOffsetFromEntityInWorldCoords
  L10_2 = L4_2
  L11_2 = L5_2.br
  L11_2 = L11_2.x
  L12_2 = L5_2.br
  L12_2 = L12_2.y
  L13_2 = L5_2.br
  L13_2 = L13_2.z
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = GetOffsetFromEntityInWorldCoords
  L11_2 = L4_2
  L12_2 = L5_2.bl
  L12_2 = L12_2.x
  L13_2 = L5_2.bl
  L13_2 = L13_2.y
  L14_2 = L5_2.bl
  L14_2 = L14_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = {}
  A0_2.sign = L11_2
  L11_2 = A0_2.sign
  L11_2.object = L4_2
  L11_2 = A0_2.sign
  L12_2 = {}
  L12_2.url = "https://cdn.toshko.dev/u/3CudR6.png"
  L12_2.width = 500
  L12_2.height = 500
  L13_2 = "sign_"
  L14_2 = lib
  L14_2 = L14_2.string
  L14_2 = L14_2.random
  L15_2 = "AAaa11"
  L16_2 = 6
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = "_d_p_"
  L16_2 = A0_2.id
  L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
  L12_2.dtexname = L13_2
  L13_2 = "sign_"
  L14_2 = lib
  L14_2 = L14_2.string
  L14_2 = L14_2.random
  L15_2 = "AAaa11"
  L16_2 = 6
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = "_t_p_"
  L16_2 = A0_2.id
  L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
  L12_2.texname = L13_2
  L12_2.pos = L6_2
  L12_2.tl = L7_2
  L12_2.tr = L8_2
  L12_2.br = L9_2
  L12_2.bl = L10_2
  L11_2.data = L12_2
  L11_2 = A0_2.sign
  L11_2 = L11_2.data
  L11_2 = L11_2.url
  L12_2 = A0_2.sign
  L12_2 = L12_2.data
  L12_2 = L12_2.width
  L13_2 = A0_2.sign
  L13_2 = L13_2.data
  L13_2 = L13_2.height
  L14_2 = A0_2.sign
  L14_2 = L14_2.data
  L14_2 = L14_2.dtexname
  L15_2 = A0_2.sign
  L15_2 = L15_2.data
  L15_2 = L15_2.texname
  L16_2 = CreateRuntimeTxd
  L17_2 = L14_2
  L16_2 = L16_2(L17_2)
  L17_2 = CreateDui
  L18_2 = L11_2
  L19_2 = L12_2
  L20_2 = L13_2
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L18_2 = A0_2.sign
  L18_2 = L18_2.data
  L18_2.duiObj = L17_2
  L18_2 = GetDuiHandle
  L19_2 = L17_2
  L18_2 = L18_2(L19_2)
  L19_2 = CreateRuntimeTextureFromDuiHandle
  L20_2 = L16_2
  L21_2 = L15_2
  L22_2 = L18_2
  L19_2(L20_2, L21_2, L22_2)
  L19_2 = CreateThread
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    L0_3 = A0_2.sign
    L0_3 = L0_3.data
    L0_3 = L0_3.tl
    L1_3 = A0_2.sign
    L1_3 = L1_3.data
    L1_3 = L1_3.tr
    L2_3 = A0_2.sign
    L2_3 = L2_3.data
    L2_3 = L2_3.bl
    L3_3 = A0_2.sign
    L3_3 = L3_3.data
    L3_3 = L3_3.br
    while true do
      L4_3 = A0_2.sign
      if nil == L4_3 then
        break
      end
      L4_3 = DrawSpritePoly
      L5_3 = L3_3.x
      L6_3 = L3_3.y
      L7_3 = L3_3.z
      L8_3 = L1_3.x
      L9_3 = L1_3.y
      L10_3 = L1_3.z
      L11_3 = L0_3.x
      L12_3 = L0_3.y
      L13_3 = L0_3.z
      L14_3 = 255
      L15_3 = 255
      L16_3 = 255
      L17_3 = 255
      L18_3 = L14_2
      L19_3 = L15_2
      L20_3 = 1.0
      L21_3 = 1.0
      L22_3 = 1.0
      L23_3 = 1.0
      L24_3 = 0.0
      L25_3 = 1.0
      L26_3 = 0.0
      L27_3 = 0.0
      L28_3 = 1.0
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
      L4_3 = DrawSpritePoly
      L5_3 = L0_3.x
      L6_3 = L0_3.y
      L7_3 = L0_3.z
      L8_3 = L2_3.x
      L9_3 = L2_3.y
      L10_3 = L2_3.z
      L11_3 = L3_3.x
      L12_3 = L3_3.y
      L13_3 = L3_3.z
      L14_3 = 255
      L15_3 = 255
      L16_3 = 255
      L17_3 = 255
      L18_3 = L14_2
      L19_3 = L15_2
      L20_3 = 0.0
      L21_3 = 0.0
      L22_3 = 1.0
      L23_3 = 0.0
      L24_3 = 1.0
      L25_3 = 1.0
      L26_3 = 1.0
      L27_3 = 1.0
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
  end
  L19_2(L20_2)
end
L1_1.spawnSaleSign = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.sign
  if not L1_2 then
    return
  end
  L1_2 = A0_2.sign
  L1_2 = L1_2.object
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = A0_2.sign
    L2_2 = L2_2.object
    L1_2(L2_2)
    L1_2 = A0_2.sign
    L1_2.object = nil
  end
  L1_2 = A0_2.sign
  L1_2 = L1_2.data
  if L1_2 then
    L1_2 = A0_2.sign
    L1_2 = L1_2.data
    L1_2 = L1_2.dtexname
    L2_2 = A0_2.sign
    L2_2 = L2_2.data
    L2_2 = L2_2.texname
    L3_2 = A0_2.sign
    L3_2 = L3_2.data
    L3_2 = L3_2.duiObj
    if L3_2 then
      L3_2 = DestroyDui
      L4_2 = A0_2.sign
      L4_2 = L4_2.data
      L4_2 = L4_2.duiObj
      L3_2(L4_2)
    end
    A0_2.sign = nil
  end
end
L1_1.despawnSaleSign = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Creating interactable point: "
  L4_2 = A1_2.name
  L5_2 = " in property: "
  L6_2 = A0_2.id
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = A0_2.metadata
  L2_2 = L2_2.points
  if not L2_2 then
    L2_2 = A0_2.metadata
    L3_2 = {}
    L2_2.points = L3_2
  end
  L2_2 = A0_2.interactablePoints
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = next
    L3_2 = A0_2.interactablePoints
    L4_2 = A1_2.id
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Interactable point already exists: "
      L4_2 = A1_2.name
      L5_2 = " in property: "
      L6_2 = A0_2.id
      L7_2 = " with ID: "
      L8_2 = A1_2.id
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L2_2(L3_2)
      return
    end
  end
  L2_2 = A1_2.coords
  L3_2 = lib
  L3_2 = L3_2.table
  L3_2 = L3_2.deepclone
  L4_2 = Config
  L4_2 = L4_2.Functions
  L5_2 = A1_2.name
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.id
  L3_2.id = L4_2
  L4_2 = A0_2.id
  L5_2 = "_interactable_point_"
  L6_2 = A1_2.id
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.uniqueId = L4_2
  L4_2 = "interactable_point_"
  L5_2 = A1_2.id
  L4_2 = L4_2 .. L5_2
  L3_2.lock = L4_2
  L4_2 = A1_2.interactRange
  if not L4_2 then
    L4_2 = L3_2.radius
  end
  L3_2.radius = L4_2
  L4_2 = A1_2.label
  if not L4_2 then
    L4_2 = L3_2.label
  end
  L3_2.label = L4_2
  L4_2 = A1_2.requireKeys
  L3_2.requireKeys = L4_2
  L4_2 = A0_2.interactablePoints
  L5_2 = A1_2.id
  L6_2 = CreateInteractablePoint
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2[L5_2] = L6_2
  L4_2 = lib
  L4_2 = L4_2.print
  L4_2 = L4_2.debug
  L5_2 = "Creating interactable point: "
  L6_2 = A1_2.name
  L7_2 = " in property: "
  L8_2 = A0_2.id
  L9_2 = " with ID: "
  L10_2 = A1_2.id
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2)
end
L1_1.spawnInteractablePoint = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Deleting interactable point: "
  L4_2 = A1_2.id
  L5_2 = " in property: "
  L6_2 = A0_2.id
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = A1_2.id
  L3_2 = A0_2.metadata
  L3_2 = L3_2.points
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.name
  L4_2 = true
  L5_2 = ""
  L6_2 = Config
  L6_2 = L6_2.Functions
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.canDelete
  if L6_2 then
    L6_2 = Config
    L6_2 = L6_2.Functions
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.canDelete
    L7_2 = A0_2
    L8_2 = {}
    L9_2 = A0_2.id
    L10_2 = "_interactable_point_"
    L11_2 = A1_2.id
    L9_2 = L9_2 .. L10_2 .. L11_2
    L8_2.id = L9_2
    L6_2, L7_2 = L6_2(L7_2, L8_2)
    L5_2 = L7_2
    L4_2 = L6_2
  end
  if not L4_2 then
    L6_2 = Framework
    L6_2 = L6_2.Notify
    L7_2 = {}
    L7_2.description = L5_2
    L7_2.type = "error"
    L6_2(L7_2)
    return
  end
  L6_2 = lib
  L6_2 = L6_2.callback
  L6_2 = L6_2.await
  L7_2 = "nolag_properties:server:property:setInteractablePoint"
  L8_2 = false
  L9_2 = A0_2.id
  L10_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L8_2 = Framework
  L8_2 = L8_2.Notify
  L9_2 = {}
  L9_2.description = L7_2
  if L6_2 then
    L10_2 = "success"
    if L10_2 then
      goto lbl_67
    end
  end
  L10_2 = "error"
  ::lbl_67::
  L9_2.type = L10_2
  L8_2(L9_2)
  if L6_2 then
    L8_2 = A0_2.metadata
    L8_2 = L8_2.points
    L8_2[L2_2] = nil
    L8_2 = A0_2.interactablePoints
    L8_2 = L8_2[L2_2]
    if L8_2 then
      L8_2 = next
      L9_2 = A0_2.interactablePoints
      L9_2 = L9_2[L2_2]
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = A0_2.interactablePoints
        L8_2 = L8_2[L2_2]
        L9_2 = L8_2
        L8_2 = L8_2.remove
        L8_2(L9_2)
      end
    end
  end
  return L6_2
end
L1_1.deleteInteractablePoint = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.interactablePoints
  if not L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2.interactablePoints
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if A1_2 and L7_2 then
      L8_2 = L7_2
      if L8_2 then
        L8_2 = L8_2.data
      end
      if L8_2 then
        L8_2 = L8_2.options
      end
      if L8_2 then
        L8_2 = L8_2.type
      end
      if L8_2 == A1_2 then
        L8_2 = lib
        L8_2 = L8_2.print
        L8_2 = L8_2.debug
        L9_2 = "Deleted interactable point in property: "
        L10_2 = A0_2.id
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.remove
        L8_2(L9_2)
        L8_2 = A0_2.interactablePoints
        L9_2 = {}
        L8_2[L6_2] = L9_2
      end
    end
  end
end
L1_1.deleteInteractablePoints = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.points
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2.metadata
  L2_2 = L2_2.points
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = next
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2.updateInteractablePoint
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = pairs
  L2_2 = A0_2.interactablePoints
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = next
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = A0_2.metadata
        L7_2 = L7_2.points
        L8_2 = L6_2.data
        L8_2 = L8_2.options
        L8_2 = L8_2.id
        L7_2 = L7_2[L8_2]
        if not L7_2 then
          L8_2 = L6_2
          L7_2 = L6_2.remove
          L7_2(L8_2)
          L7_2 = A0_2.interactablePoints
          L8_2 = L6_2.data
          L8_2 = L8_2.options
          L8_2 = L8_2.id
          L7_2[L8_2] = nil
        end
      end
    end
  end
end
L1_1.updateInteractablePoints = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.DefaultSlots
  L2_2 = Config
  L2_2 = L2_2.DefaultWeight
  L3_2 = A0_2.metadata
  L3_2 = L3_2.inventoryData
  if L3_2 then
    L3_2 = A0_2.metadata
    L3_2 = L3_2.inventoryData
    L3_2 = L3_2.slots
    if L3_2 then
      L3_2 = A0_2.metadata
      L3_2 = L3_2.inventoryData
      L3_2 = L3_2.weight
      if L3_2 then
        L3_2 = A0_2.metadata
        L3_2 = L3_2.inventoryData
        L1_2 = L3_2.slots
        L3_2 = A0_2.metadata
        L3_2 = L3_2.inventoryData
        L2_2 = L3_2.weight
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L1_1.getInventoryData = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:updateInventoryConfig"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = Framework
  L4_2 = L4_2.Notify
  L5_2 = {}
  L5_2.description = L3_2
  if L2_2 then
    L6_2 = "success"
    if L6_2 then
      goto lbl_20
    end
  end
  L6_2 = "error"
  ::lbl_20::
  L5_2.type = L6_2
  L4_2(L5_2)
  if not L2_2 then
    return
  end
  L4_2 = A0_2.metadata
  L4_2.inventoryData = A1_2
end
L1_1.updateInventoryConfig = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.doors
  L3_2 = A0_2.doors
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = A1_2
end
L1_1.addDoor = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2.doors
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = A1_2.id
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A0_2.doors
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      break
    end
  end
end
L1_1.removeDoor = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ipairs
  L4_2 = A0_2.doors
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if L9_2 == A1_2 then
      L9_2 = A0_2.doors
      L9_2[L7_2] = A2_2
      break
    end
  end
end
L1_1.editDoor = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getTotalFurniture"
  L3_2 = false
  L4_2 = A0_2.id
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1.getTotalFurniture = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2.keyHolders
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L1_1.getTotalKeyHolders = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2.metadata
  L2_2 = L2_2.points
  if not L2_2 then
    return L1_2
  end
  L2_2 = pairs
  L3_2 = A0_2.metadata
  L3_2 = L3_2.points
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
L1_1.getTotalInteractablePoints = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.isAbleToManage
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Notify
    L3_2 = {}
    L4_2 = locale
    L5_2 = "no_keys"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.type = "error"
    L2_2(L3_2)
    return
  end
  L2_2 = Client
  L3_2 = A0_2.id
  L2_2.managePropertyId = L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "openManagePropertyMenu"
  L4_2 = {}
  L5_2 = A0_2.label
  L4_2.propertyName = L5_2
  L5_2 = A0_2.id
  L4_2.propertyId = L5_2
  L5_2 = A0_2.type
  L4_2.propertyType = L5_2
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  L4_2.inside = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.hasKey
  L5_2 = L5_2(L6_2)
  L4_2.hasKey = L5_2
  L5_2 = A0_2.type
  if "ipl" == L5_2 then
    L5_2 = PlayerData
    L5_2 = L5_2.insideProperty
    if L5_2 then
      L5_2 = A0_2.IPL
      if L5_2 then
        L5_2 = A0_2.IPL
        L5_2 = L5_2.data
        if nil ~= L5_2 then
          L5_2 = true
          if L5_2 then
            goto lbl_55
          end
        end
      end
    end
  end
  L5_2 = false
  ::lbl_55::
  L4_2.manageIPL = L5_2
  L5_2 = A0_2.rentData
  if L5_2 then
    L5_2 = A0_2.rentData
    L5_2 = L5_2.rentedTo
    if L5_2 then
      goto lbl_64
    end
  end
  L5_2 = nil
  ::lbl_64::
  L4_2.rentedTo = L5_2
  L5_2 = A0_2.forRent
  L4_2.forRent = L5_2
  L5_2 = A0_2.rentPrice
  L4_2.rentPrice = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.isOwner
  L5_2 = L5_2(L6_2)
  L4_2.isOwner = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.isRenter
  L5_2 = L5_2(L6_2)
  L4_2.isRenter = L5_2
  L5_2 = A0_2.rentData
  if L5_2 then
    L5_2 = A0_2.rentData
    L5_2 = L5_2.autoRenew
    if L5_2 then
      goto lbl_83
    end
  end
  L5_2 = false
  ::lbl_83::
  L4_2.autoRenew = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.getDoorLockedState
  L5_2 = L5_2(L6_2)
  L4_2.doorLocked = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.getKeyHolderInfo
  L7_2 = PlayerData
  L7_2 = L7_2.identifier
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2.locks
  L4_2.locks = L5_2
  L5_2 = A0_2.buildingId
  L4_2.buildingId = L5_2
  L5_2 = A0_2.metadata
  if L5_2 then
    L5_2 = L5_2.isStarter
  end
  if not L5_2 then
    L5_2 = false
  end
  L4_2.isStarter = L5_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = false
  end
  L4_2.isOpenedFromBuilding = L5_2
  L5_2 = A0_2.metadata
  if L5_2 then
    L5_2 = L5_2.yardZone
  end
  if L5_2 then
    L5_2 = L5_2.center
  end
  L5_2 = nil ~= L5_2 or L5_2
  L4_2.hasYardZone = L5_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L1_1.manageProperty = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.managePoint
  if not L1_2 then
    return
  end
  L2_2 = GetPointCoords
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:updateManagePoint"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_30
    end
  end
  L7_2 = "error"
  ::lbl_30::
  L6_2.type = L7_2
  L5_2(L6_2)
  if not L3_2 then
    return
  end
end
L1_1.editManagePoint = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.yardZone
  if L1_2 then
    L1_2 = A0_2.metadata
    L1_2 = L1_2.yardZone
    L1_2 = L1_2.center
    if nil ~= L1_2 then
      L1_2 = lib
      L1_2 = L1_2.table
      L1_2 = L1_2.deepclone
      L2_2 = A0_2.metadata
      L2_2 = L2_2.yardZone
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_19
      end
    end
  end
  L1_2 = nil
  ::lbl_19::
  L2_2 = EditPolyZone
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:updateYardZone"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_44
    end
  end
  L7_2 = "error"
  ::lbl_44::
  L6_2.type = L7_2
  L5_2(L6_2)
  if not L3_2 then
    return
  end
end
L1_1.editPolyZone = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.yardZone
  if not L1_2 then
    L2_2 = Framework
    L2_2 = L2_2.Notify
    L3_2 = {}
    L4_2 = locale
    L5_2 = "no_yard_zone"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.type = "error"
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2.type
  if "mlo" == L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Notify
    L3_2 = {}
    L4_2 = locale
    L5_2 = "remove_yard_zone_mlo"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
    L3_2.type = "error"
    L2_2(L3_2)
    return
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:property:getFurniture"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = "outside"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L3_2 = next
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = lib
      L3_2 = L3_2.alertDialog
      L4_2 = {}
      L4_2.centered = true
      L5_2 = locale
      L6_2 = "remove_yard_zone_furniture"
      L5_2 = L5_2(L6_2)
      L4_2.header = L5_2
      L5_2 = locale
      L6_2 = "remove_yard_zone_furniture_content"
      L5_2 = L5_2(L6_2)
      L4_2.content = L5_2
      L4_2.cancel = true
      L3_2 = L3_2(L4_2)
      if "confirm" ~= L3_2 then
        return
      end
    end
  end
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:updateYardZone"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_82
    end
  end
  L7_2 = "error"
  ::lbl_82::
  L6_2.type = L7_2
  L5_2(L6_2)
  if not L3_2 then
    return
  end
end
L1_1.removePolyZone = L2_1
L1_1 = Property
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:property:transfer"
  L5_2 = false
  L6_2 = A0_2.id
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = Framework
  L5_2 = L5_2.Notify
  L6_2 = {}
  L6_2.description = L4_2
  if L3_2 then
    L7_2 = "success"
    if L7_2 then
      goto lbl_21
    end
  end
  L7_2 = "error"
  ::lbl_21::
  L6_2.type = L7_2
  L5_2(L6_2)
end
L1_1.transferProperty = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:getInventories"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L1_1.getInventories = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "nolag_properties:server:property:sell"
  L3_2 = false
  L4_2 = A0_2.id
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.getPurchaseInfo
    L3_2 = L3_2(L4_2)
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "property_sold_successfully"
    L8_2 = A0_2.label
    L9_2 = L3_2.purchasePrice
    if not L9_2 then
      L9_2 = 0
    end
    L10_2 = Config
    L10_2 = L10_2.SellPercentage
    L9_2 = L9_2 * L10_2
    L9_2 = L9_2 / 100
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.description = L6_2
    L5_2.type = "success"
    L4_2(L5_2)
  else
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L5_2 = locale
    L6_2 = "property_sell_failed"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L4_2.description = L2_2
    L4_2.type = "error"
    L3_2(L4_2)
  end
end
L1_1.sellProperty = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.label
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:deleteProperty"
  L4_2 = false
  L5_2 = A0_2.id
  L6_2 = A0_2.doors
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "notify_property_deleted_successfully"
    L8_2 = L1_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.description = L6_2
    L5_2.type = "success"
    L4_2(L5_2)
  else
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L5_2.description = L3_2
    L5_2.type = "error"
    L4_2(L5_2)
  end
  return L2_2
end
L1_1.deleteProperty = L2_1
L1_1 = Property
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Deleting property: "
  L3_2 = A0_2.label
  L4_2 = " with ID: "
  L5_2 = A0_2.id
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = PlayerData
  if L1_2 then
    L1_2 = L1_2.currentProperty
  end
  if L1_2 then
    L1_2 = L1_2.id
  end
  L2_2 = A0_2.id
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
  L1_2 = PlayerData
  L1_2 = L1_2.insideYards
  L2_2 = A0_2.id
  L1_2[L2_2] = nil
  L1_2 = A0_2.buildingId
  if L1_2 then
    L1_2 = BuildingManager
    L2_2 = L1_2
    L1_2 = L1_2.getBuildingById
    L3_2 = A0_2.buildingId
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.removeProperty
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.error
      L3_2 = "Building with ID "
      L4_2 = A0_2.buildingId
      L5_2 = " not found"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
    end
  end
  L1_2 = A0_2.yardZone
  if L1_2 then
    L1_2 = A0_2.yardZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L1_2 = A0_2.bigZone
  if L1_2 then
    L1_2 = A0_2.bigZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L1_2 = A0_2.enterPropertyZone
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.hideContext
    L1_2()
    L1_2 = lib
    L1_2 = L1_2.hideTextUI
    L1_2()
    L1_2 = A0_2.enterPropertyZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L1_2 = A0_2.insidePropertyZone
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.hideContext
    L1_2()
    L1_2 = lib
    L1_2 = L1_2.hideTextUI
    L1_2()
    L1_2 = A0_2.insidePropertyZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L1_2 = A0_2.interactablePoints
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.deleteInteractablePoints
    L3_2 = "inside"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.deleteInteractablePoints
    L3_2 = "outside"
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.despawnCamera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnFurniture
  L3_2 = "inside"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnFurniture
  L3_2 = "outside"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.deleteBlip
  L1_2(L2_2)
  A0_2.id = nil
  A0_2.label = nil
  A0_2.price = nil
  A0_2.owner = nil
  A0_2.type = nil
  A0_2.doorLocked = nil
  A0_2.keyHolders = nil
  A0_2.interactablePoints = nil
  A0_2.metadata = nil
  L1_2 = setmetatable
  L2_2 = A0_2
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L1_1.delete = L2_1
L1_1 = Property
return L1_1
