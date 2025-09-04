-- https://docs.teamsgg.dev/paid-scripts/properties/configure#camera
-- Camera handling uses the screencapture resource to upload images to fmapi.
-- Ensure you read the documentation before editing this file.

local settings = {
  apiUrl = 'https://fmapi.net/api/v2/image',
  apiKeyConvar = 'PROPERTIES_UPLOAD_TOKEN',
}

-- Verify camera dependencies from the client
lib.callback.register('nolag_properties:server:getCameraStatus', function(source)
  if GetResourceState('screencapture') ~= 'started' then
    lib.print.error('Camera functionality for nolag_properties is not available because screencapture is not started. You can download it from https://github.com/itschip/screencapture/releases')
    return false
  end

  if GetConvar(settings.apiKeyConvar, 'none') == 'none' then
    lib.print.error('Camera functionality for nolag_properties is not available because the API key is not set. Please set the API key using the command: set ' .. settings.apiKeyConvar .. ' "your_api_key"')
    return false
  end

  return true
end)

-- Abort early if requirements are missing on the server
if GetResourceState('screencapture') ~= 'started' then
  lib.print.error('Camera functionality for nolag_properties is not available because screencapture is not started. You can download it from https://github.com/itschip/screencapture/releases')
  return
end

if GetConvar(settings.apiKeyConvar, 'none') == 'none' then
  lib.print.error('Camera functionality for nolag_properties is not available because the API key is not set. Please set the API key using the command: set ' .. settings.apiKeyConvar .. ' "your_api_key"')
  return
end

local screencapture = exports.screencapture

-- Upload a screenshot from the client and return the hosted URL
lib.callback.register('nolag_properties:server:takePhoto', function(source)
  local image

  screencapture:remoteUpload(source, settings.apiUrl, {
    encoding = 'webp',
    headers = { ['Authorization'] = GetConvar(settings.apiKeyConvar, 'none') }
  }, function(responseData)
    image = responseData?.data?.url
  end, 'blob')

  lib.waitFor(function()
    return image ~= nil
  end, 'Failed to take photo. Make sure you have setuped the API key correctly.', 10000)

  return image
end)
