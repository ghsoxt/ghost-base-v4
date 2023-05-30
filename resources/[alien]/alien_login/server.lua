local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

PL = {}
Tunnel.bindInterface("alien_login", PL)
vCLIENT = Tunnel.getInterface("alien_login")

RegisterCommand("login",function(source)
    TriggerClientEvent("vrp:ToogleLoginMenu",source)
	end)

function PL.login()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	return vRP.getMoney(user_id), vRP.getBankMoney(user_id), identity.name.. "" ..identity.firstname
end