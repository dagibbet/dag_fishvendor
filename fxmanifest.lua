fx_version 'cerulean'
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

description 'Rexshack Gaming : Fish-Vendor'

client_script {
	'client/client.lua',
	'client/blips.lua',
	'client/npc.lua',
	'config.lua'
}

server_script {
	'server/server.lua',
}

dependency {
	'zf_context',
}

lua54 'yes'