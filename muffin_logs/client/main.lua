local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if config.debug == True then
        print("✅ ", "Heartbeat from playerload has been accepted")
    end
    local playerId = source
    local playerIden = GetPlayerServerId(PlayerId())

   
    TriggerServerEvent("muffin_logs:logJoin", playerIden)
    if config.debug == True then
        print(" ✅ ", "Trigger server event")
    end
end)
