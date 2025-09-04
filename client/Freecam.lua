--[[
    Free camera utilities
    Rewritten for readability from the original obfuscated version.

    Allows toggling a noclip style camera with configurable movement speed
    and field of view. Movement is limited to a radius around the start
    position when `Config.limitFreeCam` is enabled.

    Controls
      * Shift  - move faster
      * Alt    - move slower
      * WASD   - move around
      * Q/E    - move vertically
      * Mouse  - look around
]]

-- control identifiers
local FAST_MOVE_KEY = 21      -- shift
local SLOW_MOVE_KEY = 19      -- alt
local LOOK_X = 1              -- mouse left/right
local LOOK_Y = 2              -- mouse up/down
local ASCEND_KEY = 44         -- Q
local DESCEND_KEY = 38        -- E
local MOVE_FORWARD_AXIS = 31  -- W/S
local MOVE_SIDE_AXIS = 30     -- A/D

-- camera state
local camHandle
local isFrozen = false
local startPosition
local camPosition
local camRotation
local camFov
local rightVec
local forwardVec
local upVec
local notifyCooldown = 0

-- default configuration
local settings = {
    fov = 55.0,
    mouseSensitivityX = 5.0,
    mouseSensitivityY = 5.0,
    normalMoveMultiplier = 0.4,
    fastMoveMultiplier = 1.0,
    slowMoveMultiplier = 0.1,
    enableEasing = true,
    easingDuration = 1000
}

--- Returns the current camera handle
function GetFreecam()
    return camHandle
end

--- Checks if the camera is frozen in place
function IsFreecamFrozen()
    return isFrozen
end

--- Freezes or unfreezes the camera
---@param state boolean
function SetFreecamFrozen(state)
    isFrozen = state == true
end

--- Returns the current camera position
function GetFreecamPosition()
    return camPosition
end

--- Internal helper used to clamp notifications when the freecam is outside the limit
local function notifyOutOfRange()
    if notifyCooldown >= GetGameTimer() then return end
    notifyCooldown = GetGameTimer() + 10000

    Framework.Notify({
        description = locale("create_property_mlo_outside_limit"),
        title = locale("property"),
        type = "error",
        duration = 5000
    })
end

--- Sets the camera position, optionally enforcing the configured radius limit
function SetFreecamPosition(x, y, z)
    local coords = vector3(x, y, z)
    local interior = GetInteriorAtCoords(coords.x, coords.y, coords.z)

    if Config.limitFreeCam then
        local distance = #(startPosition - coords)
        if distance > Config.limitFreeCamDistance then
            notifyOutOfRange()
            return
        end
    end

    LoadInterior(interior)
    SetFocusArea(coords.x, coords.y, coords.z)
    LockMinimapPosition(x, y)
    SetCamCoord(camHandle, coords.x, coords.y, coords.z)
    camPosition = coords
end

--- Returns the camera rotation (pitch, roll, yaw)
function GetFreecamRotation()
    return camRotation
end

--- Sets the camera rotation
function SetFreecamRotation(pitch, roll, yaw)
    pitch = Clamp(pitch, -90.0, 90.0)
    roll = roll % 360
    yaw = yaw % 360

    local rotation = vector3(pitch, roll, yaw)
    local right, forward, up = EulerToMatrix(pitch, roll, yaw)

    LockMinimapAngle(math.floor(yaw))
    SetCamRot(camHandle, rotation.x, rotation.y, rotation.z)

    camRotation = rotation
    rightVec, forwardVec, upVec = right, forward, up
end

--- Rotates the camera to point at an entity
function SetFreecamPointAtEntity(entity)
    local temp = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
    SetCamCoord(temp, camPosition.x, camPosition.y, camPosition.z)
    PointCamAtEntity(temp, entity, 0.0, 0.0, 0.0, true)
    local rot = GetCamRot(temp, 2)
    DestroyCam(temp)

    SetFreecamRotation(rot.x, rot.y, rot.z)
end

--- Sets the rotation directly without clamping or minimap updates
function SetFreecamRotationRaw(pitch, roll, yaw)
    local rotation = vector3(pitch, roll, yaw)
    local right, forward, up = EulerToMatrix(pitch, roll, yaw)

    SetCamRot(camHandle, rotation.x, rotation.y, rotation.z)

    camRotation = rotation
    rightVec, forwardVec, upVec = right, forward, up
end

--- Returns the field of view
function GetFreecamFov()
    return camFov
end

--- Sets the field of view
function SetFreecamFov(fov)
    fov = Clamp(fov, 0.0, 90.0)
    SetCamFov(camHandle, fov)
    camFov = fov
end

--- Returns right, forward and up vectors along with position
function GetFreecamMatrix()
    return rightVec, forwardVec, upVec, camPosition
end

--- Returns a point in front of the camera at the given distance
function GetFreecamTarget(distance)
    return camPosition + forwardVec * distance
end

--- Returns whether the freecam is currently active
function IsFreecamEnabled()
    return camHandle and IsCamActive(camHandle)
end

-- Calculates the current movement multiplier based on modifier keys
local function getMoveMultiplier()
    if IsDisabledControlPressed(0, FAST_MOVE_KEY) then
        return settings.fastMoveMultiplier
    elseif IsDisabledControlPressed(0, SLOW_MOVE_KEY) then
        return settings.slowMoveMultiplier
    end

    return settings.normalMoveMultiplier
end

-- Handles camera updates every frame
local function updateFreecam()
    if not IsFreecamEnabled() or IsPauseMenuActive() then return end
    if IsFreecamFrozen() then return end

    local right, forward = GetFreecamMatrix()
    local position = GetFreecamPosition()
    local rotation = GetFreecamRotation()

    local delta = GetFrameTime() * 15.0
    local moveMultiplier = getMoveMultiplier() * delta

    local lookX = GetDisabledControlNormal(0, LOOK_X)
    local lookY = GetDisabledControlNormal(0, LOOK_Y)
    local moveForward = GetDisabledControlNormal(0, MOVE_FORWARD_AXIS)
    local moveSide = GetDisabledControlNormal(0, MOVE_SIDE_AXIS)
    local moveZ = GetDisabledControlNormalBetween(0, ASCEND_KEY, DESCEND_KEY)

    local newRot = vector3(
        rotation.x - lookY * settings.mouseSensitivityY,
        rotation.y,
        rotation.z - lookX * settings.mouseSensitivityX
    )

    local newPos = position
    newPos = newPos + forward * moveForward * moveMultiplier
    newPos = newPos + right * moveSide * moveMultiplier
    newPos = newPos + vector3(0, 0, 1) * moveZ * moveMultiplier

    SetFreecamPosition(newPos.x, newPos.y, newPos.z)
    SetFreecamRotation(newRot.x, newRot.y, newRot.z)
end

--- Enables or disables the free camera
---@param enable boolean
function SetFreecamEnabled(enable)
    if enable == IsFreecamEnabled() then return end

    if enable then
        local pos = GetGameplayCamCoord()
        local rot = GetGameplayCamRot()

        camHandle = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        startPosition = pos

        SetFreecamFov(settings.fov)
        SetFreecamPosition(pos.x, pos.y, pos.z)
        SetFreecamRotation(rot.x, rot.y, rot.z)

        CreateThread(function()
            while IsFreecamEnabled() do
                Wait(0)
                if LocalPlayer.state.isDead then
                    SetNuiFocus(false, false)
                    ExitFurniture()
                    return
                end

                DisableAllControlActions(0)
                EnableControlAction(0, 249, true) -- push to talk
                updateFreecam()
            end
        end)
    else
        DestroyCam(camHandle)
        camHandle = nil
        ClearFocus()
        UnlockMinimapPosition()
        UnlockMinimapAngle()
    end

    RenderScriptCams(enable, settings.enableEasing, settings.easingDuration)
end

-- Utility functions -------------------------------------------------------

function Clamp(value, min, max)
    return math.min(math.max(value, min), max)
end

function GetDisabledControlNormalBetween(group, controlA, controlB)
    local a = GetDisabledControlNormal(group, controlA)
    local b = GetDisabledControlNormal(group, controlB)
    return a - b
end

function EulerToMatrix(pitch, roll, yaw)
    local radX, radY, radZ = math.rad(pitch), math.rad(roll), math.rad(yaw)

    local sinX, sinY, sinZ = math.sin(radX), math.sin(radY), math.sin(radZ)
    local cosX, cosY, cosZ = math.cos(radX), math.cos(radY), math.cos(radZ)

    local right = {
        x = cosY * cosZ,
        y = cosY * sinZ,
        z = -sinY
    }

    local forward = {
        x = cosZ * sinX * sinY - cosX * sinZ,
        y = sinZ * sinX * sinY + cosX * cosZ,
        z = cosY * sinX
    }

    local up = {
        x = sinZ * cosX * sinY + cosZ * sinX,
        y = -cosZ * cosX * sinY + sinZ * sinX,
        z = cosZ * cosY
    }

    return vector3(right.x, right.y, right.z),
           vector3(forward.x, forward.y, forward.z),
           vector3(up.x, up.y, up.z)
end

-- Clean up when the resource stops
AddEventHandler("onResourceStop", function(resource)
    if resource ~= cache.resource then return end
    SetFreecamEnabled(false)
end)

