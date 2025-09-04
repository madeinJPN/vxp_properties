CreateThread(function()
  if not Config.CheckForUpdates then return end

  local current = GetResourceMetadata(cache.resource, 'version', 0)
  local url = ('https://raw.githubusercontent.com/TeamsGG-Development/tgg-versions/main/%s.txt'):format(cache.resource)

  PerformHttpRequest(url, function(_, body)
    if not body then
      print('^1Version check disabled because github is having issues.^0')
      return
    end

    local info = json.decode(body:sub(1, -2))

    local function isNewer(new, old)
      for i = 1, #new do
        local a = tonumber(new[i]) or 0
        local b = tonumber(old[i]) or 0
        if a > b then return true elseif a < b then return false end
      end
      return false
    end

    local currentTable = { string.match(current, '(%d+)%.(%d+)%.(%d+)') }
    local latestTable = { string.match(info.version, '(%d+)%.(%d+)%.(%d+)') }

    if isNewer(latestTable, currentTable) then
      local cur = table.concat(currentTable, '.')
      local new = table.concat(latestTable, '.')
      print(string.format([[\
^0[^3WARNING^0] %s is ^1OUTDATED^0!\
^0[^3WARNING^0] Your Version: %s^0\
^0[^3WARNING^0] Latest Version: %s^0\
^0[^3WARNING^0] Notes: ^5%s^0.\
^0[^3WARNING^0] Download: ^3%s^0\
^0[^3WARNING^0] Changelog: ^3%s^0]],
        cache.resource, cur, new, info.notes, 'https://portal.cfx.re/assets/granted-assets', info.discordLink))
    end
  end, 'GET')
end)
