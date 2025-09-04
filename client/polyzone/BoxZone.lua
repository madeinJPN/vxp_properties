--[[
  Simple box zone implementation inspired by the PolyZone library.
  Calculates the four corners of a box and provides basic point-in-zone checks.
]]

local PolyZone = require('client.polyzone.client')
local BoxZone = setmetatable({}, {__index = PolyZone})
BoxZone.__index = BoxZone

---Create a new box zone
---@param name string
---@param center vector3
---@param width number
---@param length number
---@param opts table
function BoxZone:new(name, center, width, length, opts)
  opts = opts or {}

  local self = PolyZone.new(self, name, opts)
  self.center = center
  self.width = width
  self.length = length
  self.heading = opts.heading or 0.0
  self.minZ = opts.minZ or (center.z - 1.0)
  self.maxZ = opts.maxZ or (center.z + 1.0)
  self.debugColor = opts.debugColor or {r = 0, g = 255, b = 0, a = 64}

  self.points = self:calculatePoints()
  return self
end

---Calculate the four corner points of the box
function BoxZone:calculatePoints()
  local heading = math.rad(self.heading)
  local cosH, sinH = math.cos(heading), math.sin(heading)
  local w, l = self.width / 2, self.length / 2

  local function offset(x, y)
    return vector2(
      self.center.x + x * cosH - y * sinH,
      self.center.y + x * sinH + y * cosH
    )
  end

  return {
    offset(w, l),
    offset(-w, l),
    offset(-w, -l),
    offset(w, -l),
  }
end

---Check if a 3D point is inside the zone
function BoxZone:isPointInside(point)
  if point.z < self.minZ or point.z > self.maxZ then return false end

  local inside = true
  for i = 1, #self.points do
    local a = self.points[i]
    local b = self.points[(i % #self.points) + 1]
    local cross = (b.x - a.x) * (point.y - a.y) - (b.y - a.y) * (point.x - a.x)
    if cross < 0 then inside = false break end
  end
  return inside
end

---Draw zone when debugging is enabled
function BoxZone:draw()
  if not self:isDebug() then return end
  local r, g, b, a = self.debugColor.r, self.debugColor.g, self.debugColor.b, self.debugColor.a
  for i = 1, #self.points do
    local aPt = self.points[i]
    local bPt = self.points[(i % #self.points) + 1]
    DrawLine(aPt.x, aPt.y, self.minZ, bPt.x, bPt.y, self.minZ, r, g, b, a)
    DrawLine(aPt.x, aPt.y, self.maxZ, bPt.x, bPt.y, self.maxZ, r, g, b, a)
    DrawLine(aPt.x, aPt.y, self.minZ, aPt.x, aPt.y, self.maxZ, r, g, b, a)
  end
end

return BoxZone

