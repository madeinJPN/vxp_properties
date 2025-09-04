local L0_1, L1_1
L0_1 = {}
Building = L0_1
L0_1 = Building
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.id = A1_2
  L4_2 = A2_2.name
  L3_2.name = L4_2
  L4_2 = A2_2.label
  L3_2.label = L4_2
  L4_2 = {}
  L3_2.properties = L4_2
  L4_2 = {}
  L3_2.blip = L4_2
  L4_2 = A2_2.metadata
  L3_2.metadata = L4_2
  L3_2.garagePoint = nil
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
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.enterData
  L2_2 = CreateInteractablePoint
  L3_2 = L1_2
  L4_2 = {}
  L5_2 = A0_2.label
  L4_2.label = L5_2
  L4_2.icon = "fa-solid fa-building"
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = lib
    L0_3 = L0_3.print
    L0_3 = L0_3.debug
    L1_3 = "Selected zone: "
    L2_3 = A0_2.name
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.openInteractMenuUI
    L0_3(L1_3)
  end
  L4_2.onSelect = L5_2
  L5_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.enterBuildingZone = L2_2
  L2_2 = lib
  L2_2 = L2_2.zones
  L2_2 = L2_2.sphere
  L3_2 = {}
  L4_2 = A0_2.metadata
  L4_2 = L4_2.enterData
  L3_2.coords = L4_2
  L3_2.radius = 30
  L4_2 = Config
  L4_2 = L4_2.Debug
  L3_2.debug = L4_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.enterBigZone
    L0_3(L1_3)
  end
  L3_2.onEnter = L4_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exitBigZone
    L0_3(L1_3)
  end
  L3_2.onExit = L4_2
  L2_2 = L2_2(L3_2)
  A0_2.bigZone = L2_2
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = "Created building: "
  L4_2 = A0_2.id
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.createZones = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Entered big zone for building: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.spawnGaragePoint
  L1_2(L2_2)
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
          L2_2 = "Camera updated for building: "
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
          L6_2 = "Camera spawned for building: "
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
      L2_2 = "Camera data not found for building: "
      L3_2 = A0_2.id
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
    end
  end
end
L0_1.enterBigZone = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Exited big zone for building: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnGaragePoint
  L1_2(L2_2)
  L1_2 = A0_2.securityCamera
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.despawnCamera
    L1_2(L2_2)
  else
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.debug
    L2_2 = "Camera data not found for building: "
    L3_2 = A0_2.id
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L0_1.exitBigZone = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Spawning garage point for building: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = A0_2.metadata
  L2_2 = L2_2.garagePoint
  L1_2(L2_2)
  L1_2 = A0_2.metadata
  L1_2 = L1_2.garagePoint
  if not L1_2 then
    return
  end
  L1_2 = A0_2.garagePoint
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.debug
    L2_2 = "Garage point already spawned for building: "
    L3_2 = A0_2.id
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    return
  end
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Spawning garage point for building: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = "building_"
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2.id = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.hasKey
    return L0_3(L1_3)
  end
  L1_2.hasKey = L2_2
  L2_2 = A0_2.metadata
  L2_2 = L2_2.garagePoint
  L3_2 = lib
  L3_2 = L3_2.table
  L3_2 = L3_2.deepclone
  L4_2 = Config
  L4_2 = L4_2.Functions
  L4_2 = L4_2.OpenGarageMenu
  L3_2 = L3_2(L4_2)
  L3_2.id = 1
  L4_2 = A0_2.id
  L5_2 = "_interactable_point_"
  L6_2 = 1
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.uniqueId = L4_2
  L4_2 = "interactable_point_"
  L5_2 = 1
  L4_2 = L4_2 .. L5_2
  L3_2.lock = L4_2
  L3_2.radius = 2.0
  L3_2.label = "Garage"
  L3_2.requireKeys = true
  L4_2 = CreateInteractablePoint
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.garagePoint = L4_2
  L4_2 = lib
  L4_2 = L4_2.print
  L4_2 = L4_2.debug
  L5_2 = "Creating interactable point: "
  L6_2 = "Garage"
  L7_2 = " in property: "
  L8_2 = A0_2.id
  L9_2 = " with ID: "
  L10_2 = 1
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2)
end
L0_1.spawnGaragePoint = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.garagePoint
  if L1_2 then
    L1_2 = A0_2.garagePoint
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    A0_2.garagePoint = nil
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.debug
    L2_2 = "Garage point despawned for building: "
    L3_2 = A0_2.id
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L0_1.despawnGaragePoint = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.garageData
  return L1_2
end
L0_1.hasGarage = L1_1
L0_1 = Building
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:building:setGaragePoint"
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
end
L0_1.setGaragePoint = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2
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
L0_1.despawnCamera = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2.deleteBlip
  L1_2(L2_2)
  L1_2 = Client
  L1_2 = L1_2.blipsVisibility
  L1_2 = L1_2.all
  if not L1_2 then
    return
  end
  L1_2 = A0_2.metadata
  L1_2 = L1_2.enterData
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.ownProperty
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.checkForPropertiesForSale
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.checkForPropertiesForRent
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2.checkForRentedProperties
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  if L2_2 then
    L7_2 = Config
    L7_2 = L7_2.Blips
    L7_2 = L7_2.building
    L7_2 = L7_2.ownProperty
    if L7_2 then
      L7_2 = L7_2.Disabled
    end
    if not L7_2 then
      L6_2 = "ownProperty"
  end
  else
    if L3_2 then
      L7_2 = Config
      L7_2 = L7_2.Blips
      L7_2 = L7_2.building
      L7_2 = L7_2.forSale
      if L7_2 then
        L7_2 = L7_2.Disabled
      end
      if not L7_2 then
        L6_2 = "forSale"
    end
    else
      if L4_2 then
        L7_2 = Config
        L7_2 = L7_2.Blips
        L7_2 = L7_2.building
        L7_2 = L7_2.forRent
        if L7_2 then
          L7_2 = L7_2.Disabled
        end
        if not L7_2 then
          L6_2 = "forRent"
      end
      else
        L8_2 = A0_2
        L7_2 = A0_2.hasKey
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = Config
          L7_2 = L7_2.Blips
          L7_2 = L7_2.building
          L7_2 = L7_2.keyholder
          if L7_2 then
            L7_2 = L7_2.Disabled
          end
          if not L7_2 then
            L6_2 = "keyholder"
        end
        else
          if L5_2 then
            L7_2 = Config
            L7_2 = L7_2.Blips
            L7_2 = L7_2.building
            L7_2 = L7_2.renter
            if L7_2 then
              L7_2 = L7_2.Disabled
            end
            if not L7_2 then
              L6_2 = "renter"
          end
          else
            L6_2 = "default"
          end
        end
      end
    end
  end
  L7_2 = Config
  L7_2 = L7_2.Blips
  L7_2 = L7_2.building
  L7_2 = L7_2[L6_2]
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.Blips
    L7_2 = L7_2.building
    L7_2 = L7_2.default
  end
  if "default" == L6_2 then
    L8_2 = "all"
    if L8_2 then
      goto lbl_112
    end
  end
  if "ownProperty" == L6_2 then
    L8_2 = "owned"
    if L8_2 then
      goto lbl_112
    end
  end
  L8_2 = L6_2
  ::lbl_112::
  L9_2 = L7_2.Disabled
  if L9_2 then
    return
  end
  L9_2 = Client
  L9_2 = L9_2.blipsVisibility
  L9_2 = L9_2[L8_2]
  if not L9_2 then
    return
  end
  L9_2 = A0_2.blip
  L10_2 = AddBlipForCoord
  L11_2 = L1_2.x
  L12_2 = L1_2.y
  L13_2 = L1_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.handle = L10_2
  L9_2 = SetBlipSprite
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.Sprite
  L9_2(L10_2, L11_2)
  L9_2 = SetBlipScale
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.Scale
  L9_2(L10_2, L11_2)
  L9_2 = SetBlipColour
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.Color
  L9_2(L10_2, L11_2)
  L9_2 = SetBlipDisplay
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.Display
  L9_2(L10_2, L11_2)
  L9_2 = SetBlipAsShortRange
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.ShortRange
  L9_2(L10_2, L11_2)
  L9_2 = SetBlipCategory
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L11_2 = L7_2.Category
  L9_2(L10_2, L11_2)
  L9_2 = BeginTextCommandSetBlipName
  L10_2 = "STRING"
  L9_2(L10_2)
  L9_2 = AddTextComponentString
  L10_2 = A0_2.label
  L9_2(L10_2)
  L9_2 = EndTextCommandSetBlipName
  L10_2 = A0_2.blip
  L10_2 = L10_2.handle
  L9_2(L10_2)
end
L0_1.createBlip = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.blip
  L1_2 = L1_2.handle
  if L1_2 then
    L1_2 = RemoveBlip
    L2_2 = A0_2.blip
    L2_2 = L2_2.handle
    L1_2(L2_2)
  end
end
L0_1.deleteBlip = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.isOwner
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.ownProperty = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.hasKey
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.hasKey = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.forSale
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.checkForPropertiesForSale = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.isRenter
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.checkForRentedProperties = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.forRent
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.checkForPropertiesForRent = L1_1
L0_1 = Building
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.metadata
  L2_2 = L2_2.camData
  if not L2_2 then
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
  end
  L3_2 = SecurityCam
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.openCamera = L1_1
L0_1 = Building
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.properties
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.createBlip
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refreshUIPage
  L2_2(L3_2)
end
L0_1.addProperty = L1_1
L0_1 = Building
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2.properties
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L9_2 = A0_2
      L8_2 = A0_2.refreshUIPage
      L8_2(L9_2)
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A0_2.properties
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      break
    end
  end
end
L0_1.removeProperty = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.metadata
  L1_2 = L1_2.enterData
  if L1_2 then
    L2_2 = SetNewWaypoint
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L2_2(L3_2, L4_2)
  end
end
L0_1.setWaypoint = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.properties
  return L1_2
end
L0_1.getProperties = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2
  A0_2.page = 1
  A0_2.filterProperties = nil
end
L0_1.refreshUIPage = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.page
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = Config
  L3_2 = L3_2.PropertiesPerPage
  L4_2 = A0_2.filterProperties
  if not L4_2 then
    L4_2 = L1_2
  end
  A0_2.filterProperties = L4_2
  L4_2 = L2_2 - 1
  L4_2 = L4_2 * L3_2
  L4_2 = L4_2 + 1
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L4_2 + L3_2
  L6_2 = L6_2 - 1
  L7_2 = A0_2.filterProperties
  L7_2 = #L7_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L7_2 = 0
  L8_2 = pairs
  L9_2 = A0_2.filterProperties
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L7_2 = L7_2 + 1
    if L4_2 <= L7_2 and L5_2 >= L7_2 then
      L14_2 = false
      L15_2 = Config
      L15_2 = L15_2.Building
      L15_2 = L15_2.OwnerDisplay
      if L15_2 then
        L15_2 = Config
        L15_2 = L15_2.Building
        L15_2 = L15_2.OwnerDisplayType
        if "identifier" == L15_2 then
          L14_2 = L13_2.owner
        else
          L15_2 = Config
          L15_2 = L15_2.Building
          L15_2 = L15_2.OwnerDisplayType
          if "type" == L15_2 then
            L14_2 = L13_2.ownerType
          else
            L15_2 = Config
            L15_2 = L15_2.Building
            L15_2 = L15_2.OwnerDisplayType
            if "name" == L15_2 then
              L15_2 = L13_2.ownerType
              if "user" == L15_2 then
                L15_2 = lib
                L15_2 = L15_2.callback
                L15_2 = L15_2.await
                L16_2 = "nolag_properties:server:getPlayerName"
                L17_2 = false
                L18_2 = L13_2.owner
                L15_2 = L15_2(L16_2, L17_2, L18_2)
                if L15_2 then
                  goto lbl_80
                  L14_2 = L15_2 or L14_2
                end
              end
              L14_2 = L13_2.owner
            end
          end
        end
      end
      ::lbl_80::
      L15_2 = #L6_2
      L15_2 = L15_2 + 1
      L16_2 = {}
      L17_2 = L13_2.id
      L16_2.id = L17_2
      L17_2 = L13_2.label
      L16_2.title = L17_2
      L17_2 = L13_2.type
      L16_2.type = L17_2
      L17_2 = L13_2.owner
      L16_2.owner = L17_2
      L16_2.ownerDisplay = L14_2
      L18_2 = L13_2
      L17_2 = L13_2.getMetadata
      L17_2 = L17_2(L18_2)
      L17_2 = L17_2.images
      L17_2 = L17_2[1]
      if not L17_2 then
        L17_2 = "https://via.placeholder.com/150"
      end
      L16_2.image = L17_2
      L17_2 = PlayerData
      L17_2 = L17_2.insideProperty
      L16_2.inside = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.hasKey
      L17_2 = L17_2(L18_2)
      L16_2.hasKey = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.getDoorLockedState
      L17_2 = L17_2(L18_2)
      L16_2.doorLocked = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.isDoorBlocked
      L17_2 = L17_2(L18_2)
      L16_2.doorBlocked = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.isAbleToManage
      L17_2 = L17_2(L18_2)
      L16_2.isAbleToManage = L17_2
      L17_2 = Framework
      L17_2 = L17_2.isPlayerAuthorizedToLockdown
      L17_2 = L17_2()
      L16_2.isAbleToLockdown = L17_2
      L17_2 = Framework
      L17_2 = L17_2.isPlayerAuthorizedToRaid
      L17_2 = L17_2()
      L16_2.isAbleToBreach = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.showOffer
      L17_2 = L17_2(L18_2)
      L16_2.showOffer = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.displayOption
      L19_2 = "lockpick"
      L17_2 = L17_2(L18_2, L19_2)
      L16_2.showLockpick = L17_2
      L18_2 = L13_2
      L17_2 = L13_2.isOwner
      L17_2 = L17_2(L18_2)
      L16_2.isOwner = L17_2
      L6_2[L15_2] = L16_2
    end
  end
  L8_2 = A0_2.filterProperties
  if nil == L8_2 then
    L8_2 = lib
    L8_2 = L8_2.print
    L8_2 = L8_2.debug
    L9_2 = "No properties found for building: "
    L10_2 = A0_2.id
    L9_2 = L9_2 .. L10_2
    L8_2(L9_2)
    L8_2 = Framework
    L8_2 = L8_2.Notify
    L9_2 = {}
    L10_2 = locale
    L11_2 = "ui_no_properties_found"
    L10_2 = L10_2(L11_2)
    L9_2.description = L10_2
    L9_2.type = "error"
    L8_2(L9_2)
    return
  end
  L8_2 = SendNUIMessage
  L9_2 = {}
  L9_2.action = "setBuildingMenuVisibility"
  L10_2 = {}
  L10_2.visible = true
  L11_2 = A0_2.label
  L10_2.buildingName = L11_2
  L11_2 = A0_2.id
  L10_2.buildingId = L11_2
  L11_2 = A0_2.filterProperties
  L11_2 = #L11_2
  L10_2.totalProperties = L11_2
  L10_2.properties = L6_2
  L10_2.page = L2_2
  L9_2.data = L10_2
  L8_2(L9_2)
  L8_2 = SetNuiFocus
  L9_2 = true
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetNuiFocusKeepInput
  L9_2 = false
  L8_2(L9_2)
end
L0_1.openInteractMenuUI = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.page
  L2_2 = Config
  L2_2 = L2_2.PropertiesPerPage
  L3_2 = L1_2 - 1
  L3_2 = L3_2 * L2_2
  L3_2 = L3_2 + 1
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L3_2 + L2_2
  L5_2 = L5_2 - 1
  L6_2 = A0_2.filterProperties
  L6_2 = #L6_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L6_2 = 0
  L7_2 = pairs
  L8_2 = A0_2.filterProperties
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L6_2 = L6_2 + 1
    if L3_2 <= L6_2 and L4_2 >= L6_2 then
      L13_2 = false
      L14_2 = Config
      L14_2 = L14_2.Building
      L14_2 = L14_2.OwnerDisplay
      if L14_2 then
        L14_2 = Config
        L14_2 = L14_2.Building
        L14_2 = L14_2.OwnerDisplayType
        if "identifier" == L14_2 then
          L13_2 = L12_2.owner
        else
          L14_2 = Config
          L14_2 = L14_2.Building
          L14_2 = L14_2.OwnerDisplayType
          if "type" == L14_2 then
            L13_2 = L12_2.ownerType
          else
            L14_2 = Config
            L14_2 = L14_2.Building
            L14_2 = L14_2.OwnerDisplayType
            if "name" == L14_2 then
              L14_2 = L12_2.ownerType
              if "user" == L14_2 then
                L14_2 = lib
                L14_2 = L14_2.callback
                L14_2 = L14_2.await
                L15_2 = "nolag_properties:server:getPlayerName"
                L16_2 = false
                L17_2 = L12_2.owner
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                if L14_2 then
                  goto lbl_70
                  L13_2 = L14_2 or L13_2
                end
              end
              L13_2 = L12_2.owner
            end
          end
        end
      end
      ::lbl_70::
      L14_2 = #L5_2
      L14_2 = L14_2 + 1
      L15_2 = {}
      L16_2 = L12_2.id
      L15_2.id = L16_2
      L16_2 = L12_2.label
      L15_2.title = L16_2
      L16_2 = L12_2.type
      L15_2.type = L16_2
      L16_2 = L12_2.owner
      L15_2.owner = L16_2
      L15_2.ownerDisplay = L13_2
      L17_2 = L12_2
      L16_2 = L12_2.getMetadata
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.images
      L16_2 = L16_2[1]
      if not L16_2 then
        L16_2 = "https://via.placeholder.com/150"
      end
      L15_2.image = L16_2
      L16_2 = PlayerData
      L16_2 = L16_2.insideProperty
      L15_2.inside = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.hasKey
      L16_2 = L16_2(L17_2)
      L15_2.hasKey = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.getDoorLockedState
      L16_2 = L16_2(L17_2)
      L15_2.doorLocked = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.isDoorBlocked
      L16_2 = L16_2(L17_2)
      L15_2.doorBlocked = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.isAbleToManage
      L16_2 = L16_2(L17_2)
      L15_2.isAbleToManage = L16_2
      L16_2 = Framework
      L16_2 = L16_2.isPlayerAuthorizedToLockdown
      L16_2 = L16_2()
      L15_2.isAbleToLockdown = L16_2
      L16_2 = Framework
      L16_2 = L16_2.isPlayerAuthorizedToRaid
      L16_2 = L16_2()
      L15_2.isAbleToBreach = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.showOffer
      L16_2 = L16_2(L17_2)
      L15_2.showOffer = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.displayOption
      L18_2 = "lockpick"
      L16_2 = L16_2(L17_2, L18_2)
      L15_2.showLockpick = L16_2
      L17_2 = L12_2
      L16_2 = L12_2.isOwner
      L16_2 = L16_2(L17_2)
      L15_2.isOwner = L16_2
      L5_2[L14_2] = L15_2
    end
  end
  L7_2 = SendNUIMessage
  L8_2 = {}
  L8_2.action = "updatePropertiesInBuilding"
  L9_2 = {}
  L9_2.properties = L5_2
  L8_2.data = L9_2
  L7_2(L8_2)
end
L0_1.refreshInteractMenuUI = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = lib
  L1_2 = L1_2.alertDialog
  L2_2 = {}
  L3_2 = locale
  L4_2 = "delete_property"
  L3_2 = L3_2(L4_2)
  L2_2.header = L3_2
  L3_2 = locale
  L4_2 = "delete_property_confirm"
  L5_2 = A0_2.label
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.content = L3_2
  L2_2.centered = true
  L2_2.cancel = true
  L1_2 = L1_2(L2_2)
  if "confirm" ~= L1_2 then
    return
  end
  L2_2 = A0_2.label
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "nolag_properties:server:deleteBuilding"
  L5_2 = false
  L6_2 = A0_2.id
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "delete_property_success"
    L8_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.description = L6_2
    L5_2.type = "success"
    L4_2(L5_2)
  else
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = locale
    L7_2 = "delete_property_failed"
    L8_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.description = L6_2
    L5_2.type = "error"
    L4_2(L5_2)
  end
end
L0_1.deleteBuilding = L1_1
L0_1 = Building
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.metadata
  A0_2.metadata = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.despawnGaragePoint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.spawnGaragePoint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.createBlip
  L2_2(L3_2)
end
L0_1.updateData = L1_1
L0_1 = Building
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Deleting building: "
  L3_2 = A0_2.id
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.deleteBlip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.despawnGaragePoint
  L1_2(L2_2)
  L1_2 = A0_2.enterBuildingZone
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.debug
    L2_2 = "Deleting enterBuildingZone: "
    L3_2 = A0_2.id
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = A0_2.enterBuildingZone
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.getProperties
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = L7_2.removeFromBuilding
      if L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.removeFromBuilding
        L8_2(L9_2)
      end
    end
    L7_2 = nil
  end
  A0_2 = nil
end
L0_1.delete = L1_1
L0_1 = Building
return L0_1
