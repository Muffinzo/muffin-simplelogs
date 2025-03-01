local QBCore = exports['qb-core']:GetCoreObject()


AddEventHandler("playerDropped", function(reason)
    local playerId = source
    local playerName = GetPlayerName(playerId)
    local playerTime = GetPlayerTimeOnline(playerId)

    exports["muffin_logs"]:SendLog("leave", {
        username = "Drop Logs",
        color = 16711680, -- Red color
        title = playerName .. " left the server",
        description = "Reason: " .. reason .. " With playtime of: " .. playerTime,
    })
end)

RegisterNetEvent("muffin_logs:logJoin")
if config.debug == true then
    print(" ✅ ", "Join log accepted")
end
AddEventHandler("muffin_logs:logJoin", function(playerIden)
    local identifiers = GetPlayerIdentifiers(playerIden)
    local discordID = "Unknown"

    for _, id in pairs(identifiers) do
        if string.find(id, "discord:") then
            discordID = "<@" .. string.sub(id, 9) .. ">" -- Formats for Discord mention
            break
        end
    end

    exports["muffin_logs"]:SendLog("join", {
        username = "Join Logs",
        color = 5766957, -- Green color
        title = discordID .. " has joined the server",
        description = discordID
    })
end)
