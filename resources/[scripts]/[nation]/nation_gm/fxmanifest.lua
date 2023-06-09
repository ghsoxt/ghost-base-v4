fx_version "adamant"
game "gta5"

ui_page "nui/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client_config.lua",
	"client.lua"
} 

server_script {
	"@vrp/lib/utils.lua",
	"server_config.lua",
	"server.lua"
}

files {
	"nui/index.html",
	"nui/lang.js",
	"nui/sweetalert2.js",
	"nui/script.js",
	"nui/style.css",
	-- "nui/images/*.png",
	"nui/fonts/*.ttf",
	"nui/fonts/*.otf"
}                            

