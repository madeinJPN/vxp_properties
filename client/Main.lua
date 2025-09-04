local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = assert
L1_1 = lib
L1_1 = L1_1.checkDependency
L2_1 = "ox_lib"
L3_1 = "3.30.4"
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "ox_lib v3.30.4 or higher is required"
L0_1(L1_1, L2_1)
L0_1 = GlobalState
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = cache
  L1_2 = L1_2.resource
  if A0_2 ~= L1_2 then
    return
  end
  ForcedExit = true
  L1_2 = PlayerData
  L1_2 = L1_2.currentProperty
  if L1_2 then
    L1_2 = PlayerData
    L1_2 = L1_2.currentProperty
    L2_2 = L1_2
    L1_2 = L1_2.exit
    L1_2(L2_2)
  end
  L1_2 = PlayerData
  L1_2 = L1_2.insideBigZone
  if L1_2 then
    L2_2 = next
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = pairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        if L7_2 then
          L8_2 = PropertyManager
          L9_2 = L8_2
          L8_2 = L8_2.getPropertyById
          L10_2 = L6_2
          L8_2 = L8_2(L9_2, L10_2)
          L10_2 = L8_2
          L9_2 = L8_2.despawnCamera
          L9_2(L10_2)
          L10_2 = L8_2
          L9_2 = L8_2.despawnFurniture
          L11_2 = "inside"
          L9_2(L10_2, L11_2)
          L10_2 = L8_2
          L9_2 = L8_2.despawnFurniture
          L11_2 = "outside"
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
  L2_2 = Wait
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 100
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L0_1.buildings
  if L0_2 then
    L1_2 = #L0_2
    if 0 ~= L1_2 then
      goto lbl_13
    end
  end
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "No buildings found"
  L1_2(L2_2)
  do return end
  ::lbl_13::
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = "building.%s"
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L0_1
    L7_2 = L8_2[L7_2]
    L8_2 = BuildingManager
    L9_2 = L8_2
    L8_2 = L8_2.createBuilding
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  L1_2 = BuildingManager
  L1_2.buildingsLoaded = true
end
LoadBuildings = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L0_1.properties
  if L0_2 then
    L1_2 = #L0_2
    if 0 ~= L1_2 then
      goto lbl_13
    end
  end
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "No properties found"
  L1_2(L2_2)
  do return end
  ::lbl_13::
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = "property.%s"
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L0_1
    L7_2 = L8_2[L7_2]
    L8_2 = PropertyManager
    L9_2 = L8_2
    L8_2 = L8_2.createProperty
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  L1_2 = PropertyManager
  L1_2.propertiesLoaded = true
end
LoadProperties = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = PropertyManager
  L1_2 = L0_2
  L0_2 = L0_2.deleteAllProperties
  L0_2(L1_2)
end
DeleteProperties = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = BuildingManager
  L1_2 = L0_2
  L0_2 = L0_2.deleteAllBuildings
  L0_2(L1_2)
end
DeleteBuildings = L1_1
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:notify"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = Framework
  L1_2 = L1_2.Notify
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:updateFurniture"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  if L5_2 then
    L5_2 = LocalPlayer
    L5_2 = L5_2.state
    L5_2 = L5_2.instance
    if L5_2 ~= A0_2 then
      return
    end
  end
  L5_2 = PlayerData
  L5_2 = L5_2.insideProperty
  if not L5_2 then
    L5_2 = PlayerData
    L5_2 = L5_2.insideYards
    L5_2 = L5_2[A0_2]
    if not L5_2 then
      return
    end
  end
  L5_2 = cache
  L5_2 = L5_2.serverId
  if A4_2 == L5_2 then
    return
  end
  L5_2 = PropertyManager
  L6_2 = L5_2
  L5_2 = L5_2.getPropertyById
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = lib
    L6_2 = L6_2.print
    L6_2 = L6_2.debug
    L7_2 = "Updating furniture for property: "
    L8_2 = A0_2
    L9_2 = ", fType: "
    L10_2 = A1_2
    L11_2 = ", fId: "
    L12_2 = A2_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L6_2(L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.updateFurniture
    L8_2 = A1_2
    L9_2 = tostring
    L10_2 = A2_2
    L9_2 = L9_2(L10_2)
    L10_2 = A3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:refreshIpl"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L2_2 = L2_2.instance
  if L2_2 ~= A0_2 then
    return
  end
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.exit
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.enter
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:doorBell"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = RequestScriptAudioBank
    L1_2 = "audiodirectory/properties_sounds"
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = lib
  L0_2 = L0_2.print
  L0_2 = L0_2.debug
  L1_2 = "Audio bank loaded"
  L0_2(L1_2)
  L0_2 = GetSoundId
  L0_2 = L0_2()
  L1_2 = PlaySoundFrontend
  L2_2 = L0_2
  L3_2 = "house-doorbell"
  L4_2 = "properties"
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ReleaseSoundId
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ReleaseNamedScriptAudioBank
  L2_2 = "audiodirectory/properties_sounds"
  L1_2(L2_2)
  L1_2 = Framework
  L1_2 = L1_2.Notify
  L2_2 = {}
  L3_2 = locale
  L4_2 = "doorbell_notify"
  L3_2 = L3_2(L4_2)
  L2_2.description = L3_2
  L3_2 = locale
  L4_2 = "doorbell"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2.type = "info"
  L2_2.duration = 5000
  L2_2.icon = "fas fa-bell"
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:deleteProperty"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.deletePropertyById
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:deleteBuilding"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = BuildingManager
  L2_2 = L1_2
  L1_2 = L1_2.getBuildingById
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.delete
    L2_2(L3_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "nolag_properties:client:sellProperty"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = PlayerData
    L2_2 = L2_2.currentProperty
    if L1_2 == L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.exit
      L2_2(L3_2)
    end
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PropertyManager
  L3_2 = L2_2
  L2_2 = L2_2.getPropertyById
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.isPointInside
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  else
    L3_2 = false
    return L3_2
  end
end
IsPointInside = L1_1
L1_1 = AddStateBagChangeHandler
L2_1 = ""
L3_1 = "global"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    return
  end
  L5_2 = PlayerData
  L5_2 = L5_2.loaded
  if not L5_2 then
    return
  end
  L5_2 = tonumber
  L7_2 = A1_2
  L6_2 = A1_2.match
  L8_2 = "property%.([%w_]+)"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 then
    L6_2 = A2_2
    if nil == L6_2 then
      L7_2 = lib
      L7_2 = L7_2.print
      L7_2 = L7_2.debug
      L8_2 = "Deleting property: "
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
      L7_2 = PropertyManager
      L8_2 = L7_2
      L7_2 = L7_2.deletePropertyById
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      return
    else
      L7_2 = PropertyManager
      L8_2 = L7_2
      L7_2 = L7_2.getPropertyById
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = lib
        L8_2 = L8_2.print
        L8_2 = L8_2.debug
        L9_2 = "Updating property: "
        L10_2 = L5_2
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.updateData
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      else
        L8_2 = lib
        L8_2 = L8_2.print
        L8_2 = L8_2.debug
        L9_2 = "Creating property: "
        L10_2 = L5_2
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
        L8_2 = PropertyManager
        L9_2 = L8_2
        L8_2 = L8_2.createProperty
        L10_2 = L5_2
        L11_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2 = L8_2
      end
    end
  end
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = AddStateBagChangeHandler
L2_1 = ""
L3_1 = "global"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = PlayerData
  L5_2 = L5_2.loaded
  if not L5_2 then
    return
  end
  L5_2 = tonumber
  L7_2 = A1_2
  L6_2 = A1_2.match
  L8_2 = "building%.([%w_]+)"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = A2_2
  if L5_2 then
    if nil == L6_2 then
      L7_2 = lib
      L7_2 = L7_2.print
      L7_2 = L7_2.debug
      L8_2 = "Deleting building: "
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
      L7_2 = BuildingManager
      L8_2 = L7_2
      L7_2 = L7_2.deleteBuildingById
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      return
    else
      L7_2 = BuildingManager
      L8_2 = L7_2
      L7_2 = L7_2.getBuildingById
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = lib
        L8_2 = L8_2.print
        L8_2 = L8_2.debug
        L9_2 = "Updating building: "
        L10_2 = L5_2
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.updateData
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      else
        L8_2 = lib
        L8_2 = L8_2.print
        L8_2 = L8_2.debug
        L9_2 = "Creating building: "
        L10_2 = L5_2
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
        L8_2 = BuildingManager
        L9_2 = L8_2
        L8_2 = L8_2.createBuilding
        L10_2 = L5_2
        L11_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2 = L8_2
      end
    end
  end
end
L1_1(L2_1, L3_1, L4_1)
L1_1 = {}
L2_1 = RegisterNetEvent
L3_1 = "nolag_properties:client:concealPlayers"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetActivePlayers
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = NetworkConcealPlayer
    L7_2 = L1_2[L5_2]
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_1 = A0_2
  L2_2 = PlayerData
  L2_2 = L2_2.isConcealing
  if not L2_2 then
    L2_2 = PlayerData
    L2_2.isConcealing = true
    while true do
      L2_2 = PlayerData
      L2_2 = L2_2.isConcealing
      if not L2_2 then
        break
      end
      L2_2 = GetActivePlayers
      L2_2 = L2_2()
      L1_2 = L2_2
      L2_2 = 1
      L3_2 = #L1_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = lib
        L6_2 = L6_2.table
        L6_2 = L6_2.contains
        L7_2 = L1_1
        L8_2 = GetPlayerServerId
        L9_2 = L1_2[L5_2]
        L8_2, L9_2 = L8_2(L9_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if not L6_2 then
          L6_2 = NetworkConcealPlayer
          L7_2 = L1_2[L5_2]
          L8_2 = true
          L9_2 = false
          L6_2(L7_2, L8_2, L9_2)
        end
      end
      L2_2 = Wait
      L3_2 = 3000
      L2_2(L3_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "nolag_properties:client:revealPlayers"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetActivePlayers
  L0_2 = L0_2()
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = NetworkConcealPlayer
    L6_2 = L0_2[L4_2]
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = PlayerData
  L1_2.isConcealing = false
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerData
  L0_2 = L0_2.insideProperty
  if L0_2 then
    L0_2 = PlayerData
    L0_2 = L0_2.currentProperty
    if L0_2 then
      L2_2 = L0_2
      L1_2 = L0_2.manageProperty
      L1_2(L2_2)
    end
  else
    L0_2 = PlayerData
    L0_2 = L0_2.insideYards
    if L0_2 then
      L1_2 = next
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = {}
        L2_2 = pairs
        L3_2 = L0_2
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          if L7_2 then
            L8_2 = PropertyManager
            L9_2 = L8_2
            L8_2 = L8_2.getPropertyById
            L10_2 = L6_2
            L8_2 = L8_2(L9_2, L10_2)
            L9_2 = #L1_2
            L9_2 = L9_2 + 1
            L10_2 = {}
            L10_2.id = L6_2
            L11_2 = L8_2.label
            L10_2.title = L11_2
            L10_2.icon = "fa-solid fa-building"
            function L11_2()
              local L0_3, L1_3
              L0_3 = L8_2
              L1_3 = L0_3
              L0_3 = L0_3.manageProperty
              L0_3(L1_3)
            end
            L10_2.onSelect = L11_2
            L1_2[L9_2] = L10_2
          end
        end
        L2_2 = #L1_2
        if L2_2 > 1 then
          L2_2 = lib
          L2_2 = L2_2.registerContext
          L3_2 = {}
          L3_2.id = "properties_menu"
          L4_2 = locale
          L5_2 = "properties_menu_title"
          L4_2 = L4_2(L5_2)
          L3_2.title = L4_2
          L3_2.icon = "fa-solid fa-building"
          L3_2.options = L1_2
          L2_2(L3_2)
          L2_2 = lib
          L2_2 = L2_2.showContext
          L3_2 = "properties_menu"
          L2_2(L3_2)
        else
          L2_2 = L1_2[1]
          L2_2 = L2_2.onSelect
          L2_2()
        end
      end
    end
  end
end
OpenPropertyMenu = L2_1
