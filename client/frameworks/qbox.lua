if Config.Framework ~= 'qbox' then
    return
end

OnPlayerLoadedEvent = "QBCore:Client:OnPlayerLoaded"
OnPlayerUnloadedEvent = "qbx_core:client:playerLoggedOut"
OnJobUpdateEvent = "QBCore:Client:OnJobUpdate"

Framework = {}
local QBXPlayerData = exports.qbx_core:GetPlayerData()


PlayerData = {
    insideBigZone = {},     -- don't change this
    insideYards = {},       -- don't change this
    insideMlos = {},        -- don't change this
    insideProperty = false, -- don't change this
    currentProperty = nil,  -- don't change this
    identifier = QBXPlayerData.citizenid,
    job = QBXPlayerData.job,
}

Framework = {
    Notify = function(notifyData)
        lib.notify(notifyData)
    end,
    showTextUI = function(text, options)
        lib.showTextUI(text, options)
    end,
    hideTextUI = function()
        lib.hideTextUI()
    end,
    isPlayerAuthorized = function(jobList)
        if not jobList then return true end
        for jobName, grade in pairs(jobList) do
            if jobName == PlayerData.job.name and PlayerData.job.grade.level >= grade then
                return true
            end
        end
        return false
    end,
    isPlayerAuthorizedToRaid = function()
        for jobName, grade in pairs(Config.PoliceRaid.Jobs) do
            if jobName == PlayerData.job.name and PlayerData.job.grade.level >= grade then
                return true
            end
        end
        return false
    end,
    isPlayerAuthorizedToLockdown = function()
        return Framework.isPlayerAuthorizedToRaid()
    end,
    isSocietyBoss = function(society)
        return PlayerData.job.name == society and PlayerData.job.isboss == true
    end,
}

RegisterNetEvent(OnPlayerLoadedEvent, function()
    QBXPlayerData = exports.qbx_core:GetPlayerData()
    PlayerData.identifier = QBXPlayerData.citizenid
    PlayerData.job = QBXPlayerData.job
end)

RegisterNetEvent(OnPlayerUnloadedEvent, function()
    PlayerData.identifier = nil
    PlayerData.job = nil
end)

RegisterNetEvent(OnJobUpdateEvent, function(PlayerJob)
    if GetInvokingResource() then return end

    PlayerData.job = PlayerJob
end)
