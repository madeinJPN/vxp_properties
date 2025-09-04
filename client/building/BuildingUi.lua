-- Handlers for Building related NUI callbacks

-- Filter the list of properties inside a building
RegisterNUICallback("filterProperties", function(data, cb)
  cb("ok")

  local building = BuildingManager:getBuildingById(tonumber(data.buildingId))
  if not building then return end

  local ownedByMe = data.ownedByMe
  local rentedByMe = data.rentedByMe
  local forSale = data.forSale
  local forRent = data.forRent
  local hasKeys = data.hasKeys
  local search = string.lower(data.search or "")

  local filtered = {}
  for _, property in pairs(building.properties) do
    local matches = true

    if ownedByMe and not property:isOwner() then matches = false end
    if rentedByMe and not property:isRenter() then matches = false end
    if forSale and not property.forSale then matches = false end
    if forRent and not property.forRent then matches = false end
    if hasKeys and not property:hasKey() then matches = false end

    if matches and search ~= "" then
      local lowerLabel = string.lower(property.label)
      local owner = property.owner and string.lower(property.owner) or nil
      matches = string.find(lowerLabel, search, 1, true) or
                string.find(tostring(property.id), search, 1, true) or
                (owner and string.find(owner, search, 1, true))
    end

    if matches then
      table.insert(filtered, property)
    end
  end

  building.filterProperties = filtered
  building.page = 1
  building:openInteractMenuUI(1)
end)

-- Retrieve a single page of properties for the building menu
RegisterNUICallback("getProperties", function(data, cb)
  cb("ok")

  local page = tonumber(data.page) or 1
  local perPage = Config.PropertiesPerPage
  local building = BuildingManager:getBuildingById(data.buildingId)
  if not building then
    lib.print.debug("Building not found")
    return
  end

  local startIndex = (page - 1) * perPage + 1
  local endIndex = math.min(startIndex + perPage - 1, #building.filterProperties)
  local properties = {}
  local count = 0
  for i, prop in ipairs(building.filterProperties) do
    count = count + 1
    if i >= startIndex and i <= endIndex then
      local ownerDisplay
      if Config.Building.OwnerDisplay then
        local displayType = Config.Building.OwnerDisplayType
        if displayType == "identifier" then
          ownerDisplay = prop.owner
        elseif displayType == "type" then
          ownerDisplay = prop.ownerType
        elseif displayType == "name" then
          if prop.ownerType == "user" then
            ownerDisplay = lib.callback.await("nolag_properties:server:getPlayerName", false, prop.owner) or prop.owner
          else
            ownerDisplay = prop.owner
          end
        end
      end

      table.insert(properties, {
        id = prop.id,
        title = prop.label,
        type = prop.type,
        owner = prop.owner,
        ownerDisplay = ownerDisplay,
        image = (prop:getMetadata().images or {})[1] or "https://via.placeholder.com/150",
        inside = PlayerData.insideProperty,
        hasKey = prop:hasKey(),
        doorLocked = prop:getDoorLockedState(),
        doorBlocked = prop:isDoorBlocked(),
        isAbleToManage = prop:isAbleToManage(),
        isAbleToLockdown = Framework.isPlayerAuthorizedToLockdown(),
        isAbleToBreach = Framework.isPlayerAuthorizedToRaid(),
        showOffer = prop:showOffer(),
        showLockpick = prop:displayOption("lockpick"),
        isOwner = prop:isOwner(),
      })
    end
  end

  building.page = page
  SendNUIMessage({
    action = "updatePropertiesInBuilding",
    data = {
      properties = properties,
      totalProperties = #building.filterProperties,
      page = page,
    }
  })
end)

-- Handle menu actions triggered from the building UI
RegisterNUICallback("buildingInteractWithProperty", function(data, cb)
  local building = BuildingManager:getBuildingById(data.buildingId)
  local property = PropertyManager:getPropertyById(data.propertyId)
  if not property then
    lib.print.error("Property with id: " .. data.propertyId .. " not found")
    cb("ok")
    return
  end
  if not building then
    lib.print.error("Building with id: " .. data.buildingId .. " not found")
    cb("ok")
    return
  end

  if data.action == "enter" then
    property:enter()
  elseif data.action == "toggleDoorlock" then
    property:toggleDoorlock()
    building:refreshUIPage()
  elseif data.action == "ringDoorbell" then
    property:doorBell()
  elseif data.action == "lockdown" then
    property:policeLockdown()
  elseif data.action == "breach" then
    property:policeRaid()
  end

  cb("ok")
end)

