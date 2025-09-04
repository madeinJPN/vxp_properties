PropertySQL = {}
BuildingSQL = {}

-- Load bundled SQL file unless manual injection is enabled
MySQL.ready(function()
  if Config.ManualSQLInjection then return end

  local sql = LoadResourceFile(cache.resource, 'sql/properties.sql')
  if not sql or sql == '' then return end

  for query in sql:gmatch('([^;]+);') do
    local ok, err = pcall(function()
      MySQL.query.await(query)
    end)
    if not ok then
      lib.print.warn('^3SQL error:^7 ' .. err)
    end
  end

  lib.print.debug('^2Database schema initialized from combined SQL file^7')
end)

---Fetch a property record from the database
---@param id number
function PropertySQL.FetchProperty(id)
  local row = MySQL.single.await('SELECT * FROM properties WHERE id = ?', { id })
  if not row then return end
  row.metadata = json.decode(row.metadata or '{}')
  row.keyHolders = json.decode(row.keyholders or '{}')
  return row
end

---Persist property fields
---@param data table
function PropertySQL.UpdateProperty(data)
  MySQL.update([[\
    UPDATE properties\
       SET label = ?, name = ?, metadata = ?, owner = ?, tenant = ?, keyholders = ?\
     WHERE id = ?\
  ]], {
    data.label,
    data.name,
    json.encode(data.metadata),
    data.owner,
    data.tenant,
    json.encode(data.keyHolders),
    data.property_id
  })
end

---Fetch a building record
---@param id number
function BuildingSQL.FetchBuilding(id)
  local row = MySQL.single.await('SELECT * FROM properties_buildings WHERE id = ?', { id })
  if not row then return end
  row.metadata = json.decode(row.metadata or '{}')
  return row
end

---Persist building fields
---@param data table
function BuildingSQL.UpdateBuilding(data)
  MySQL.update([[\
    UPDATE properties_buildings\
       SET label = ?, name = ?, metadata = ?\
     WHERE id = ?\
  ]], {
    data.label,
    data.name,
    json.encode(data.metadata),
    data.building_id
  })
end
