local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = Config
L0_1 = L0_1.EnableOffsetFinder
if not L0_1 then
  return
end
L0_1 = nil
L1_1 = nil
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetHashKey
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.upper
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%x"
  L5_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L1_2 < 0 then
    L3_2 = string
    L3_2 = L3_2.gsub
    L4_2 = L2_2
    L5_2 = string
    L5_2 = L5_2.rep
    L6_2 = "F"
    L7_2 = 8
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = ""
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = "~INPUT_"
  L4_2 = L2_2
  L5_2 = "~"
  L3_2 = L3_2 .. L4_2 .. L5_2
  return L3_2
end
GetInstructional = L2_1
L2_1 = RegisterCommand
L3_1 = "testshell"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A1_2[1]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = GetHashKey
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
  end
  if not L2_2 then
    L4_2 = Framework
    L4_2 = L4_2.Notify
    L5_2 = {}
    L6_2 = "No such shell \"%s\"."
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L2_2 or L8_2
    if not L2_2 then
      L8_2 = ""
    end
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.description = L6_2
    L5_2.title = "OffSet Finder"
    L5_2.type = "error"
    L5_2.duration = 5000
    return L4_2(L5_2)
  else
    L4_2 = IsModelInCdimage
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.Notify
      L5_2 = {}
      L6_2 = "The shell \"%s\" is not in cd image, did you start the shell?"
      L7_2 = L6_2
      L6_2 = L6_2.format
      L8_2 = L2_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2.description = L6_2
      L5_2.title = "OffSet Finder"
      L5_2.type = "error"
      L5_2.duration = 5000
      return L4_2(L5_2)
    end
  end
  L4_2 = DoesEntityExist
  L5_2 = L0_1
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = DeleteEntity
    L5_2 = L0_1
    L4_2(L5_2)
  else
    L4_2 = GetEntityCoords
    L5_2 = cache
    L5_2 = L5_2.ped
    L4_2 = L4_2(L5_2)
    L1_1 = L4_2
    L4_2 = BeginTextCommandDisplayHelp
    L5_2 = GetCurrentResourceName
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = EndTextCommandDisplayHelp
    L5_2 = 0
    L6_2 = true
    L7_2 = true
    L8_2 = 0
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = LoadModel
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.success
  if not L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.Notify
    L6_2 = {}
    L7_2 = L4_2.error
    L6_2.description = L7_2
    L6_2.title = "OffSet Finder"
    L6_2.type = "error"
    L6_2.duration = 5000
    L5_2(L6_2)
    return
  end
  L5_2 = CreateObject
  L6_2 = L3_2
  L7_2 = L1_1.x
  L8_2 = L1_1.y
  L9_2 = L1_1.z
  L9_2 = L9_2 + 50.0
  L10_2 = false
  L11_2 = true
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L0_1 = L5_2
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L0_1
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHeading
  L6_2 = L0_1
  L7_2 = 0.0
  L5_2(L6_2, L7_2)
  L5_2 = GetEntityCoords
  L6_2 = L0_1
  L5_2 = L5_2(L6_2)
  L6_2 = SetEntityCoordsNoOffset
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L11_2 = true
  L12_2 = true
  L13_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L5_1 = false
L2_1(L3_1, L4_1, L5_1)
L2_1 = lib
L2_1 = L2_1.addKeybind
L3_1 = {}
L3_1.name = "deleteshell"
L4_1 = locale
L5_1 = "keybind_delete_shell"
L4_1 = L4_1(L5_1)
L3_1.description = L4_1
L4_1 = Config
L4_1 = L4_1.Keybinds
L4_1 = L4_1.DeleteShell
L3_1.defaultKey = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = DeleteEntity
  L2_2 = L0_1
  L1_2(L2_2)
  L1_2 = nil
  L0_1 = L1_2
  L1_2 = SetEntityCoordsNoOffset
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = L1_1.x
  L4_2 = L1_1.y
  L5_2 = L1_1.z
  L6_2 = true
  L7_2 = true
  L8_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = nil
  L1_1 = L1_2
  L1_2 = ClearAllHelpMessages
  L1_2()
  L1_2 = Framework
  L1_2 = L1_2.Notify
  L2_2 = {}
  L2_2.description = "Deleted shell."
  L2_2.title = "OffSet Finder"
  L2_2.type = "success"
  L2_2.duration = 5000
  L1_2(L2_2)
end
L3_1.onPressed = L4_1
L2_1 = L2_1(L3_1)
L3_1 = lib
L3_1 = L3_1.addKeybind
L4_1 = {}
L4_1.name = "copyoffset"
L5_1 = locale
L6_1 = "keybind_copy_offset"
L5_1 = L5_1(L6_1)
L4_1.description = L5_1
L5_1 = Config
L5_1 = L5_1.Keybinds
L5_1 = L5_1.CopyOffset
L4_1.defaultKey = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = cache
  L2_2 = L2_2.ped
  L1_2 = L1_2(L2_2)
  L2_2 = vec3
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2 - L2_2
  L2_2 = GetEntityCoords
  L3_2 = L0_1
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2 - L2_2
  L4_2 = lib
  L4_2 = L4_2.setClipboard
  L5_2 = "doorOffset = { x = %f, y = %f, z = %f, h = %f, width = 2.0 }"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = GetEntityHeading
  L11_2 = cache
  L11_2 = L11_2.ped
  L10_2, L11_2 = L10_2(L11_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = Framework
  L4_2 = L4_2.Notify
  L5_2 = {}
  L5_2.description = "Copied offset to clipboard."
  L5_2.title = "OffSet Finder"
  L5_2.type = "success"
  L5_2.duration = 5000
  L4_2(L5_2)
end
L4_1.onPressed = L5_1
L3_1 = L3_1(L4_1)
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = AddTextEntry
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = [[
Press %s to delete the shell object.
Press %s to copy the offset.]]
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = GetInstructional
  L5_2 = "+deleteshell"
  L4_2 = L4_2(L5_2)
  L5_2 = GetInstructional
  L6_2 = "+copyoffset"
  L5_2, L6_2 = L5_2(L6_2)
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1(L5_1)
L4_1 = RegisterCommand
L5_1 = "getimage"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "nolag_properties:server:getCameraStatus"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = Framework
    L1_2 = L1_2.Notify
    L2_2 = {}
    L2_2.description = "There's an issue with the camera. Check your server console for more information"
    L2_2.type = "error"
    L2_2.duration = 10000
    L1_2(L2_2)
    return
  end
  L1_2 = CreateMobilePhone
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = CellCamActivate
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = ShowHelper
  L2_2 = {}
  L3_2 = {}
  L4_2 = locale
  L5_2 = "lmb"
  L4_2 = L4_2(L5_2)
  L3_2.key = L4_2
  L4_2 = locale
  L5_2 = "ui_take_photo"
  L4_2 = L4_2(L5_2)
  L3_2.action = L4_2
  L4_2 = {}
  L5_2 = locale
  L6_2 = "rmb"
  L5_2 = L5_2(L6_2)
  L4_2.key = L5_2
  L5_2 = locale
  L6_2 = "ui_cancel"
  L5_2 = L5_2(L6_2)
  L4_2.action = L5_2
  L5_2 = {}
  L5_2.key = "G"
  L6_2 = locale
  L7_2 = "helper_toggle_camera"
  L6_2 = L6_2(L7_2)
  L5_2.action = L6_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = false
    L1_3 = true
    while not L0_3 do
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 0
      L4_3 = 58
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        if L1_3 then
          L2_3 = DestroyMobilePhone
          L2_3()
          L2_3 = CellCamActivate
          L3_3 = false
          L4_3 = false
          L2_3(L3_3, L4_3)
        else
          L2_3 = CreateMobilePhone
          L3_3 = 0
          L2_3(L3_3)
          L2_3 = CellCamActivate
          L3_3 = true
          L4_3 = true
          L2_3(L3_3, L4_3)
        end
        L1_3 = not L1_3
      end
      L2_3 = IsDisabledControlJustPressed
      L3_3 = 1
      L4_3 = 24
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 and L1_3 then
        L2_3 = lib
        L2_3 = L2_3.callback
        L2_3 = L2_3.await
        L3_3 = "nolag_properties:server:takePhoto"
        L4_3 = 1000
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L3_3 = DestroyMobilePhone
          L3_3()
          L3_3 = CellCamActivate
          L4_3 = false
          L5_3 = false
          L3_3(L4_3, L5_3)
          L0_3 = true
          L3_3 = HideHelper
          L3_3()
          L3_3 = lib
          L3_3 = L3_3.setClipboard
          L4_3 = L2_3
          L3_3(L4_3)
          break
        end
        L3_3 = HideHelper
        L3_3()
        break
      else
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 1
        L4_3 = 25
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = DestroyMobilePhone
          L2_3()
          L2_3 = CellCamActivate
          L3_3 = false
          L4_3 = false
          L2_3(L3_3, L4_3)
          L2_3 = HideHelper
          L2_3()
          break
        end
      end
    end
  end
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
