local BuildingManager = {}
BuildingManager.__index = BuildingManager

---Create a new manager instance
---@return table
function BuildingManager.new()
  return setmetatable({
    loadingBuildings = false,
    buildingsLoaded = false,
    buildings = {},
  }, BuildingManager)
end

---Create and store a building instance if it does not already exist
---@param id number|string
---@param data table
---@return table building
function BuildingManager:createBuilding(id, data)
  lib.print.debug("Creating building: " .. id)

  if self.buildings[id] then
    lib.print.debug("Building with id: " .. id .. " already exists")
    return self.buildings[id]
  end

  local building = Building:new(id, data)
  self.buildings[id] = building
  return building
end

---Retrieve a building by id.  Waits for buildings to finish loading.
---@param id number|string
---@return table|nil
function BuildingManager:getBuildingById(id)
  if not self.buildingsLoaded then
    lib.print.debug("Building not loaded, waiting for it to load")
    lib.waitFor(function()
      return self.buildingsLoaded
    end, "Building not loaded", 10000)
  end
  return self.buildings[id]
end

---Delete a building and remove it from the manager
---@param id number|string
function BuildingManager:deleteBuildingById(id)
  local building = self.buildings[id]
  if building then
    building:delete()
    self.buildings[id] = nil
  end
end

---Return a list of all tracked buildings
---@return table
function BuildingManager:getAllBuildings()
  local list = {}
  for _, building in pairs(self.buildings) do
    table.insert(list, building)
  end
  return list
end

---Delete every building and reset the manager state
function BuildingManager:deleteAllBuildings()
  lib.print.debug("Deleting all buildings")
  for id, building in pairs(self.buildings) do
    if building and building.id then
      lib.print.debug("Deleting building: " .. building.id)
      building:delete()
      Wait(1000)
      self.buildings[id] = nil
    end
  end
  self.buildings = {}
  self.loadingBuildings = false
  self.buildingsLoaded = false
end

---Recreate blips for all buildings
function BuildingManager:refreshBlips()
  for _, building in pairs(self.buildings) do
    building:createBlip()
  end
end

-- expose global instance
BuildingManager = BuildingManager.new()

return BuildingManager

