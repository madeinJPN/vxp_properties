if not Config.EnableOffsetFinder then
    return
end

local shellEntity
local originalCoords

local function getInstructional(control)
    local hash = GetHashKey(control)
    local hex = string.upper(string.format("%x", hash))
    if hash < 0 then
        hex = string.gsub(hex, string.rep("F", 8), "")
    end
    return ("~INPUT_%s~"):format(hex)
end

GetInstructional = getInstructional

RegisterCommand("testshell", function(_, args)
    local modelName = args[1]
    if not modelName then
        Framework.Notify({
            description = ("No such shell \"%s\"."):format(modelName or ""),
            title = "OffSet Finder",
            type = "error",
            duration = 5000
        })
        return
    end

    local modelHash = GetHashKey(modelName)
    if not IsModelInCdimage(modelHash) then
        Framework.Notify({
            description = ("The shell \"%s\" is not in cd image, did you start the shell?"):format(modelName),
            title = "OffSet Finder",
            type = "error",
            duration = 5000
        })
        return
    end

    if DoesEntityExist(shellEntity) then
        DeleteEntity(shellEntity)
    else
        originalCoords = GetEntityCoords(cache.ped)
        BeginTextCommandDisplayHelp(GetCurrentResourceName())
        EndTextCommandDisplayHelp(0, true, true, 0)
    end

    local model = LoadModel(modelHash)
    if not model.success then
        Framework.Notify({
            description = model.error,
            title = "OffSet Finder",
            type = "error",
            duration = 5000
        })
        return
    end

    shellEntity = CreateObject(modelHash, originalCoords.x, originalCoords.y, originalCoords.z + 50.0, false, true, false)
    SetModelAsNoLongerNeeded(modelHash)
    FreezeEntityPosition(shellEntity, true)
    SetEntityHeading(shellEntity, 0.0)

    local shellCoords = GetEntityCoords(shellEntity)
    SetEntityCoordsNoOffset(cache.ped, shellCoords.x, shellCoords.y, shellCoords.z, true, true, true)
end, false)

lib.addKeybind({
    name = "deleteshell",
    description = locale("keybind_delete_shell"),
    defaultKey = Config.Keybinds.DeleteShell,
    onPressed = function()
        if not shellEntity then return end

        DeleteEntity(shellEntity)
        shellEntity = nil

        SetEntityCoordsNoOffset(cache.ped, originalCoords.x, originalCoords.y, originalCoords.z, true, true, true)
        originalCoords = nil
        ClearAllHelpMessages()

        Framework.Notify({
            description = "Deleted shell.",
            title = "OffSet Finder",
            type = "success",
            duration = 5000
        })
    end
})

lib.addKeybind({
    name = "copyoffset",
    description = locale("keybind_copy_offset"),
    defaultKey = Config.Keybinds.CopyOffset,
    onPressed = function()
        if not shellEntity then return end

        local playerPos = GetEntityCoords(cache.ped) - vec3(0.0, 0.0, 0.0)
        local shellPos = GetEntityCoords(shellEntity)
        local offset = playerPos - shellPos

        lib.setClipboard(("doorOffset = { x = %f, y = %f, z = %f, h = %f, width = 2.0 }"):format(
            offset.x,
            offset.y,
            offset.z,
            GetEntityHeading(cache.ped)
        ))

        Framework.Notify({
            description = "Copied offset to clipboard.",
            title = "OffSet Finder",
            type = "success",
            duration = 5000
        })
    end
})

CreateThread(function()
    local resourceName = GetCurrentResourceName()
    local deleteKey = getInstructional("+deleteshell")
    local copyKey = getInstructional("+copyoffset")
    AddTextEntry(
        resourceName,
        ("Press %s to delete the shell object.\nPress %s to copy the offset."):format(deleteKey, copyKey)
    )
end)

RegisterCommand("getimage", function()
    local ok = lib.callback.await("nolag_properties:server:getCameraStatus", false)
    if not ok then
        Framework.Notify({
            description = "There's an issue with the camera. Check your server console for more information",
            type = "error",
            duration = 10000
        })
        return
    end

    CreateMobilePhone(0)
    CellCamActivate(true, true)
    ShowHelper({
        { key = locale("lmb"), action = locale("ui_take_photo") },
        { key = locale("rmb"), action = locale("ui_cancel") },
        { key = "G", action = locale("helper_toggle_camera") }
    })

    CreateThread(function()
        local finished = false
        local cameraOn = true

        while not finished do
            Wait(0)

            if IsDisabledControlJustPressed(0, 58) then
                if cameraOn then
                    DestroyMobilePhone()
                    CellCamActivate(false, false)
                else
                    CreateMobilePhone(0)
                    CellCamActivate(true, true)
                end
                cameraOn = not cameraOn
            end

            if IsDisabledControlJustPressed(1, 24) and cameraOn then
                local imageUrl = lib.callback.await("nolag_properties:server:takePhoto", 1000)
                if imageUrl then
                    DestroyMobilePhone()
                    CellCamActivate(false, false)
                    finished = true
                    HideHelper()
                    lib.setClipboard(imageUrl)
                    break
                end
                HideHelper()
                break
            elseif IsDisabledControlJustPressed(1, 25) then
                DestroyMobilePhone()
                CellCamActivate(false, false)
                HideHelper()
                break
            end
        end
    end)
end, false)

