local function buildPropertyData(property)
  local slots, weight = property:getInventoryData()

  local availableFunctions = {}
  for name, cfg in pairs(Config.Functions) do
    table.insert(availableFunctions, { value = name, label = cfg.label or name })
  end

  local allowedPoints = {}
  for point in pairs(property.metadata.allowedPoints) do
    allowedPoints[#allowedPoints + 1] = point
  end

  local ownerDisplay
  if property.owner and property.ownerType == "user" then
    ownerDisplay = lib.callback.await("nolag_properties:server:getPlayerName", false, property.owner)
  end

  local renterDisplay
  if property.rentData and property.rentData.identifier and property.rentData.type == "user" then
    renterDisplay = lib.callback.await("nolag_properties:server:getPlayerName", false, property.rentData.identifier)
  end

  local data = {
    id = property.id,
    title = property.label,
    address = property.address,
    type = property.type,
    coords = property:getBlipCoords(),
    price = property.price,
    rentPrice = property.rentPrice,
    inventoryData = { slots = slots, weight = weight },
    owner = property.owner,
    ownerType = property.ownerType,
    ownerDisplay = ownerDisplay,
    renter = property.rentData and property.rentData.identifier,
    renterType = property.rentData and property.rentData.type,
    renterDisplay = renterDisplay,
    inventories = property:getInventories(),
    isOwned = property:isOwned(),
    isRented = property:isRented(),
    isForSale = property.forSale,
    isForRent = property.forRent,
    isInsideBuilding = property.buildingId ~= nil,
    interactablePoints = { all = availableFunctions, current = allowedPoints },
    yardZone = property.metadata.yardZone and property.metadata.yardZone.center ~= nil
  }

  return data
end

RegisterCommand(Config.AdminPanelCommand, function(_, args, _)
  local authorized, message = lib.callback.await("nolag_properties:server:isPlayerAuthorized", false, "allproperties")
  if not authorized then
    Framework.Notify({ description = message, type = "error" })
    return
  end

  local page = tonumber(args[1]) or 1
  local limit = tonumber(args[2]) or 10
  local search = args[3] or ""
  local filter = args[4] or ""

  lib.print.debug("allproperties", page, limit, search, filter)

  local total, forSale, forRent, rented = PropertyManager:getPropertiesCount()
  local properties = PropertyManager:getPropertiesPaginated(page, limit, search, filter)

  local list = {}
  for _, property in pairs(properties) do
    list[#list + 1] = buildPropertyData(property)
  end

  SendNUIMessage({
    action = "openAdminMenu",
    data = {
      properties = list,
      totalProperties = total,
      forSaleProperties = forSale,
      forRentProperties = forRent,
      rentedProperties = rented
    }
  })
end, false)

RegisterNUICallback("allproperties", function(data, cb)
  local authorized, message = lib.callback.await("nolag_properties:server:isPlayerAuthorized", false, "allproperties")
  if not authorized then
    Framework.Notify({ description = message, type = "error" })
    return
  end

  local page = tonumber(data.page) or 1
  local limit = tonumber(data.limit) or 10
  local search = data.search or ""
  local filter = data.filter or ""
  local typeFilter = data.typeFilter or ""

  lib.print.debug("allproperties", page, limit, search, filter, typeFilter)

  local totalFiltered = PropertyManager:getPropertiesCount(search, filter, typeFilter)
  local properties = PropertyManager:getPropertiesPaginated(page, limit, search, filter, typeFilter)

  local list = {}
  for _, property in pairs(properties) do
    list[#list + 1] = buildPropertyData(property)
  end

  cb({
    properties = list,
    totalFilteredProperties = totalFiltered
  })
end)

RegisterNUICallback("deleteProperty", function(data, cb)
  local property = PropertyManager:getPropertyById(data.id)
  if property and property:deleteProperty() then
    cb(true)
    return
  end

  cb(false)
end)

RegisterNUICallback("transferProperty", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:transferProperty(data.type, data.identifier)
  end
  cb({})
end)

RegisterNUICallback("editManagePoint", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:editManagePoint()
  end
  cb({})
end)

RegisterNUICallback("editCreatedPolyZone", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:editPolyZone()
  end
  cb({})
end)

RegisterNUICallback("deleteYardZone", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:removePolyZone()
  end
  cb({})
end)

RegisterNUICallback("openInventory", function(data, cb)
  lib.callback.await("nolag_properties:server:forceOpenInventory", false, data.propertyId, data.inventoryId)
  cb({})
end)

RegisterNUICallback("updateInventory", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:updateInventoryConfig({
      slots = data.slots,
      weight = data.weight
    })
  end
  cb({})
end)

RegisterNUICallback("updateProperty", function(data, cb)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if property then
    property:updateSettings(data)
  end
  cb({})
end)

RegisterNUICallback("propertyStats", function(_, cb)
  local authorized, message = lib.callback.await("nolag_properties:server:isPlayerAuthorized", false, "allproperties")
  if not authorized then
    Framework.Notify({ description = message, type = "error" })
    return
  end

  local total, forSale, forRent, rented = PropertyManager:getPropertiesCount()
  local saleCount, rentCount = 0, 0

  for _, property in pairs(PropertyManager:getProperties()) do
    if property.forSale then
      saleCount = saleCount + 1
    end
    if property.forRent then
      rentCount = rentCount + 1
    end
  end

  cb({
    totalProperties = total,
    forSaleProperties = saleCount,
    forRentProperties = rentCount,
    rentedProperties = rented
  })
end)

RegisterNUICallback("getAdminBuildings", function(data, cb)
  local authorized, message = lib.callback.await("nolag_properties:server:isPlayerAuthorized", false, "allproperties")
  if not authorized then
    Framework.Notify({ description = message, type = "error" })
    return
  end

  local page = tonumber(data.page) or 1
  local limit = tonumber(data.limit) or 10
  local search = data.search or ""

  local result = lib.callback.await("nolag_properties:server:getAdminBuildings", false, page, limit, search)
  cb(result)
end)

RegisterNUICallback("setGaragePoint", function(data, cb)
  local building = BuildingManager:getBuildingById(data.buildingId)
  if building then
    local coords = GetPointCoordsCar()
    building:setGaragePoint(coords)
    cb(true)
    return
  end
  cb(false)
end)

RegisterNUICallback("deleteGaragePoint", function(data, cb)
  local building = BuildingManager:getBuildingById(data.buildingId)
  if building then
    building:setGaragePoint(nil)
    cb(true)
    return
  end
  cb(false)
end)

RegisterNUICallback("deleteBuilding", function(data, cb)
  local success = lib.callback.await("nolag_properties:server:deleteBuilding", false, data.buildingId)
  cb(success)
end)

RegisterNUICallback("updateBuilding", function(data, cb)
  local success = lib.callback.await("nolag_properties:server:updateBuilding", false, data.buildingId, data.label, data.name)
  cb(success)
end)

RegisterNUICallback("waypointToBuilding", function(data, cb)
  cb(1)
  local building = BuildingManager:getBuildingById(data.buildingId)
  if not building then
    lib.print.error("Building with id: " .. data.buildingId .. " not found")
    return
  end
  building:setWaypoint()
end)

