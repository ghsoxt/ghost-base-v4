fx_version 'adamant'

game 'gta5'

author 'okok#3488'
description 'SosaBank'

ui_page 'web/ui.html'

files {
	'web/*.*',
	'web/**/*.*',
	'web/**/**/*.*',
	'web/**/**/**/*',
}

shared_script 'config.lua'

client_scripts {
	"@vrp/lib/utils.lua",
	'src/cl-bank.lua',
}

server_scripts {
	"@vrp/lib/utils.lua",
	'@mysql-async/lib/MySQL.lua',
	'src/sv-bank.lua',
}


dependencies{
	"vrp"
}