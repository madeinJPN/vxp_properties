local Building = {}
Building.__index = Building

---Create a new building object
---@param id number|string
---@param data table
---@return table
function Building.new(id, data)
  local self = setmetatable({
    id = id,
    name = data.name,
    label = data.label,
    properties = {},
    blip = {},
    metadata = data.metadata,
    garagePoint = nil,
    securityCamera = nil,
    enterBuildingZone = nil,
    bigZone = nil,
    filterProperties = nil,
    page = nil,
  }, Building)

  self:createZones()
  self:createBlip()

  return self
end

-- Zone creation -------------------------------------------------------------

function Building:createZones()
  local enterData = self.metadata.enterData

  self.enterBuildingZone = CreateInteractablePoint(enterData, {
    label = self.label,
    icon = "fa-solid fa-building",
    onSelect = function()
      lib.print.debug("Selected zone: " .. self.name)
      self:openInteractMenuUI()
    end,
  }, self.id)

  self.bigZone = lib.zones.sphere({
    coords = self.metadata.enterData,
    radius = 30,
    debug = Config.Debug,
    onEnter = function() self:enterBigZone() end,
    onExit = function() self:exitBigZone() end,
  })

  lib.print.debug("Created building: " .. self.id)
end

function Building:enterBigZone()
  lib.print.debug("Entered big zone for building: " .. self.id)
  self:spawnGaragePoint()

  local cam = self.metadata.camData
  if not cam or not cam.camObjectCoords or not cam.camObjectRotation then
    if self.securityCamera then
      self:despawnCamera()
    else
      lib.print.debug("Camera data not found for building: " .. self.id)
    end
    return
  end

  if self.securityCamera then
    self.securityCamera:update({
      coords = cam.camObjectCoords,
      rotation = cam.camObjectRotation,
    })
    lib.print.debug("Camera updated for building: " .. self.id)
  else
    self.securityCamera = Furniture:new({
      id = 0,
      propertyId = self.id,
      coords = cam.camObjectCoords,
      rotation = cam.camObjectRotation,
      model = "prop_cctv_cam_04c",
      disableCliping = true,
    })
    lib.print.debug("Camera spawned for building: " .. self.id)
  end
end

function Building:exitBigZone()
  lib.print.debug("Exited big zone for building: " .. self.id)
  self:despawnGaragePoint()
  if self.securityCamera then
    self:despawnCamera()
  else
    lib.print.debug("Camera data not found for building: " .. self.id)
  end
end

-- Garage handling -----------------------------------------------------------

function Building:spawnGaragePoint()
  lib.print.debug("Spawning garage point for building: " .. self.id)
  local coords = self.metadata.garagePoint
  if not coords then return end
  if self.garagePoint then
    lib.print.debug("Garage point already spawned for building: " .. self.id)
    return
  end

  local context = {
    id = ("building_%s"):format(self.id),
    hasKey = function() return self:hasKey() end,
  }

  local options = lib.table.deepclone(Config.Functions.OpenGarageMenu)
  options.id = 1
  options.uniqueId = ("%s_interactable_point_%s"):format(self.id, 1)
  options.lock = ("interactable_point_%s"):format(1)
  options.radius = 2.0
  options.label = "Garage"
  options.requireKeys = true

  self.garagePoint = CreateInteractablePoint(coords, options, context)

  lib.print.debug(("Creating interactable point: %s in property: %s with ID: %s")
    :format("Garage", self.id, 1))
end

function Building:despawnGaragePoint()
  if self.garagePoint then
    self.garagePoint:remove()
    self.garagePoint = nil
    lib.print.debug("Garage point despawned for building: " .. self.id)
  end
end

function Building:hasGarage()
  return self.metadata.garageData
end

function Building:setGaragePoint(coords)
  local ok, err = lib.callback.await(
    "nolag_properties:server:building:setGaragePoint",
    false,
    self.id,
    coords
  )
  if not ok then
    Framework.Notify({ description = err, type = "error" })
  end
end

-- Camera handling -----------------------------------------------------------

function Building:despawnCamera()
  if self.securityCamera then
    self.securityCamera:despawnObject()
    self.securityCamera = nil
    if PlayerData.currentCamera == self.id then
      PlayerData.currentCamera = nil
    end
  end
end

-- Blip handling -------------------------------------------------------------

function Building:createBlip()
  self:deleteBlip()
  if not Client.blipsVisibility.all then return end
  local enterCoords = self.metadata.enterData
  if not enterCoords then return end

  local blipConfig
  if self:ownProperty() then
    blipConfig = Config.Blips.building.ownProperty
  elseif self:checkForPropertiesForSale() then
    blipConfig = Config.Blips.building.forSale
  elseif self:checkForPropertiesForRent() then
    blipConfig = Config.Blips.building.forRent
  elseif self:checkForRentedProperties() then
    blipConfig = Config.Blips.building.rentedByMe
  else
    blipConfig = Config.Blips.building.default
  end

  if not blipConfig or blipConfig.Disabled then return end

  self.blip.handle = AddBlipForCoord(enterCoords.x, enterCoords.y, enterCoords.z)
  SetBlipSprite(self.blip.handle, blipConfig.Sprite)
  SetBlipScale(self.blip.handle, blipConfig.Scale)
  SetBlipColour(self.blip.handle, blipConfig.Color)
  SetBlipDisplay(self.blip.handle, blipConfig.Display)
  SetBlipAsShortRange(self.blip.handle, blipConfig.ShortRange)
  SetBlipCategory(self.blip.handle, blipConfig.Category)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(self.label)
  EndTextCommandSetBlipName(self.blip.handle)
end

function Building:deleteBlip()
  if self.blip.handle then
    RemoveBlip(self.blip.handle)
    self.blip.handle = nil
  end
end

-- Property helpers ---------------------------------------------------------

function Building:getProperties()
  return self.properties
end

function Building:ownProperty()
  for _, property in ipairs(self.properties) do
    if property:isOwner() then return true end
  end
  return false
end

function Building:hasKey()
  for _, property in ipairs(self.properties) do
    if property:hasKey() then return true end
  end
  return false
end

function Building:checkForPropertiesForSale()
  for _, property in ipairs(self.properties) do
    if property.forSale then return true end
  end
  return false
end

function Building:checkForPropertiesForRent()
  for _, property in ipairs(self.properties) do
    if property.forRent then return true end
  end
  return false
end

function Building:checkForRentedProperties()
  for _, property in ipairs(self.properties) do
    if property:isRenter() then return true end
  end
  return false
end

function Building:openCamera(camId)
  local camData = self.metadata.camData
  if not camData then
    Framework.Notify({ description = locale("camera_not_found"), type = "error" })
    return
  end
  SecurityCam(camData, camId)
end

function Building:addProperty(property)
  table.insert(self.properties, property)
  self:createBlip()
  self:refreshUIPage()
end

function Building:removeProperty(property)
  for i, prop in ipairs(self.properties) do
    if prop == property then
      table.remove(self.properties, i)
      break
    end
  end
  self:refreshUIPage()
end

function Building:setWaypoint()
  local coords = self.metadata.enterData
  if coords then
    SetNewWaypoint(coords.x, coords.y)
  end
end

function Building:refreshUIPage()
  if self.page then
    self:openInteractMenuUI(self.page)
  end
end

function Building:openInteractMenuUI(page)
  page = page or 1
  local propertyData = {}

  for _, prop in ipairs(self.filterProperties or self.properties) do
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

    table.insert(propertyData, {
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

  if not self.filterProperties then
    lib.print.debug("No properties found for building: " .. self.id)
    Framework.Notify({ description = locale("ui_no_properties_found"), type = "error" })
    return
  end

  SendNUIMessage({
    action = "setBuildingMenuVisibility",
    data = {
      visible = true,
      buildingName = self.label,
      buildingId = self.id,
      totalProperties = #self.filterProperties,
      properties = propertyData,
      page = page,
    }
  })
  SetNuiFocus(true, true)
  SetNuiFocusKeepInput(false)
end

function Building:deleteBuilding(propertyId)
  local ok, err = lib.callback.await(
    "nolag_properties:server:building:deleteProperty",
    false,
    propertyId
  )
  if not ok then
    Framework.Notify({
      description = locale("delete_property_failed", err),
      type = "error",
    })
  end
end

function Building:updateData(newData)
  self.metadata = newData.metadata
  self:despawnGaragePoint()
  self:spawnGaragePoint()
  self:createBlip()
end

function Building:delete()
  lib.print.debug("Deleting building: " .. self.id)
  self:deleteBlip()
  self:despawnGaragePoint()
  if self.enterBuildingZone then
    lib.print.debug("Deleting enterBuildingZone: " .. self.id)
    self.enterBuildingZone:remove()
  end
  for _, prop in ipairs(self:getProperties()) do
    if prop and prop.removeFromBuilding then
      prop:removeFromBuilding()
    end
  end
end

return Building

