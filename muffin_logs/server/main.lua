local availableWebhooks = {}

for webhook, data in pairs(config.Webhooks) do 
    if webhook then 
        table.insert(availableWebhooks,webhook)
        if data.URL == "" or data.URL == "webhook" or data.URL == nil then 
            print("[Muffin Logs] [ERROR] Some Webhooks are missing")
        end 
    else 
        print("[Muffin Logs] No webhooks found!")
        return 
    end 
end 


function SendLog(webhook, data)
    if data.username == nil then 
        data.username = "M-Logs"
    end
    

    local embed = {
        {
            ["author"] = data.author,
            ["color"] = data.color,
            ["title"] = data.title,
            ["url"] = data.URL,
            ["description"] = data.description,
            ["fields"] = data.fields,
            ["footer"] = {
                ["text"] = "🎗 Muffin Logs - ["..os.date('%d.%m.%Y - %H:%M:%S').." ]",
                ["icon_url"] = data.icon
            },
            ["thumbnail"] = data.thumbnail,
            ["image"] = data.image,
        }
    }
    PerformHttpRequest(config.Webhooks[webhook].URL, function(err, text, headers) end, "POST",json.encode({username = config.Webhooks[webhook].Username,embeds = embed,avatar_url = config.Webhooks[webhook].Icon}),{["Content-Type"] = "application/json"})
end

exports("SendLog",function (webhook,data)
    SendLog(webhook,data)
end)


exports["muffin_logs"]:SendLog("test",{
    color = 16737095,
    title = "[Muffin_logs] Script has started!",
    description = "Script has been started / restarted. If this is spamming the Discord channel there´s something wrong, if you don´t know what just contact Phoenix!",
})


AddEventHandler("onResourceStart",function (r)
    if r == GetCurrentResourceName() then
        if GetCurrentResourceName() ~= "muffin_logs" then 
            print("[Muffin logs] You have renamed the resource, this could cause problems")
        end 
    end
end)