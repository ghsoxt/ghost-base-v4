-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
mapree = {}
Tunnel.bindInterface(GetCurrentResourceName(), mapree)

cfg = module(GetCurrentResourceName(), "config")

RegisterCommand("cl", function(source, args, rawcmd)
    TriggerClientEvent("yaga_antcl:show", source)
end)

AddEventHandler("playerDropped", function(reason)
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = vRP.getUserId(source)
    if not id or id == nil then
        id = "NAO OBTEVE"
    end
    local identifier = ""
    if Config.UseSteam then
        identifier = GetPlayerIdentifier(source, 0)
    else
        identifier = GetPlayerIdentifier(source, 1)
    end
    TriggerClientEvent("yaga_antcl", -1, id, crds, identifier, reason)
    if Config.LogSystem then
        SendLog(id, crds, identifier, reason)
    end
end)

function SendLog(id, crds, identifier, reason)
    local identity = vRP.getUserIdentity(id)
    print("id:"..id)
    print("COORDS: "..crds.x..","..crds.y..","..crds.z)
    print("identifier:"..identifier)
    print("reason:"..reason)
    print(""..os.date("Data: %d/%m/%Y - %H:%M:%S"))
    sendLog('LogCL',"JOGADOR SAIU: ["..id.."] "..identity.name.." "..identity.firstname.." \n[LOCAL]: "..crds.x..","..crds.y..","..crds.z.."\n[IDENTIFICADOR]: "..identifier.."\n[MOTIVO]: "..reason.." "..os.date("\nData: %d/%m/%Y - %H:%M:%S"),true)
end


function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

function mapree.sendKillLog(death_source, weapon)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if tonumber(death_source) then
			local nuser_id = vRP.getUserId(tonumber(death_source))
			if nuser_id then
				local identity = vRP.getUserIdentity(user_id)
				local uidentity = vRP.getUserIdentity(nuser_id)
				local x,y,z = vRPclient.getPosition(source)
				local x2,y2,z2 = vRPclient.getPosition(death_source)
                SendWebhookMessage(cfg.webhook, "```\n[MORREU]: "..identity.firstname.." ("..user_id..") \n[ASSASINO]: "..uidentity.firstname.." ("..nuser_id..") \n[ARMA]: "..weapon.."\n[LOC ASSASINO]: "..tD(x)..","..tD(y)..","..tD(z).."\n[LOC VITIMA]: "..tD(x2)..","..tD(y2)..","..tD(z2).." ```")
			end
		end
	end
	return true
end

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end