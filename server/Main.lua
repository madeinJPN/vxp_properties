local startupError

if not lib.checkDependency('ox_lib', '3.30.4', true) then
  startupError = 'ox_lib version 3.30.4 or higher is required'
elseif not lib.checkDependency('oxmysql', '2.9.0', true) then
  startupError = 'oxmysql version 2.9.0 or higher is required'
end

if startupError then
  CreateThread(function()
    while true do
      lib.print.error(startupError)
      Wait(100)
    end
  end)
end

PlayersInProperties = {}
LoadedProperties = {}
LoadedPropertiesIds = {}
LoadedBuildings = {}
LoadedBuildingsIds = {}

AddEventHandler('onResourceStart', function(resource)
  if resource ~= GetCurrentResourceName() then return end
  LoadInventoryWardrobeObjects()
end)

local propertySyncQueued, buildingSyncQueued = false, false
local propertySyncId, buildingSyncId = 0, 0

function AddLoadedProperty(id)
  LoadedPropertiesIds[#LoadedPropertiesIds + 1] = id
  propertySyncQueued = true
  propertySyncId += 1
  local requestId = propertySyncId
  SetTimeout(2000, function()
    if requestId == propertySyncId and propertySyncQueued then
      lib.print.debug('Syncing properties to global state')
      GlobalState.properties = LoadedPropertiesIds
      propertySyncQueued = false
    end
  end)
end

function AddLoadedBuilding(id)
  LoadedBuildingsIds[#LoadedBuildingsIds + 1] = id
  buildingSyncQueued = true
  buildingSyncId += 1
  local requestId = buildingSyncId
  SetTimeout(2000, function()
    if requestId == buildingSyncId and buildingSyncQueued then
      lib.print.debug('Syncing buildings to global state')
      GlobalState.buildings = LoadedBuildingsIds
      buildingSyncQueued = false
    end
  end)
end

lib.callback.register('nolag_properties:server:getKeyHoldersWithNames', function(source, propertyId)
  local result = {}
  local property = LoadedProperties[propertyId]
  if not property then return result end

  for identifier in pairs(property.propertyData.keyHolders) do
    result[#result + 1] = {
      name = GetOfflinePlayerName(identifier),
      identifier = identifier
    }
  end

  return result
end)

lib.callback.register('nolag_properties:server:buyFurniture', function(source, price, item)
  local player = Framework.GetPlayerFromId(source)
  if not player then return end

  local bank = player.getAccount('bank').money
  if price <= bank then
    player.removeAccountMoney('bank', price, item)
    return true
  end
  return false
end)
