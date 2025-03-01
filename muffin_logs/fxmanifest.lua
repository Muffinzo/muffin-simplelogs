fx_version "cerulean"
game "gta5"
author "Phoenix"
description "Simple Discord webhook logs for small things"
version "1.0.0"

shared_scripts {
    "config.lua",
}


server_scripts {
    "server/main.lua",
    "server/logs.lua",
}

client_scripts {
    "client/main.lua",
}