-- Utilities to assist with property creation

local Creation = {}

--- Allow the player to place a security camera inside a property.
-- Spawns a camera prop that can be freely moved and rotated. Once the
-- placement is confirmed the camera's coordinates and rotation are
-- returned. If the player cancels the placement `false` is returned.
-- @param propertyZone vector4? optional zone to validate placement
-- @return table|false
local function placeCamera(propertyZone)
    Framework.Notify({
        title = locale('property'),
        description = locale('notify_set_property_cam'),
        type = 'info',
        duration = 8000,
    })

    local props = {
        id = 0,
        propertyId = propertyZone or 0,
        coords = GetEntityCoords(cache.ped),
        rotation = GetEntityRotation(cache.ped),
        model = 'prop_cctv_cam_04c',
        disableCliping = true,
    }

    local editor = Furniture.new(props)
    if not editor then return false end
    editor:edit()

    local result
    editor.onSave = function(obj)
        if propertyZone and not IsPointInside(propertyZone, vector3(obj.coords.x, obj.coords.y, obj.coords.z)) then
            Framework.Notify({
                title = 'Furniture Tool',
                description = locale('not_inside'),
                type = 'error',
            })
            obj:despawnObject()
            result = false
            return
        end

        result = {
            camObjectCoords = GetEntityCoords(obj.obj),
            camObjectRotation = GetEntityRotation(obj.obj),
            camCoords = GetOffsetFromEntityInWorldCoords(obj.obj, 0.0, -0.4, -0.25),
            camRotation = GetEntityRotation(obj.obj) + vector3(-20.0, 0.0, 180.0),
        }
        obj:despawnObject()
    end

    editor.onCancel = function(obj)
        obj:despawnObject()
        result = false
    end

    while result == nil do
        Wait(1)
    end

    return result
end

Creation.getCameraData = placeCamera
GetCamData = placeCamera

--- Prompt the player to choose an interior (IPL) from the list of
-- available shells. The player is teleported inside the chosen shell
-- and the IPL name along with the interior coordinates are returned.
-- @return string, vector3
local function chooseIpl()
    Wait(500)

    local options = {}
    for name, data in pairs(IPLsData) do
        options[#options + 1] = { value = name, label = data.label }
    end

    local input = lib.inputDialog(locale('select_ipl'), {
        { type = 'select', label = locale('interior'), options = options },
    })
    if not input then return end

    local ipl = input[1]
    local coords = IPLsData[ipl].insideCoords
    SetEntityCoords(cache.ped, coords.x, coords.y, coords.z, false, false, false, false)

    return ipl, coords
end

Creation.getIPL = chooseIpl
GetIPL = chooseIpl

return Creation

