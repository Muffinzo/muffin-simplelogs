local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if config.debug == true then
        print("✅ ", "Heartbeat from playerload has been accepted")
    end
    local playerId = source
    local playerIden = GetPlayerServerId(PlayerId())

   
    TriggerServerEvent("muffin_logs:logJoin", playerIden)
    if config.debug == true then
        print(" ✅ ", "Trigger server event")
    end
end)
