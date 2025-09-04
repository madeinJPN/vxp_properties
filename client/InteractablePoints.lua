local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
L1_1 = lib
L1_1 = L1_1.addKeybind
L2_1 = {}
L2_1.name = "properties_interact"
L3_1 = locale
L4_1 = "keybind_properties_interact"
L3_1 = L3_1(L4_1)
L2_1.description = L3_1
L3_1 = Config
L3_1 = L3_1.Keybinds
L3_1 = L3_1.Interact
L2_1.defaultKey = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L0_1
    L1_2()
  end
end
L2_1.onPressed = L3_1
L1_1 = L1_1(L2_1)
PrimaryKeybind = L1_1
L1_1 = {}
L1_1.isActive = false
L1_1.handler = nil
L1_1.data = nil
L1_1.remove = nil
InteractablePoint = L1_1
L1_1 = InteractablePoint
L2_1 = InteractablePoint
L1_1.__index = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = InteractablePoint
  L2_2 = L2_2(L3_2, L4_2)
  A0_2 = L2_2
  A0_2.data = A1_2
  L2_2 = A0_2.data
  L2_2 = L2_2.options
  L2_2 = L2_2.id
  A0_2.id = L2_2
  L2_2 = A0_2.data
  L3_2 = A0_2.data
  L3_2 = L3_2.options
  L3_2 = L3_2.uniqueId
  L2_2.id = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.createZone
  L4_2 = true
  L2_2(L3_2, L4_2)
  return A0_2
end
L1_1.new = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.data
  L3_2 = L2_2.coords
  L4_2 = L2_2.options
  L5_2 = L2_2.property
  L6_2 = L2_2.object
  if A1_2 then
    L7_2 = L4_2.onCreate
    if L7_2 then
      L7_2 = L4_2.onCreate
      L8_2 = L5_2
      L9_2 = L3_2
      L10_2 = A0_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2.createZoneByType
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = L5_2
  L13_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A0_2.handler = L7_2
end
L1_1.createZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A1_2.canInteract
    if L0_3 then
      L0_3 = A1_2.canInteract
      L1_3 = A2_2
      L0_3, L1_3 = L0_3(L1_3)
      if not L0_3 then
        L2_3 = Framework
        L2_3 = L2_3.Notify
        L3_3 = {}
        L3_3.description = L1_3
        L3_3.type = "error"
        L2_3(L3_3)
        L2_3 = false
        return L2_3
      end
    end
    L0_3 = A1_2.requireKeys
    if L0_3 then
      L0_3 = A2_2
      L1_3 = L0_3
      L0_3 = L0_3.hasKey
      L2_3 = A3_2.options
      L2_3 = L2_3.lock
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = A1_2.breakable
        if L0_3 then
          L0_3 = Config
          L0_3 = L0_3.EnableLockpick
          if L0_3 then
            L0_3 = Config
            L0_3 = L0_3.LockPick
            L1_3 = 0.5
            L2_3 = 2
            L3_3 = 5
            L0_3 = L0_3(L1_3, L2_3, L3_3)
            if not L0_3 then
              L1_3 = Framework
              L1_3 = L1_3.Notify
              L2_3 = {}
              L3_3 = locale
              L4_3 = "lockpick_failed"
              L3_3 = L3_3(L4_3)
              L2_3.description = L3_3
              L2_3.type = "error"
              L1_3(L2_3)
              L1_3 = false
              return L1_3
            end
          else
            L0_3 = Config
            L0_3 = L0_3.PoliceRaid
            L0_3 = L0_3.Enabled
            if L0_3 then
              L0_3 = Framework
              L0_3 = L0_3.isPlayerAuthorizedToRaid
              L0_3 = L0_3()
              if L0_3 then
                L0_3 = Config
                L0_3 = L0_3.LockPick
                L1_3 = 0.5
                L2_3 = 2
                L3_3 = 5
                L0_3 = L0_3(L1_3, L2_3, L3_3)
                if not L0_3 then
                  L1_3 = Framework
                  L1_3 = L1_3.Notify
                  L2_3 = {}
                  L3_3 = locale
                  L4_3 = "failed_to_raid_property"
                  L3_3 = L3_3(L4_3)
                  L2_3.description = L3_3
                  L2_3.type = "error"
                  L1_3(L2_3)
                  L1_3 = false
                  return L1_3
                end
            end
            else
              L0_3 = Framework
              L0_3 = L0_3.Notify
              L1_3 = {}
              L2_3 = locale
              L3_3 = "no_keys"
              L2_3 = L2_3(L3_3)
              L1_3.description = L2_3
              L1_3.type = "error"
              L0_3(L1_3)
              L0_3 = false
              return L0_3
            end
          end
        else
          L0_3 = Framework
          L0_3 = L0_3.Notify
          L1_3 = {}
          L2_3 = locale
          L3_3 = "no_keys"
          L2_3 = L2_3(L3_3)
          L1_3.description = L2_3
          L1_3.type = "error"
          L0_3(L1_3)
          L0_3 = false
          return L0_3
        end
      end
    end
    L0_3 = A1_2.onSelect
    L1_3 = A2_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  return L4_2
end
L1_1.createOnSelectFunction = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = lib
  L5_2 = L5_2.zones
  L5_2 = L5_2.sphere
  L6_2 = {}
  L6_2.coords = A2_2
  L7_2 = A3_2.radius
  if not L7_2 then
    L7_2 = 1.0
  end
  L6_2.radius = L7_2
  L7_2 = Config
  L7_2 = L7_2.Debug
  L6_2.debug = L7_2
  L7_2 = Config
  L7_2 = L7_2.ColorTheme
  L7_2 = L7_2.laser
  L6_2.debugColour = L7_2
  L6_2.zone = true
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A3_2.hideTextUI
    if not L0_3 then
      L0_3 = A3_2.label
      if L0_3 then
        L0_3 = Framework
        L0_3 = L0_3.showTextUI
        L1_3 = A3_2.label
        L2_3 = {}
        L3_3 = A3_2.icon
        L2_3.icon = L3_3
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = A3_2.onSelect
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.createOnSelectFunction
      L2_3 = A3_2
      L3_3 = A4_2
      L4_3 = A1_2
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_1 = L0_3
    end
    L0_3 = A3_2.onEnter
    if L0_3 then
      L0_3 = A3_2.onEnter
      L1_3 = A4_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    A0_2.isActive = true
  end
  L6_2.onEnter = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A3_2.hideTextUI
    if not L0_3 then
      L0_3 = A3_2.label
      if L0_3 then
        L0_3 = Framework
        L0_3 = L0_3.hideTextUI
        L0_3()
      end
    end
    L0_3 = A3_2.onExit
    if L0_3 then
      L0_3 = A3_2.onExit
      L1_3 = A4_2
      L2_3 = A2_2
      L3_3 = A1_2
      L0_3(L1_3, L2_3, L3_3)
    end
    A0_2.isActive = false
    L0_3 = nil
    L0_1 = L0_3
  end
  L6_2.onExit = L7_2
  L7_2 = A3_2.inside
  if L7_2 then
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A3_2.inside
      L1_3 = A4_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    if L7_2 then
      goto lbl_31
    end
  end
  L7_2 = nil
  ::lbl_31::
  L6_2.inside = L7_2
  return L5_2(L6_2)
end
L1_1.createDefaultZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = A3_2.zone
  if not L6_2 then
    L6_2 = A3_2.inside
    if not L6_2 then
      L6_2 = A3_2.onExit
      if not L6_2 then
        L6_2 = A3_2.onEnter
        if not L6_2 then
          goto lbl_20
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.createDefaultZone
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  do return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_20::
  L6_2 = A3_2.useObject
  if L6_2 and A5_2 then
    L6_2 = exports
    L6_2 = L6_2.ox_target
    L7_2 = L6_2
    L6_2 = L6_2.addLocalEntity
    L8_2 = A5_2
    L9_2 = {}
    L10_2 = {}
    L11_2 = A3_2.icon
    L10_2.icon = L11_2
    L11_2 = A3_2.label
    L10_2.label = L11_2
    L11_2 = A3_2.distance
    if not L11_2 then
      L11_2 = Config
      L11_2 = L11_2.InteractDistance
    end
    L10_2.distance = L11_2
    L12_2 = A0_2
    L11_2 = A0_2.createOnSelectFunction
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A1_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L10_2.onSelect = L11_2
    L9_2[1] = L10_2
    L6_2(L7_2, L8_2, L9_2)
    return A5_2
  end
  L6_2 = exports
  L6_2 = L6_2.ox_target
  L7_2 = L6_2
  L6_2 = L6_2.addSphereZone
  L8_2 = {}
  L8_2.coords = A2_2
  L9_2 = A3_2.radius
  if not L9_2 then
    L9_2 = Config
    L9_2 = L9_2.InteractRadius
  end
  L8_2.radius = L9_2
  L9_2 = Config
  L9_2 = L9_2.Debug
  L8_2.debug = L9_2
  L9_2 = Config
  L9_2 = L9_2.ColorTheme
  L9_2 = L9_2.laser
  L8_2.debugColour = L9_2
  L9_2 = {}
  L10_2 = {}
  L11_2 = A3_2.icon
  L10_2.icon = L11_2
  L11_2 = A3_2.label
  L10_2.label = L11_2
  L11_2 = A3_2.distance
  if not L11_2 then
    L11_2 = Config
    L11_2 = L11_2.InteractDistance
  end
  L10_2.distance = L11_2
  L12_2 = A0_2
  L11_2 = A0_2.createOnSelectFunction
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A1_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L10_2.onSelect = L11_2
  L9_2[1] = L10_2
  L8_2.options = L9_2
  return L6_2(L7_2, L8_2)
end
L1_1.createOxTargetZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = A3_2.zone
  if not L6_2 then
    L6_2 = A3_2.inside
    if not L6_2 then
      L6_2 = A3_2.onExit
      if not L6_2 then
        L6_2 = A3_2.onEnter
        if not L6_2 then
          goto lbl_20
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.createDefaultZone
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  do return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_20::
  L6_2 = A3_2.useObject
  if L6_2 and A5_2 then
    L6_2 = exports
    L6_2 = L6_2.interact
    L7_2 = L6_2
    L6_2 = L6_2.AddLocalEntityInteraction
    L8_2 = {}
    L8_2.entity = A5_2
    L9_2 = A3_2.radius
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.InteractRadius
    end
    L8_2.distance = L9_2
    L9_2 = A3_2.distance
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.InteractDistance
    end
    L8_2.interactDst = L9_2
    L9_2 = {}
    L10_2 = {}
    L11_2 = A3_2.label
    L10_2.label = L11_2
    L12_2 = A0_2
    L11_2 = A0_2.createOnSelectFunction
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A1_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L10_2.action = L11_2
    L9_2[1] = L10_2
    L8_2.options = L9_2
    L6_2(L7_2, L8_2)
    return A5_2
  end
  L6_2 = {}
  L6_2.coords = A2_2
  L7_2 = A3_2.radius
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.InteractRadius
  end
  L6_2.radius = L7_2
  L7_2 = exports
  L7_2 = L7_2.interact
  L8_2 = L7_2
  L7_2 = L7_2.AddInteraction
  L9_2 = {}
  L10_2 = vector3
  L11_2 = A2_2.x
  L12_2 = A2_2.y
  L13_2 = A2_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.coords = L10_2
  L10_2 = A3_2.radius
  if not L10_2 then
    L10_2 = Config
    L10_2 = L10_2.InteractDistance
  end
  L9_2.distance = L10_2
  L10_2 = A3_2.distance
  if not L10_2 then
    L10_2 = Config
    L10_2 = L10_2.InteractDistance
  end
  L9_2.interactDst = L10_2
  L10_2 = {}
  L11_2 = {}
  L12_2 = A3_2.label
  L11_2.label = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.createOnSelectFunction
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A1_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L11_2.action = L12_2
  L10_2[1] = L11_2
  L9_2.options = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.id = L7_2
  return L6_2
end
L1_1.createInteractZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = A3_2.zone
  if not L6_2 then
    L6_2 = A3_2.inside
    if not L6_2 then
      L6_2 = A3_2.onExit
      if not L6_2 then
        L6_2 = A3_2.onEnter
        if not L6_2 then
          goto lbl_20
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.createDefaultZone
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  do return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_20::
  L6_2 = A3_2.useObject
  if L6_2 and A5_2 then
    L6_2 = exports
    L6_2 = L6_2.sleepless_interact
    L7_2 = L6_2
    L6_2 = L6_2.addLocalEntity
    L8_2 = {}
    L8_2.entity = A5_2
    L9_2 = A3_2.radius
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.InteractRadius
    end
    L8_2.renderDistance = L9_2
    L9_2 = A3_2.distance
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.InteractDistance
    end
    L8_2.activeDistance = L9_2
    L8_2.cooldown = 1500
    L9_2 = {}
    L10_2 = {}
    L11_2 = A3_2.label
    L10_2.label = L11_2
    L10_2.icon = "hand"
    L12_2 = A0_2
    L11_2 = A0_2.createOnSelectFunction
    L13_2 = A3_2
    L14_2 = A4_2
    L15_2 = A1_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L10_2.onSelect = L11_2
    L9_2[1] = L10_2
    L8_2.options = L9_2
    L6_2(L7_2, L8_2)
    return A5_2
  end
  L6_2 = {}
  L6_2.coords = A2_2
  L7_2 = A3_2.radius
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.InteractRadius
  end
  L6_2.radius = L7_2
  L7_2 = exports
  L7_2 = L7_2.sleepless_interact
  L8_2 = L7_2
  L7_2 = L7_2.addCoords
  L9_2 = {}
  L10_2 = vector3
  L11_2 = A2_2.x
  L12_2 = A2_2.y
  L13_2 = A2_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.coords = L10_2
  L10_2 = A3_2.radius
  if not L10_2 then
    L10_2 = Config
    L10_2 = L10_2.InteractRadius
  end
  L9_2.renderDistance = L10_2
  L10_2 = A3_2.distance
  if not L10_2 then
    L10_2 = Config
    L10_2 = L10_2.InteractDistance
  end
  L9_2.activeDistance = L10_2
  L9_2.cooldown = 1500
  L10_2 = {}
  L11_2 = {}
  L12_2 = A3_2.label
  L11_2.label = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.createOnSelectFunction
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A1_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L11_2.onSelect = L12_2
  L10_2[1] = L11_2
  L9_2.options = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.id = L7_2
  return L6_2
end
L1_1.createSleeplessInteractZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = A3_2.zone
  if not L6_2 then
    L6_2 = A3_2.inside
    if not L6_2 then
      L6_2 = A3_2.onExit
      if not L6_2 then
        L6_2 = A3_2.onEnter
        if not L6_2 then
          goto lbl_20
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.createDefaultZone
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  do return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_20::
  L6_2 = A3_2.radius
  if not L6_2 then
    L6_2 = Config
    L6_2 = L6_2.InteractRadius
  end
  L7_2 = A3_2.distance
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.InteractDistance
  end
  L8_2 = A3_2.useObject
  if L8_2 and A5_2 then
    L8_2 = exports
    L8_2 = L8_2.sleepless_interact
    L9_2 = L8_2
    L8_2 = L8_2.addLocalEntity
    L10_2 = A5_2
    L11_2 = {}
    L12_2 = A3_2.label
    L11_2.label = L12_2
    L11_2.distance = L7_2
    L12_2 = A3_2.icon
    L11_2.icon = L12_2
    L13_2 = A0_2
    L12_2 = A0_2.createOnSelectFunction
    L14_2 = A3_2
    L15_2 = A4_2
    L16_2 = A1_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L11_2.onSelect = L12_2
    L8_2(L9_2, L10_2, L11_2)
    return A5_2
  end
  L8_2 = {}
  L8_2.coords = A2_2
  L8_2.radius = L6_2
  L9_2 = exports
  L9_2 = L9_2.sleepless_interact
  L10_2 = L9_2
  L9_2 = L9_2.addCoords
  L11_2 = A2_2.xyz
  L12_2 = {}
  L13_2 = A3_2.label
  L12_2.label = L13_2
  L12_2.distance = L7_2
  L13_2 = A3_2.icon
  L12_2.icon = L13_2
  L14_2 = A0_2
  L13_2 = A0_2.createOnSelectFunction
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A1_2
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.onSelect = L13_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.id = L9_2
  return L8_2
end
L1_1.createSleeplessInteractV2Zone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A3_2.zone
  if not L6_2 then
    L6_2 = A3_2.inside
    if not L6_2 then
      L6_2 = A3_2.onExit
      if not L6_2 then
        L6_2 = A3_2.onEnter
        if not L6_2 then
          goto lbl_20
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.createDefaultZone
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  do return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2) end
  ::lbl_20::
  L6_2 = {}
  if A5_2 then
    L7_2 = GetEntityCoords
    L8_2 = A5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_30
    end
  end
  L7_2 = A2_2
  ::lbl_30::
  L6_2.coords = L7_2
  L7_2 = PrimaryKeybind
  L8_2 = L7_2
  L7_2 = L7_2.getCurrentKey
  L7_2 = L7_2(L8_2)
  L6_2.key = L7_2
  L6_2.shape = "hex"
  L7_2 = A3_2.radius
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.InteractRadius
  end
  L6_2.distance = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createOnSelectFunction
    L2_3 = A3_2
    L3_3 = A4_2
    L4_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_1 = L0_3
  end
  L6_2.onEnter = L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = nil
    L0_1 = L0_3
  end
  L6_2.onExit = L7_2
  L7_2 = A3_2.useObject
  if L7_2 and A5_2 then
    L6_2.entity = A5_2
    L7_2 = exports
    L7_2 = L7_2.bl_sprites
    L8_2 = L7_2
    L7_2 = L7_2.spriteOnEntity
    L9_2 = L6_2
    return L7_2(L8_2, L9_2)
  end
  L7_2 = exports
  L7_2 = L7_2.bl_sprites
  L8_2 = L7_2
  L7_2 = L7_2.sprite
  L9_2 = L6_2
  return L7_2(L8_2, L9_2)
end
L1_1.createBlSpritesZone = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = {}
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createOxTargetZone
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L6_3 = A5_2
    return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.ox_target = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createInteractZone
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L6_3 = A5_2
    return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.interact = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createSleeplessInteractZone
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L6_3 = A5_2
    return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.sleepless_interact = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createSleeplessInteractV2Zone
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L6_3 = A5_2
    return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.sleepless_interactv2 = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.createBlSpritesZone
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L5_3 = A4_2
    L6_3 = A5_2
    return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.bl_sprites = L7_2
  L7_2 = Config
  L7_2 = L7_2.InteractOption
  L7_2 = L6_2[L7_2]
  if L7_2 then
    L8_2 = L7_2
    return L8_2()
  end
  L9_2 = A0_2
  L8_2 = A0_2.createDefaultZone
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  return L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L1_1.createZoneByType = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.data
  L2_2 = L2_2.options
  L2_2.label = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.remove
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.createZone
  L2_2(L3_2)
end
L1_1.setLabel = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.data
  L2_2 = L2_2.options
  L2_2.radius = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.remove
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.createZone
  L2_2(L3_2)
end
L1_1.setRadius = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.options
  L2_2.requireKeys = A1_2
end
L1_1.setRequireKeys = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.data
  L2_2 = L2_2.options
  L2_2 = L2_2.useObject
  if L2_2 then
    return
  end
  L2_2 = A0_2.data
  L2_2.coords = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.remove
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.createZone
  L2_2(L3_2)
end
L1_1.setCoords = L2_1
L1_1 = InteractablePoint
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.handler
  L2_2 = A0_2.data
  L2_2 = L2_2.coords
  L3_2 = A0_2.data
  L3_2 = L3_2.options
  L4_2 = A0_2.data
  L4_2 = L4_2.property
  L5_2 = A0_2.data
  L5_2 = L5_2.object
  L6_2 = type
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  if "number" ~= L6_2 then
    L6_2 = A0_2.isActive
    if L6_2 then
      L6_2 = nil
      L0_1 = L6_2
      L6_2 = L3_2.onExit
      if L6_2 then
        L6_2 = L3_2.onExit
        L7_2 = L4_2
        L8_2 = L2_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L6_2 = L3_2.hideTextUI
  if not L6_2 then
    L6_2 = L3_2.label
    if L6_2 then
      L6_2 = Framework
      L6_2 = L6_2.hideTextUI
      L6_2()
    end
  end
  L6_2 = L3_2.onRemove
  if L6_2 then
    L6_2 = L3_2.onRemove
    L7_2 = L4_2
    L8_2 = L2_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = Config
  L6_2 = L6_2.InteractOption
  if "ox_target" == L6_2 then
    L6_2 = L3_2.zone
    if not L6_2 then
      L6_2 = L3_2.useObject
      if L6_2 and L5_2 then
        L6_2 = exports
        L6_2 = L6_2.ox_target
        L7_2 = L6_2
        L6_2 = L6_2.removeLocalEntity
        L8_2 = L1_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = exports
        L6_2 = L6_2.ox_target
        L7_2 = L6_2
        L6_2 = L6_2.removeZone
        L8_2 = L1_2
        L6_2(L7_2, L8_2)
      end
  end
  else
    L6_2 = Config
    L6_2 = L6_2.InteractOption
    if "interact" == L6_2 then
      L6_2 = L3_2.zone
      if not L6_2 then
        L6_2 = L3_2.useObject
        if L6_2 and L5_2 then
          L6_2 = exports
          L6_2 = L6_2.interact
          L7_2 = L6_2
          L6_2 = L6_2.RemoveLocalEntityInteraction
          L8_2 = L1_2
          L6_2(L7_2, L8_2)
        else
          L6_2 = exports
          L6_2 = L6_2.interact
          L7_2 = L6_2
          L6_2 = L6_2.RemoveInteraction
          L8_2 = L1_2.id
          L6_2(L7_2, L8_2)
        end
    end
    else
      L6_2 = Config
      L6_2 = L6_2.InteractOption
      if "sleepless_interact" == L6_2 then
        L6_2 = L3_2.zone
        if not L6_2 then
          L6_2 = L3_2.useObject
          if L6_2 and L5_2 then
            L6_2 = exports
            L6_2 = L6_2.sleepless_interact
            L7_2 = L6_2
            L6_2 = L6_2.removeLocalEntity
            L8_2 = L1_2
            L6_2(L7_2, L8_2)
          else
            L6_2 = exports
            L6_2 = L6_2.sleepless_interact
            L7_2 = L6_2
            L6_2 = L6_2.removeById
            L8_2 = L1_2.id
            L9_2 = false
            L6_2(L7_2, L8_2, L9_2)
          end
      end
      else
        L6_2 = Config
        L6_2 = L6_2.InteractOption
        if "sleepless_interactv2" == L6_2 then
          L6_2 = L3_2.zone
          if not L6_2 then
            L6_2 = L3_2.useObject
            if L6_2 and L5_2 then
              L6_2 = exports
              L6_2 = L6_2.sleepless_interact
              L7_2 = L6_2
              L6_2 = L6_2.removeLocalEntity
              L8_2 = L1_2
              L6_2(L7_2, L8_2)
            else
              L6_2 = exports
              L6_2 = L6_2.sleepless_interact
              L7_2 = L6_2
              L6_2 = L6_2.removeCoords
              L8_2 = L1_2.id
              L9_2 = false
              L6_2(L7_2, L8_2, L9_2)
            end
        end
        else
          L6_2 = Config
          L6_2 = L6_2.InteractOption
          if "bl_sprites" == L6_2 then
            L6_2 = L3_2.zone
            if not L6_2 then
              L7_2 = L1_2
              L6_2 = L1_2.removeSprite
              L6_2(L7_2)
          end
          else
            L7_2 = L1_2
            L6_2 = L1_2.remove
            L6_2(L7_2)
          end
        end
      end
    end
  end
end
L1_1.remove = L2_1
