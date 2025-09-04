--[[
  Wrapper around the bob74_ipl resource that applies simple configuration
  for interiors used by the property system.
]]

local IplCreator = {}
IplCreator.__index = IplCreator

local bob74 = exports.bob74_ipl

---Create a new IPL helper
---@param propertyId number|string
---@param iplName string
---@param data table
function IplCreator.new(propertyId, iplName, data)
  local exportName = IPLsData[iplName].export
  local ipl = bob74[exportName]()

  local self = setmetatable({
    propertyId = propertyId,
    iplName = iplName,
    ipl = ipl,
    export = function() return bob74[exportName]() end,
    cam = nil,
    data = data or {},
    tempData = {},
  }, IplCreator)

  self:setData()
  return self
end

---Apply stored data to the IPL object
function IplCreator:setData()
  if not self.ipl then return end

  if self.data.Theme and self.ipl.Style and self.ipl.Style.Theme then
    local theme = string.lower(self.data.Theme)
    local style = self.ipl.Style.Theme[theme]
    if style then
      self.ipl.Style.Set(style)
      lib.print.debug("Theme set to: " .. theme)
    end
  end

  if self.ipl.Safe and self.data.Safe then
    for side, open in pairs(self.data.Safe) do
      if open then
        self.ipl.Safe.Open(side)
      else
        self.ipl.Safe.Close(side)
      end
    end
  end
end

function IplCreator:setOrganization()
  -- Finance offices require setting an organization name
  if FinanceOrganization and self.ipl and self.ipl.Style and self.ipl.Style.SetOrganization then
    self.ipl.Style.SetOrganization(FinanceOrganization)
  end
end

function IplCreator:delete()
  if self.cam then
    RenderScriptCams(false, false, 0, true, true)
    DestroyCam(self.cam, false)
    self.cam = nil
  end
end

return IplCreator

