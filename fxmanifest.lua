fx_version "cerulean"
game "gta5"

title "Pow Pow Menu"
author "Kezi#2706"
version "v1.1"

shared_script "config.lua"
server_script "source/server.lua"
client_scripts {
    '@menuv/menuv.lua',
    "source/menu.lua",
    "source/client.lua"
}

