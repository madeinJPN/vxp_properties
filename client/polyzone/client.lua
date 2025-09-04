-- Base PolyZone class used by custom zone shapes
local PolyZone = {}
PolyZone.__index = PolyZone

---Instantiate a new zone
function PolyZone.new(class, name, opts)
  opts = opts or {}
  local self = setmetatable({
    name = name,
    debug = opts.debug,
    onEnter = opts.onEnter,
    onExit = opts.onExit,
  }, class or PolyZone)
  return self
end

---Override to implement shape specific logic
function PolyZone:isPointInside(_point)
  return false
end

function PolyZone:isDebug()
  return self.debug or LocalPlayer.state.zoneDebug == true
end

---Draw zone outline when debugging
function PolyZone:draw()
  -- implemented by children
end

function PolyZone:remove()
  if self.onExit then
    self.onExit()
  end
end

return PolyZone

