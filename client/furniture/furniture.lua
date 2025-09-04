local L0_1, L1_1
L0_1 = {}
Furniture = L0_1
L0_1 = Furniture
L1_1 = Furniture
L0_1.__index = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = {}
  L3_2 = A1_2.id
  L2_2.id = L3_2
  L3_2 = A1_2.propertyId
  if not L3_2 then
    L3_2 = Client
    L3_2 = L3_2.furnitureInfo
    L3_2 = L3_2.propertyId
  end
  L2_2.propertyId = L3_2
  L3_2 = A1_2.coords
  if not L3_2 then
    L3_2 = GetNewCoords
    L3_2 = L3_2()
  end
  L2_2.coords = L3_2
  L3_2 = A1_2.rotation
  if not L3_2 then
    L3_2 = {}
    L4_2 = GetEntityRotation
    L5_2 = cache
    L5_2 = L5_2.ped
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.x
    L3_2.x = L4_2
    L4_2 = GetEntityRotation
    L5_2 = cache
    L5_2 = L5_2.ped
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L4_2 = GetEntityRotation
    L5_2 = cache
    L5_2 = L5_2.ped
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.z
    L3_2.z = L4_2
  end
  L2_2.rotation = L3_2
  L3_2 = A1_2.label
  L2_2.label = L3_2
  L3_2 = A1_2.model
  L2_2.model = L3_2
  L3_2 = GetHashKey
  L4_2 = A1_2.model
  L3_2 = L3_2(L4_2)
  L2_2.modelJoaat = L3_2
  L2_2.obj = nil
  L3_2 = A1_2.price
  if not L3_2 then
    L3_2 = 0
  end
  L2_2.price = L3_2
  L3_2 = A1_2.bought
  if not L3_2 then
    L3_2 = false
  end
  L2_2.bought = L3_2
  L3_2 = A1_2.requireKeys
  L2_2.requireKeys = L3_2
  L3_2 = A1_2.environment
  if not L3_2 then
    L3_2 = Client
    L3_2 = L3_2.furnitureInfo
    L3_2 = L3_2.furnitureType
  end
  L2_2.environment = L3_2
  L3_2 = A1_2.type
  if not L3_2 then
    L3_2 = "furniture"
  end
  L2_2.type = L3_2
  L3_2 = A1_2.stored
  if not L3_2 then
    L3_2 = false
  end
  L2_2.stored = L3_2
  L3_2 = A1_2.onSave
  if not L3_2 then
    L3_2 = nil
  end
  L2_2.onSave = L3_2
  L3_2 = A1_2.onCancel
  if not L3_2 then
    L3_2 = nil
  end
  L2_2.onCancel = L3_2
  L3_2 = A1_2.disableCliping
  if not L3_2 then
    L3_2 = false
  end
  L2_2.disableCliping = L3_2
  L2_2.focused = false
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = L2_2.propertyId
  if nil == L3_2 then
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Property ID is nil, for furniture with model "
    L5_2 = L2_2.model
    L6_2 = " and id "
    L7_2 = L2_2.id
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    L3_2 = lib
    L3_2 = L3_2.print
    L3_2 = L3_2.error
    L4_2 = "Client.furnitureInfo.propertyId is "
    L5_2 = Client
    L5_2 = L5_2.furnitureInfo
    if L5_2 then
      L5_2 = L5_2.propertyId
    end
    if not L5_2 then
      L5_2 = "nil"
    end
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = PropertyManager
  L4_2 = L3_2
  L3_2 = L3_2.getPropertyById
  L5_2 = L2_2.propertyId
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = Client
    L4_2 = L4_2.furnitureInfo
    L4_2 = L4_2.furnitureType
    if L4_2 then
      L4_2 = L3_2.spawnedFurniture
      L5_2 = Client
      L5_2 = L5_2.furnitureInfo
      L5_2 = L5_2.furnitureType
      L4_2 = L4_2[L5_2]
      L5_2 = L2_2.id
      L4_2 = L4_2[L5_2]
      if nil ~= L4_2 then
        L4_2 = L3_2.spawnedFurniture
        L5_2 = Client
        L5_2 = L5_2.furnitureInfo
        L5_2 = L5_2.furnitureType
        L4_2 = L4_2[L5_2]
        L5_2 = L2_2.id
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.obj
        if nil ~= L4_2 then
          goto lbl_170
        end
      end
      L4_2 = L2_2.id
      if 0 ~= L4_2 then
        L4_2 = L3_2.spawnedFurniture
        L5_2 = Client
        L5_2 = L5_2.furnitureInfo
        L5_2 = L5_2.furnitureType
        L4_2 = L4_2[L5_2]
        L5_2 = L2_2.id
        L4_2[L5_2] = L2_2
      end
    end
  end
  ::lbl_170::
  L4_2 = Config
  L4_2 = L4_2.InteractableProps
  L5_2 = L2_2.model
  L4_2 = L4_2[L5_2]
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.InteractableProps
    L5_2 = L2_2.model
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.maxPerProperty
    if L4_2 and L3_2 then
      L4_2 = 0
      L5_2 = pairs
      L6_2 = {}
      L7_2 = "outside"
      L8_2 = "inside"
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L3_2.spawnedFurniture
        L11_2 = L11_2[L10_2]
        if L11_2 then
          L11_2 = pairs
          L12_2 = L3_2.spawnedFurniture
          L12_2 = L12_2[L10_2]
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            L17_2 = L16_2.model
            L18_2 = L2_2.model
            if L17_2 == L18_2 then
              L17_2 = L16_2.stored
              if not L17_2 then
                L4_2 = L4_2 + 1
              end
            end
          end
        end
      end
      L5_2 = Config
      L5_2 = L5_2.InteractableProps
      L6_2 = L2_2.model
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.maxPerProperty
      if L4_2 >= L5_2 then
        L5_2 = Framework
        L5_2 = L5_2.Notify
        L6_2 = {}
        L6_2.title = "Furniture Tool"
        L7_2 = locale
        L8_2 = "max_per_property"
        L9_2 = Config
        L9_2 = L9_2.InteractableProps
        L10_2 = L2_2.model
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.maxPerProperty
        L7_2 = L7_2(L8_2, L9_2)
        L6_2.description = L7_2
        L6_2.type = "error"
        L5_2(L6_2)
        L5_2 = nil
        return L5_2
      end
    end
  end
  L5_2 = L2_2
  L4_2 = L2_2.init
  L4_2(L5_2)
  return L2_2
end
L0_1.new = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.spawnObject
  L1_2(L2_2)
end
L0_1.init = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = lib
    L0_3 = L0_3.print
    L0_3 = L0_3.debug
    L1_3 = "Creating object "
    L2_3 = A0_2.model
    L3_3 = " at "
    L4_3 = json
    L4_3 = L4_3.encode
    L5_3 = A0_2.coords
    L4_3 = L4_3(L5_3)
    L5_3 = " with rotation "
    L6_3 = json
    L6_3 = L6_3.encode
    L7_3 = A0_2.rotation
    L6_3 = L6_3(L7_3)
    L7_3 = " with id "
    L8_3 = A0_2.id
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
    L0_3(L1_3)
    L0_3 = LoadModel
    L1_3 = A0_2.modelJoaat
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.success
    if not L1_3 then
      L1_3 = lib
      L1_3 = L1_3.print
      L1_3 = L1_3.error
      L2_3 = L0_3.error
      L1_3(L2_3)
      return
    end
    L1_3 = CreateObject
    L2_3 = A0_2.modelJoaat
    L3_3 = A0_2.coords
    L3_3 = L3_3.x
    L4_3 = A0_2.coords
    L4_3 = L4_3.y
    L5_3 = A0_2.coords
    L5_3 = L5_3.z
    L6_3 = false
    L7_3 = true
    L8_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    A0_2.obj = L1_3
    L1_3 = SetEntityCoordsNoOffset
    L2_3 = A0_2.obj
    L3_3 = A0_2.coords
    L3_3 = L3_3.x
    L4_3 = A0_2.coords
    L4_3 = L4_3.y
    L5_3 = A0_2.coords
    L5_3 = L5_3.z
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L1_3 = SetEntityRotation
    L2_3 = A0_2.obj
    L3_3 = A0_2.rotation
    L3_3 = L3_3.x
    L3_3 = L3_3 + 0.0
    L4_3 = A0_2.rotation
    L4_3 = L4_3.y
    L4_3 = L4_3 + 0.0
    L5_3 = A0_2.rotation
    L5_3 = L5_3.z
    L5_3 = L5_3 + 0.0
    L6_3 = 0
    L7_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = Config
    L1_3 = L1_3.DynamicDoors
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.DynamicDoors
      if not L1_3 then
        goto lbl_89
      end
      L1_3 = A0_2.type
      if "door" == L1_3 then
        goto lbl_89
      end
    end
    L1_3 = FreezeEntityPosition
    L2_3 = A0_2.obj
    L3_3 = true
    L1_3(L2_3, L3_3)
    ::lbl_89::
    L1_3 = SetEntityInvincible
    L2_3 = A0_2.obj
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetModelAsNoLongerNeeded
    L2_3 = A0_2.modelJoaat
    L1_3(L2_3)
    L1_3 = Wait
    L2_3 = 100
    L1_3(L2_3)
    L1_3 = Entity
    L2_3 = A0_2.obj
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.state
    L2_3 = L1_3
    L1_3 = L1_3.set
    L3_3 = "id"
    L4_3 = A0_2.id
    L5_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = Entity
    L2_3 = A0_2.obj
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.state
    L2_3 = L1_3
    L1_3 = L1_3.set
    L3_3 = "propertyId"
    L4_3 = A0_2.propertyId
    L5_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.createInteractablePoint
    L1_3(L2_3)
  end
  L1_2(L2_2)
end
L0_1.spawnObject = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.obj
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.isBeingEdited
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.stopEditing
    L1_2(L2_2)
  end
  L1_2 = GetMenuVisibility
  L2_2 = "furnitureMenuVisibility"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "closeFurnitureMenuVisible"
    L2_2(L3_2)
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = Client
    L0_3 = L0_3.furnitureInfo
    L0_3.rayCastActive = true
    L0_3 = DrawLaser
    L1_3 = Config
    L1_3 = L1_3.ColorTheme
    L1_3 = L1_3.laser
    L2_3 = true
    L0_3, L1_3 = L0_3(L1_3, L2_3)
    L2_3 = SetEntityCollision
    L3_3 = A0_2.obj
    L4_3 = false
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
    while true do
      L2_3 = Client
      L2_3 = L2_3.furnitureInfo
      L2_3 = L2_3.rayCastActive
      if not L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 1
      L2_3(L3_3)
      L2_3 = lib
      L2_3 = L2_3.disableControls
      L2_3()
      L2_3 = DrawLaser
      L3_3 = Config
      L3_3 = L3_3.ColorTheme
      L3_3 = L3_3.laser
      L4_3 = true
      L2_3, L3_3 = L2_3(L3_3, L4_3)
      L1_3 = L3_3
      L0_3 = L2_3
      L2_3 = Client
      L2_3 = L2_3.furnitureInfo
      L2_3 = L2_3.propertyId
      if L2_3 then
        L2_3 = IsPointInside
        L3_3 = Client
        L3_3 = L3_3.furnitureInfo
        L3_3 = L3_3.propertyId
        L4_3 = vector3
        L5_3 = L1_3.x
        L6_3 = L1_3.y
        L7_3 = L1_3.z
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3(L5_3, L6_3, L7_3)
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        if not L2_3 then
          goto lbl_160
        end
      end
      L2_3 = SetEntityCoords
      L3_3 = A0_2.obj
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L7_3 = false
      L8_3 = false
      L9_3 = false
      L10_3 = false
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L2_3 = SetEntityDrawOutline
      L3_3 = A0_2.obj
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = 14
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = vector3
        L3_3 = A0_2.rotation
        L3_3 = L3_3.x
        L4_3 = A0_2.rotation
        L4_3 = L4_3.y
        L5_3 = A0_2.rotation
        L5_3 = L5_3.z
        L5_3 = L5_3 + 2.5
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        A0_2.rotation = L2_3
        L2_3 = SetEntityRotation
        L3_3 = A0_2.obj
        L4_3 = A0_2.rotation
        L4_3 = L4_3.x
        L5_3 = A0_2.rotation
        L5_3 = L5_3.y
        L6_3 = A0_2.rotation
        L6_3 = L6_3.z
        L7_3 = 0
        L8_3 = true
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = 15
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = vector3
        L3_3 = A0_2.rotation
        L3_3 = L3_3.x
        L4_3 = A0_2.rotation
        L4_3 = L4_3.y
        L5_3 = A0_2.rotation
        L5_3 = L5_3.z
        L5_3 = L5_3 - 2.5
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        A0_2.rotation = L2_3
        L2_3 = SetEntityRotation
        L3_3 = A0_2.obj
        L4_3 = A0_2.rotation
        L4_3 = L4_3.x
        L5_3 = A0_2.rotation
        L5_3 = L5_3.y
        L6_3 = A0_2.rotation
        L6_3 = L6_3.z
        L7_3 = 0
        L8_3 = true
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = 24
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 and L0_3 then
        A0_2.coords = L1_3
        L2_3 = SetEntityCollision
        L3_3 = A0_2.obj
        L4_3 = true
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = SetEntityDrawOutline
        L3_3 = A0_2.obj
        L4_3 = false
        L2_3(L3_3, L4_3)
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3.edit
        L2_3(L3_3)
        L2_3 = FurnitureConfig
        L2_3 = L2_3.FreeCam
        if L2_3 then
          L2_3 = SetFreecamEnabled
          L3_3 = true
          L2_3(L3_3)
        end
        L2_3 = L1_2
        if L2_3 then
          L2_3 = SendNUIMessage
          L3_3 = {}
          L3_3.action = "setFurnitureMenuVisible"
          L2_3(L3_3)
        end
        L2_3 = Client
        L2_3 = L2_3.furnitureInfo
        L2_3.rayCastActive = false
      end
      ::lbl_160::
    end
  end
  L2_2(L3_2)
end
L0_1.rayCast = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = lib
  L1_2 = L1_2.print
  L1_2 = L1_2.debug
  L2_2 = "Deleting object from pId: "
  L3_2 = A0_2.propertyId
  L4_2 = ", model:"
  L5_2 = A0_2.model
  L6_2 = " at "
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = A0_2.coords
  L7_2 = L7_2(L8_2)
  L8_2 = " with rotation "
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = A0_2.rotation
  L9_2 = L9_2(L10_2)
  L10_2 = " with id "
  L11_2 = A0_2.id
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L1_2(L2_2)
  L1_2 = A0_2.interactablePoint
  if L1_2 then
    L1_2 = A0_2.interactablePoint
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    A0_2.interactablePoint = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2.isBeingEdited
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.stopEditing
    L1_2(L2_2)
  end
  L1_2 = NetworkHasControlOfEntity
  L2_2 = A0_2.obj
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = NetworkRequestControlOfEntity
    L2_2 = A0_2.obj
    L1_2(L2_2)
  end
  L1_2 = DeleteEntity
  L2_2 = A0_2.obj
  L1_2(L2_2)
  A0_2.obj = nil
end
L0_1.despawnObject = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.bought
  if not L1_2 then
    return
  end
  L1_2 = A0_2.interactablePoint
  if L1_2 then
    L1_2 = A0_2.interactablePoint
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
  end
  L1_2 = Config
  L1_2 = L1_2.InteractableProps
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.print
    L1_2 = L1_2.debug
    L2_2 = "Creating interactable point for object: "
    L3_2 = A0_2.model
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = vector3
    L2_2 = A0_2.coords
    L2_2 = L2_2.x
    L3_2 = A0_2.coords
    L3_2 = L3_2.y
    L4_2 = A0_2.coords
    L4_2 = L4_2.z
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = lib
    L2_2 = L2_2.table
    L2_2 = L2_2.deepclone
    L3_2 = Config
    L3_2 = L3_2.InteractableProps
    L4_2 = A0_2.model
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.inventory
    if L3_2 then
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L0_3 = {}
        L1_3 = "property_"
        L2_3 = A0_2.propertyId
        L3_3 = "_furni_"
        L4_3 = A0_2.id
        L5_3 = "_"
        L6_3 = A0_2.environment
        L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
        L0_3.name = L1_3
        L1_3 = L2_2.inventory
        L1_3 = L1_3.weight
        L0_3.weight = L1_3
        L1_3 = L2_2.inventory
        L1_3 = L1_3.slots
        L0_3.slots = L1_3
        L1_3 = A0_2.label
        L0_3.label = L1_3
        L1_3 = lib
        L1_3 = L1_3.print
        L1_3 = L1_3.debug
        L2_3 = "Opening stash "
        L3_3 = L0_3.name
        L4_3 = " with weight "
        L5_3 = L0_3.weight
        L6_3 = " and slots "
        L7_3 = L0_3.slots
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
        L1_3(L2_3)
        L1_3 = OpenStash
        L2_3 = L0_3
        L1_3(L2_3)
      end
      L2_2.onSelect = L3_2
    end
    L3_2 = A0_2.label
    L2_2.label = L3_2
    L3_2 = A0_2.requireKeys
    L2_2.requireKeys = L3_2
    L3_2 = "furni_"
    L4_2 = A0_2.id
    L3_2 = L3_2 .. L4_2
    L2_2.lock = L3_2
    L3_2 = A0_2.propertyId
    L4_2 = "_furni_"
    L5_2 = A0_2.id
    L6_2 = "_"
    L7_2 = A0_2.environment
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2.id = L3_2
    L3_2 = InteractablePoint
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.coords = L1_2
    L5_2.options = L2_2
    L6_2 = PropertyManager
    L7_2 = L6_2
    L6_2 = L6_2.getPropertyById
    L8_2 = A0_2.propertyId
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.property = L6_2
    L6_2 = A0_2.obj
    L5_2.object = L6_2
    L5_2.furnitureObject = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.interactablePoint = L3_2
  end
end
L0_1.createInteractablePoint = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.coords = A1_2
  L2_2 = SetEntityCoordsNoOffset
  L3_2 = A0_2.obj
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L6_2 = A0_2.coords
  L6_2 = L6_2.z
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2
  L2_2 = A0_2.isBeingEdited
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "setGizmoEntity"
    L5_2 = A0_2
    L4_2 = A0_2.getData
    L4_2 = L4_2(L5_2)
    L3_2.data = L4_2
    L2_2(L3_2)
  end
end
L0_1.setCoords = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.rotation = A1_2
  L2_2 = SetEntityRotation
  L3_2 = A0_2.obj
  L4_2 = A0_2.rotation
  L4_2 = L4_2.x
  L4_2 = L4_2 + 0.0
  L5_2 = A0_2.rotation
  L5_2 = L5_2.y
  L5_2 = L5_2 + 0.0
  L6_2 = A0_2.rotation
  L6_2 = L6_2.z
  L6_2 = L6_2 + 0.0
  L7_2 = 0
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2.isBeingEdited
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "setGizmoEntity"
    L5_2 = A0_2
    L4_2 = A0_2.getData
    L4_2 = L4_2(L5_2)
    L3_2.data = L4_2
    L2_2(L3_2)
  end
end
L0_1.setRotation = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.rotation
  A0_2.rotation = L2_2
  L2_2 = A1_2.coords
  A0_2.coords = L2_2
  L2_2 = SetEntityRotation
  L3_2 = A0_2.obj
  L4_2 = A0_2.rotation
  L4_2 = L4_2.x
  L4_2 = L4_2 + 0.0
  L5_2 = A0_2.rotation
  L5_2 = L5_2.y
  L5_2 = L5_2 + 0.0
  L6_2 = A0_2.rotation
  L6_2 = L6_2.z
  L6_2 = L6_2 + 0.0
  L7_2 = 0
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = SetEntityCoordsNoOffset
  L3_2 = A0_2.obj
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L6_2 = A0_2.coords
  L6_2 = L6_2.z
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2
  L2_2 = A0_2.isBeingEdited
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "setGizmoEntity"
    L5_2 = A0_2
    L4_2 = A0_2.getData
    L4_2 = L4_2(L5_2)
    L3_2.data = L4_2
    L2_2(L3_2)
  end
end
L0_1.setCoordsAndRotation = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlaceObjectOnGroundProperly
  L2_2 = A0_2.obj
  L1_2(L2_2)
  L1_2 = GetEntityRotation
  L2_2 = A0_2.obj
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.rotation = L1_2
  L1_2 = {}
  L2_2 = A0_2.rotation
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L2_2 = A0_2.rotation
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L2_2 = A0_2.rotation
  L2_2 = L2_2.z
  L1_2.z = L2_2
  A0_2.rotation = L1_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2.obj
  L1_2 = L1_2(L2_2)
  A0_2.coords = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.isBeingEdited
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "setGizmoEntity"
    L4_2 = A0_2
    L3_2 = A0_2.getData
    L3_2 = L3_2(L4_2)
    L2_2.data = L3_2
    L1_2(L2_2)
  end
end
L0_1.snapToGround = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setCoords
  L3_2 = GetEntityCoords
  L4_2 = cache
  L4_2 = L4_2.ped
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.bring = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2.propertyId
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Config
  L2_2 = L2_2.InteractableProps
  L3_2 = A0_2.model
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.bought
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.checkCanDelete
      L2_2(L3_2)
      L2_2 = A0_2.canDelete
      if not L2_2 then
        L2_2 = Framework
        L2_2 = L2_2.Notify
        L3_2 = {}
        L3_2.title = "Furniture Tool"
        L4_2 = A0_2.whyCantDelete
        L3_2.description = L4_2
        L3_2.type = "error"
        L2_2(L3_2)
        L2_2 = false
        return L2_2
      end
    end
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "nolag_properties:server:storeFurniture"
  L4_2 = false
  L5_2 = Client
  L5_2 = L5_2.furnitureInfo
  L5_2 = L5_2.propertyId
  L6_2 = Client
  L6_2 = L6_2.furnitureInfo
  L6_2 = L6_2.furnitureType
  L7_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 then
    L3_2 = Framework
    L3_2 = L3_2.Notify
    L4_2 = {}
    L4_2.title = "Furniture Tool"
    L5_2 = locale
    L6_2 = "furniture_stored"
    L7_2 = A0_2.label
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.description = L5_2
    L4_2.type = "success"
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.despawnObject
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "furniture:refreshObjects"
    L3_2(L4_2)
    L3_2 = true
    return L3_2
  end
end
L0_1.store = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2.propertyId
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Config
  L2_2 = L2_2.InteractableProps
  L3_2 = A0_2.model
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.bought
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.checkCanDelete
      L2_2(L3_2)
      L2_2 = A0_2.canDelete
      if not L2_2 then
        L2_2 = Framework
        L2_2 = L2_2.Notify
        L3_2 = {}
        L3_2.title = "Furniture Tool"
        L4_2 = A0_2.whyCantDelete
        L3_2.description = L4_2
        L3_2.type = "error"
        L2_2(L3_2)
        L2_2 = false
        return L2_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.delete
  return L2_2(L3_2)
end
L0_1.sell = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.onCancel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.onCancel
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.stopEditing
    L1_2(L2_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = A0_2.propertyId
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Config
  L2_2 = L2_2.InteractableProps
  L3_2 = A0_2.model
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.bought
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.checkCanDelete
      L2_2(L3_2)
      L2_2 = A0_2.canDelete
      if not L2_2 then
        L2_2 = Framework
        L2_2 = L2_2.Notify
        L3_2 = {}
        L3_2.title = "Furniture Tool"
        L4_2 = A0_2.whyCantDelete
        L3_2.description = L4_2
        L3_2.type = "error"
        L2_2(L3_2)
        L2_2 = false
        return L2_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.despawnObject
  L2_2(L3_2)
  L2_2 = A0_2.bought
  if L2_2 then
    L2_2 = L1_2.spawnedFurniture
    L3_2 = Client
    L3_2 = L3_2.furnitureInfo
    L3_2 = L3_2.furnitureType
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.id
    L2_2[L3_2] = nil
    L2_2 = TriggerServerEvent
    L3_2 = "nolag_properties:server:updateFurniture"
    L4_2 = Client
    L4_2 = L4_2.furnitureInfo
    L4_2 = L4_2.propertyId
    L5_2 = Client
    L5_2 = L5_2.furnitureInfo
    L5_2 = L5_2.furnitureType
    L6_2 = A0_2.id
    L7_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "furniture:refreshObjects"
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end
L0_1.delete = L1_1
L0_1 = Furniture
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setCoordsAndRotation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.interactablePoint
  if L2_2 then
    L2_2 = A0_2.interactablePoint
    L3_2 = L2_2
    L2_2 = L2_2.remove
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.createInteractablePoint
    L2_2(L3_2)
  end
end
L0_1.update = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.onSave
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.onSave
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.stopEditing
    L1_2(L2_2)
    return
  end
  L1_2 = IsPointInside
  L2_2 = Client
  L2_2 = L2_2.furnitureInfo
  L2_2 = L2_2.propertyId
  L3_2 = vector3
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L6_2 = A0_2.coords
  L6_2 = L6_2.z
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if not L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.Notify
    L2_2 = {}
    L2_2.title = "Furniture Tool"
    L3_2 = locale
    L4_2 = "not_inside"
    L3_2 = L3_2(L4_2)
    L2_2.description = L3_2
    L2_2.type = "error"
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.revertCoords
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2.bought
  if not L1_2 then
    L1_2 = Client
    L1_2 = L1_2.furnitureInfo
    L1_2 = L1_2.furnitureType
    if "inside" == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.MaxFurnitureInside
      if L1_2 then
        goto lbl_52
      end
    end
    L1_2 = Config
    L1_2 = L1_2.MaxFurnitureOutside
    ::lbl_52::
    if L1_2 then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "number" == L2_2 then
        L2_2 = lib
        L2_2 = L2_2.callback
        L2_2 = L2_2.await
        L3_2 = "nolag_properties:server:property:getTotalFurniture"
        L4_2 = false
        L5_2 = A0_2.propertyId
        L6_2 = Client
        L6_2 = L6_2.furnitureInfo
        L6_2 = L6_2.furnitureType
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if L1_2 <= L2_2 then
          L3_2 = Framework
          L3_2 = L3_2.Notify
          L4_2 = {}
          L4_2.title = "Furniture Tool"
          L5_2 = locale
          L6_2 = "notify_furniture_max_reached"
          L7_2 = Client
          L7_2 = L7_2.furnitureInfo
          L7_2 = L7_2.furnitureType
          L8_2 = L1_2
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          L4_2.description = L5_2
          L4_2.type = "error"
          L3_2(L4_2)
          L4_2 = A0_2
          L3_2 = A0_2.revertCoords
          L3_2(L4_2)
          return
        end
      end
    end
    L2_2 = lib
    L2_2 = L2_2.alertDialog
    L3_2 = {}
    L4_2 = locale
    L5_2 = "furniture_confirm_purchase"
    L4_2 = L4_2(L5_2)
    L3_2.header = L4_2
    L4_2 = locale
    L5_2 = "furniture_confirm_purchase_sure"
    L4_2 = L4_2(L5_2)
    L3_2.content = L4_2
    L3_2.centered = true
    L3_2.cancel = true
    L2_2 = L2_2(L3_2)
    if "confirm" == L2_2 then
      L3_2 = PropertyManager
      L4_2 = L3_2
      L3_2 = L3_2.getPropertyById
      L5_2 = A0_2.propertyId
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = FUNC
      L4_2 = L4_2.generateId
      L5_2 = L3_2.spawnedFurniture
      L6_2 = Client
      L6_2 = L6_2.furnitureInfo
      L6_2 = L6_2.furnitureType
      L5_2 = L5_2[L6_2]
      L4_2 = L4_2(L5_2)
      L5_2 = lib
      L5_2 = L5_2.callback
      L5_2 = L5_2.await
      L6_2 = "nolag_properties:server:buyFurniture"
      L7_2 = false
      L8_2 = A0_2.price
      L9_2 = "Bought furniture with id "
      L10_2 = L4_2
      L11_2 = " for property "
      L12_2 = A0_2.propertyId
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if L5_2 then
        A0_2.bought = true
        A0_2.id = L4_2
        L5_2 = Entity
        L6_2 = A0_2.obj
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.state
        L6_2 = L5_2
        L5_2 = L5_2.set
        L7_2 = "id"
        L8_2 = A0_2.id
        L9_2 = false
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = A0_2
        L5_2 = A0_2.stopEditing
        L5_2(L6_2)
        L5_2 = lib
        L5_2 = L5_2.print
        L5_2 = L5_2.debug
        L6_2 = "Bought furniture with id "
        L7_2 = A0_2.id
        L8_2 = " for property "
        L9_2 = A0_2.propertyId
        L10_2 = " with type "
        L11_2 = Client
        L11_2 = L11_2.furnitureInfo
        L11_2 = L11_2.furnitureType
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
        L5_2(L6_2)
        L5_2 = L3_2.spawnedFurniture
        L6_2 = Client
        L6_2 = L6_2.furnitureInfo
        L6_2 = L6_2.furnitureType
        L5_2 = L5_2[L6_2]
        L6_2 = A0_2.id
        L5_2[L6_2] = A0_2
      else
        L5_2 = Framework
        L5_2 = L5_2.Notify
        L6_2 = {}
        L6_2.title = "Furniture Tool"
        L7_2 = locale
        L8_2 = "not_enough_money"
        L7_2 = L7_2(L8_2)
        L6_2.description = L7_2
        L6_2.type = "error"
        L5_2(L6_2)
        return
      end
    else
      L4_2 = A0_2
      L3_2 = A0_2.stopEditing
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.despawnObject
      L3_2(L4_2)
      return
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2.stopEditing
    L1_2(L2_2)
  end
  L1_2 = A0_2.stored
  if L1_2 then
    L1_2 = Client
    L1_2 = L1_2.furnitureInfo
    L1_2 = L1_2.furnitureType
    if "inside" == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.MaxFurnitureInside
      if L1_2 then
        goto lbl_201
      end
    end
    L1_2 = Config
    L1_2 = L1_2.MaxFurnitureOutside
    ::lbl_201::
    if L1_2 then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "number" == L2_2 then
        L2_2 = lib
        L2_2 = L2_2.callback
        L2_2 = L2_2.await
        L3_2 = "nolag_properties:server:property:getTotalFurniture"
        L4_2 = false
        L5_2 = A0_2.propertyId
        L6_2 = Client
        L6_2 = L6_2.furnitureInfo
        L6_2 = L6_2.furnitureType
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if L1_2 <= L2_2 then
          L3_2 = Framework
          L3_2 = L3_2.Notify
          L4_2 = {}
          L4_2.title = "Furniture Tool"
          L5_2 = locale
          L6_2 = "notify_furniture_max_reached"
          L7_2 = Client
          L7_2 = L7_2.furnitureInfo
          L7_2 = L7_2.furnitureType
          L8_2 = L1_2
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          L4_2.description = L5_2
          L4_2.type = "error"
          L3_2(L4_2)
          L4_2 = A0_2
          L3_2 = A0_2.revertCoords
          L3_2(L4_2)
          L4_2 = A0_2
          L3_2 = A0_2.despawnObject
          L3_2(L4_2)
          return
        end
      end
    end
    A0_2.stored = false
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Furniture is stored"
    L2_2(L3_2)
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "furniture:refreshObjects"
    L2_2(L3_2)
  end
  L1_2 = A0_2.id
  if 0 == L1_2 then
    L1_2 = PropertyManager
    L2_2 = L1_2
    L1_2 = L1_2.getPropertyById
    L3_2 = A0_2.propertyId
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = FUNC
    L2_2 = L2_2.generateId
    L3_2 = L1_2.spawnedFurniture
    L4_2 = Client
    L4_2 = L4_2.furnitureInfo
    L4_2 = L4_2.furnitureType
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    A0_2.id = L2_2
    L2_2 = Entity
    L3_2 = A0_2.obj
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.state
    L3_2 = L2_2
    L2_2 = L2_2.set
    L4_2 = "id"
    L5_2 = A0_2.id
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = L1_2.spawnedFurniture
    L3_2 = Client
    L3_2 = L3_2.furnitureInfo
    L3_2 = L3_2.furnitureType
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.id
    L2_2[L3_2] = A0_2
  end
  L1_2 = Config
  L1_2 = L1_2.InteractableProps
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.createInteractablePoint
    L1_2(L2_2)
  end
  L1_2 = PropertyManager
  L2_2 = L1_2
  L1_2 = L1_2.getPropertyById
  L3_2 = Client
  L3_2 = L3_2.furnitureInfo
  L3_2 = L3_2.propertyId
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.coords
  L3_2 = L1_2.type
  if "shell" == L3_2 then
    L3_2 = LocalPlayer
    L3_2 = L3_2.state
    L3_2 = L3_2.insideArea
    if not L3_2 then
      L3_2 = vector3
      L4_2 = A0_2.coords
      L4_2 = L4_2.x
      L5_2 = A0_2.coords
      L5_2 = L5_2.y
      L6_2 = A0_2.coords
      L6_2 = L6_2.z
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = GetEntityCoords
      L5_2 = L1_2.shellData
      L5_2 = L5_2.object
      L4_2 = L4_2(L5_2)
      L2_2 = L3_2 - L4_2
    end
  end
  L3_2 = {}
  L4_2 = A0_2.id
  L3_2.id = L4_2
  L3_2.coords = L2_2
  L4_2 = A0_2.rotation
  L3_2.rotation = L4_2
  L4_2 = A0_2.label
  L3_2.label = L4_2
  L4_2 = A0_2.model
  L3_2.model = L4_2
  L4_2 = A0_2.type
  if not L4_2 then
    L4_2 = "furniture"
  end
  L3_2.type = L4_2
  L4_2 = A0_2.price
  L3_2.price = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "nolag_properties:server:updateFurniture"
  L6_2 = Client
  L6_2 = L6_2.furnitureInfo
  L6_2 = L6_2.propertyId
  L7_2 = Client
  L7_2 = L7_2.furnitureInfo
  L7_2 = L7_2.furnitureType
  L8_2 = A0_2.id
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.save = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.oldCoords
  if not L1_2 then
    return
  end
  L1_2 = A0_2.oldRotation
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setCoordsAndRotation
  L3_2 = {}
  L4_2 = A0_2.oldCoords
  L3_2.coords = L4_2
  L4_2 = A0_2.oldRotation
  L3_2.rotation = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.revertCoords = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Config
  L1_2 = L1_2.InteractableProps
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.canMove
  if not L1_2 then
    L1_2 = Config
    L1_2 = L1_2.InteractableProps
    L2_2 = A0_2.model
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.inventory
    if L1_2 then
      L1_2 = Config
      L1_2 = L1_2.Functions
      L1_2 = L1_2.OpenInventory
      L1_2 = L1_2.canMove
    end
  end
  L2_2 = true
  A0_2.whyCantMove = ""
  A0_2.canMove = L2_2
  if L1_2 then
    L2_2 = PropertyManager
    L3_2 = L2_2
    L2_2 = L2_2.getPropertyById
    L4_2 = A0_2.propertyId
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = L2_2.id
    L7_2 = "_furni_"
    L8_2 = A0_2.id
    L9_2 = "_"
    L10_2 = A0_2.environment
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2.id = L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    A0_2.whyCantMove = L4_2
    A0_2.canMove = L3_2
  end
  L2_2 = A0_2.canMove
  L3_2 = A0_2.whyCantMove
  return L2_2, L3_2
end
L0_1.checkCanMove = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Config
  L1_2 = L1_2.InteractableProps
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.canDelete
  if not L1_2 then
    L1_2 = Config
    L1_2 = L1_2.InteractableProps
    L2_2 = A0_2.model
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.inventory
    if L1_2 then
      L1_2 = Config
      L1_2 = L1_2.Functions
      L1_2 = L1_2.OpenInventory
      L1_2 = L1_2.canDelete
    end
  end
  L2_2 = true
  A0_2.whyCantDelete = ""
  A0_2.canDelete = L2_2
  if L1_2 then
    L2_2 = PropertyManager
    L3_2 = L2_2
    L2_2 = L2_2.getPropertyById
    L4_2 = A0_2.propertyId
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = L2_2.id
    L7_2 = "_furni_"
    L8_2 = A0_2.id
    L9_2 = "_"
    L10_2 = A0_2.environment
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2.id = L6_2
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    A0_2.whyCantDelete = L4_2
    A0_2.canDelete = L3_2
  end
  L2_2 = A0_2.canDelete
  L3_2 = A0_2.whyCantDelete
  return L2_2, L3_2
end
L0_1.checkCanDelete = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L1_2 = L1_2.focusedFurniture
  if L1_2 then
    L1_2 = Client
    L1_2 = L1_2.furnitureInfo
    L1_2 = L1_2.focusedFurniture
    L2_2 = L1_2
    L1_2 = L1_2.unfocus
    L1_2(L2_2)
  end
  L1_2 = Client
  L1_2 = L1_2.gizmoEntity
  if L1_2 then
    L1_2 = Client
    L1_2 = L1_2.gizmoEntity
    if L1_2 ~= A0_2 then
      L1_2 = Client
      L1_2 = L1_2.gizmoEntity
      L2_2 = L1_2
      L1_2 = L1_2.save
      L1_2(L2_2)
    end
  end
  L1_2 = Config
  L1_2 = L1_2.InteractableProps
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = A0_2.bought
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.checkCanMove
      L1_2(L2_2)
      L1_2 = A0_2.canMove
      if not L1_2 then
        L1_2 = Framework
        L1_2 = L1_2.Notify
        L2_2 = {}
        L2_2.title = "Furniture Tool"
        L3_2 = A0_2.whyCantMove
        L2_2.description = L3_2
        L2_2.type = "error"
        L1_2(L2_2)
        return
      end
    end
  end
  L1_2 = A0_2.coords
  A0_2.oldCoords = L1_2
  L1_2 = A0_2.rotation
  A0_2.oldRotation = L1_2
  L1_2 = FurnitureConfig
  L1_2 = L1_2.FreeCam
  if L1_2 then
    L1_2 = Client
    L1_2 = L1_2.menuVisibility
    L1_2 = L1_2.furnitureMenuVisibility
    if true ~= L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = cache
      L2_2 = L2_2.ped
      L1_2 = L1_2(L2_2)
      L2_2 = SetFreecamEnabled
      L3_2 = true
      L2_2(L3_2)
      L2_2 = SetFreecamPosition
      L3_2 = L1_2.x
      L4_2 = L1_2.y
      L5_2 = L1_2.z
      L5_2 = L5_2 + 0.5
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L5_3 = StartShapeTestLosProbe
    L6_3 = A0_3.x
    L7_3 = A0_3.y
    L8_3 = A0_3.z
    L9_3 = A1_3.x
    L10_3 = A1_3.y
    L11_3 = A1_3.z
    L12_3 = A2_3 or L12_3
    if not A2_3 then
      L12_3 = 511
    end
    L13_3 = A4_3 or L13_3
    if not A4_3 then
      L13_3 = cache
      L13_3 = L13_3.ped
    end
    L14_3 = A3_3 or L14_3
    if not A3_3 then
      L14_3 = 4
    end
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    while true do
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = GetShapeTestResultIncludingMaterial
      L7_3 = L5_3
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L6_3(L7_3)
      if 1 ~= L6_3 then
        return L7_3
      end
    end
  end
  L2_2 = A0_2.disableCliping
  if L2_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = SetEntityDrawOutline
      L2_3 = A0_2.obj
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityDrawOutlineColor
      L2_3 = 255
      L3_3 = 0
      L4_3 = 0
      L5_3 = 255
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = SetEntityDrawOutlineShader
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = SetEntityDynamic
      L2_3 = A0_2.obj
      L3_3 = true
      L1_3(L2_3, L3_3)
      while true do
        L1_3 = Client
        L1_3 = L1_3.gizmoEntity
        if nil == L1_3 then
          break
        end
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = GetOffsetFromEntityInWorldCoords
        L2_3 = A0_2.obj
        L3_3 = 0.0
        L4_3 = 0.45
        L5_3 = 0.0
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
        L2_3 = GetOffsetFromEntityInWorldCoords
        L3_3 = A0_2.obj
        L4_3 = 0.0
        L5_3 = -10.0
        L6_3 = 0.0
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        L3_3 = GetOffsetFromEntityInWorldCoords
        L4_3 = A0_2.obj
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
        L4_3 = GetOffsetFromEntityInWorldCoords
        L5_3 = A0_2.obj
        L6_3 = 0.0
        L7_3 = 0.45
        L8_3 = 0.0
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
        L5_3 = GetEntityHeightAboveGround
        L6_3 = A0_2.obj
        L5_3 = L5_3(L6_3)
        L6_3 = L1_2
        L7_3 = L1_3
        L8_3 = L2_3
        L9_3 = 4294967295
        L10_3 = 4
        L11_3 = A0_2.obj
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
        L7_3 = L1_2
        L8_3 = L3_3
        L9_3 = L4_3
        L10_3 = 4294967295
        L11_3 = 4
        L12_3 = A0_2.obj
        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
        L8_3 = math
        L8_3 = L8_3.floor
        L9_3 = GetEntityCoords
        L10_3 = cache
        L10_3 = L10_3.ped
        L9_3 = L9_3(L10_3)
        L9_3 = L9_3 - L1_3
        L9_3 = #L9_3
        L8_3 = L8_3(L9_3)
        if L8_3 >= 15 then
          L6_3 = true
        end
        if L5_3 then
          L8_3 = math
          L8_3 = L8_3.floor
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          if L8_3 >= 20 then
            L6_3 = true
          end
        end
        L8_3 = GetGameTimer
        L8_3 = L8_3()
        L8_3 = L8_3 - L0_3
        L9_3 = 500
        if L8_3 > L9_3 then
          L8_3 = GetGameTimer
          L8_3 = L8_3()
          L0_3 = L8_3
          if L7_3 and not L6_3 then
            L8_3 = SetEntityDrawOutlineColor
            L9_3 = 0
            L10_3 = 255
            L11_3 = 0
            L12_3 = 255
            L8_3(L9_3, L10_3, L11_3, L12_3)
            A0_2.isValid = true
          else
            L8_3 = SetEntityDrawOutlineColor
            L9_3 = 255
            L10_3 = 0
            L11_3 = 0
            L12_3 = 255
            L8_3(L9_3, L10_3, L11_3, L12_3)
            A0_2.isValid = false
          end
        end
      end
    end
    L2_2(L3_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setObjectMenuVisible"
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "setGizmoEntity"
  L5_2 = A0_2
  L4_2 = A0_2.getData
  L4_2 = L4_2(L5_2)
  L3_2.data = L4_2
  L2_2(L3_2)
  L2_2 = Client
  L2_2.gizmoEntity = A0_2
end
L0_1.edit = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.oldCoords = nil
  A0_2.oldRotation = nil
  L1_2 = FurnitureConfig
  L1_2 = L1_2.FreeCam
  if L1_2 then
    L1_2 = Client
    L1_2 = L1_2.menuVisibility
    L1_2 = L1_2.furnitureMenuVisibility
    if true ~= L1_2 then
      L1_2 = SetFreecamFrozen
      L2_2 = false
      L1_2(L2_2)
      L1_2 = SetFreecamEnabled
      L2_2 = false
      L1_2(L2_2)
    end
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "setGizmoEntity"
  L3_2 = {}
  L2_2.data = L3_2
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "setObjectMenuInvisible"
  L1_2(L2_2)
  L1_2 = Client
  L1_2.gizmoEntity = nil
end
L0_1.stopEditing = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2
  L1_2 = Client
  L1_2 = L1_2.gizmoEntity
  L1_2 = L1_2 == A0_2
  return L1_2
end
L0_1.isBeingEdited = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L1_2.focusedFurniture = A0_2
  A0_2.focused = true
  L1_2 = SetEntityDrawOutlineShader
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 255
  L3_2 = 0
  L4_2 = 0
  L5_2 = 255
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2.obj
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.focus = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Client
  L1_2 = L1_2.furnitureInfo
  L1_2.focusedFurniture = nil
  A0_2.focused = false
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2.obj
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityDrawOutlineShader
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 200
  L3_2 = 200
  L4_2 = 250
  L5_2 = 180
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.unfocus = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = tostring
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L1_2.id = L2_2
  L2_2 = A0_2.model
  L1_2.object = L2_2
  L2_2 = A0_2.label
  L1_2.label = L2_2
  L2_2 = A0_2.coords
  L1_2.coords = L2_2
  L2_2 = A0_2.rotation
  L1_2.rotation = L2_2
  L2_2 = A0_2.price
  L1_2.price = L2_2
  L2_2 = A0_2.price
  if L2_2 then
    L2_2 = A0_2.price
    L3_2 = FurnitureConfig
    L3_2 = L3_2.SellPercentage
    if not L3_2 then
      L3_2 = 50
    end
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 / 100
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = 0
  ::lbl_33::
  L1_2.sellPrice = L2_2
  L2_2 = A0_2.bought
  L1_2.bought = L2_2
  return L1_2
end
L0_1.getData = L1_1
L0_1 = Furniture
function L1_1(A0_2)
  local L1_2
end
L0_1.remove = L1_1
