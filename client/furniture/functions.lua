-- Utility helpers used by the furniture editor

local glm = require("glm")
local propertyExports = exports.nolag_properties

local FUNC = {}

---Round a number to the given decimals
function FUNC.round(value, decimals)
  local factor = 10 ^ decimals
  return math.floor(value * factor) / factor
end

---Convert a rotation vector to a direction vector
function FUNC.rotationToDirection(rot)
  local r = vec3(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z))
  local x = -math.sin(r.z) * math.abs(math.cos(r.x))
  local y =  math.cos(r.z) * math.abs(math.cos(r.x))
  local z =  math.sin(r.x)
  return vec3(x, y, z)
end

---Return a ray starting from the camera for the given screen position
function FUNC.screenPositionToCameraRay(x, y)
  local camPos = GetFinalRenderedCamCoord()
  local camRot = glm.rad(GetFinalRenderedCamRot(2))
  local camQuat = glm.quatEulerAngleZYX(camRot.z, camRot.y, camRot.x)
  local origin = camPos
  local direction = camQuat * glm.forward()
  local up = camQuat * glm.up()
  local fov = glm.rad(GetFinalRenderedCamFov())
  local aspectRatio = GetAspectRatio(true)
  local nearClip, farClip = 0.1, 10000.0
  local sx, sy = x * 2 - 1, y * 2 - 1
  return origin, glm.rayPicking(direction, up, fov, aspectRatio, nearClip, farClip, sx, sy)
end

---Check if a network entity is furniture
function FUNC.isEntityFurniture(netId)
  local ent = Entity(netId)
  return ent.id ~= nil
end

---Get furniture data from an entity
function FUNC.getFurnitureFromEntity(entity)
  local ent = Entity(entity)
  if not ent.id then return nil end
  return Client.spawnedFurniture[ent.id]
end

---Generate an incremental string id for a table
function FUNC.generateId(tbl)
  local i = 1
  while tbl[tostring(i)] do
    i = i + 1
  end
  return tostring(i)
end

return FUNC

