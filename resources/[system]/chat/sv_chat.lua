-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookchat = "---------------------1082538878809939988/mSBbSY288o4SwHTS5KNNhROaETH2z5VR70RpSIVKSJvpmQTgpLSdkfcc5YpZV8s3gJbJ"
local webhookchatilegal = "---------------------1082547413547491428/HIKMbqL29c_mrSrsm5CdWw5Xyg9PQa9oR6Ix58de9YQcqM8m81c2ALA3FUzAZrjH3Fmc"

function SendWebhookMessage(webhook,message)
   if webhook ~= "none" then
       PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
   end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vCLIENT = Tunnel.getInterface("chat")
-----------------------------------------------------------------------------------------------------------------------------------------
-- MESSAGEENTERED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("chat:messageEntered")
AddEventHandler("chat:messageEntered",function(message)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id then
		local identity = vRP.getUserIdentity(user_id)
		if identity then
			TriggerClientEvent("chatMessage",source,identity["name"].." "..identity["firstname"],{100,100,100},"^3"..message)
			local players = vRPC.getNearestPlayers(source,10)
			for k,v in pairs(players) do
				async(function()
					TriggerClientEvent("chatMessage",k,identity["name"].." "..identity["firstname"],{100,100,100},"^3"..message)
				end)
			end
		end
        SendWebhookMessage(webhookchat,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[MENSAGEM]: "..message.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDFALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("__cfx_internal:commandFallback")
AddEventHandler("__cfx_internal:commandFallback",function(command)
	local name = GetPlayerName(source)
	if not command or not name then
		return
	end

	CancelEvent()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONSOLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("prefeitura",function(source,args,rawCommand)
	if source == 0 then
		TriggerClientEvent('chatMessage',-1,"^3PREFEITURA",{100,100,100},rawCommand:sub(11))
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand("kickall",function(source,args,rawCommand)
-- 	if source == 0 then
-- 		local playerList = vRP.getUsers()
-- 		for k,v in pairs(playerList) do
-- 			vRP.kick(v,"Você foi desconectado, a cidade reiniciou.")
-- 		end
-- 		--TriggerEvent("vrp_admin:KickAll")
-- 	end
-- end)

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
    local source = source
    Wait(10000)
    TriggerClientEvent('chatMessage',source,"",{100, 98, 31},"@Prefeitura ^0Seja bem-vindo(a) a cidade, tenha um ótimo RP!! discord.gg/KregrSDB4kp")
end)


--[[RegisterCommand('tw', function(source, args, rawCommand)
    local message = rawCommand:sub(3)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    fal = identity.name.. " " .. identity.firstname
    if user_id then

    TriggerClientEvent('chatMessage',-1,"",{31, 222, 213},""..identity.name.." "..identity.firstname.. "  ^0"..message)
  
end
SendWebhookMessage(webhookchat,"[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[911]: "..message.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r")
end, false)]]--

RegisterCommand("ilegal",function(source,args,rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    fal = identity.name.. " " .. identity.firstname

    if user_id then
        if vRP.tryFullPayment(user_id,10000) then
            local message = rawCommand:sub(8)
            TriggerClientEvent('chatMessage',-1,"",{150, 150, 150},"CHAT ILEGAL: ^0"..message)
            TriggerClientEvent("Notify",source,"sucesso","Você pagou $10.000 para mandar mensagem no <b>/ILEGAL</b>.")
            SendWebhookMessage(webhookchatilegal,"```prolog\n[ID]: "..user_id.." "..fal.." \n[ILEGAL]: "..message.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
        end
    end
end)   

RegisterCommand('911', function(source, args, rawCommand)
    local message = rawCommand:sub(4)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    fal = identity.name.. " " .. identity.firstname
    if user_id and vRP.hasPermission(user_id,'policia.permissao') then
        TriggerClientEvent('chatMessage',-1,"",{51, 51, 255},""..identity.name.." "..identity.firstname.. "  ^0"..message)
        SendWebhookMessage(webhookchat,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[COMANDO]: /911\n[MENSAGEM]:"..message.." \n"..os.date("[Data]: %d/%m/%Y [Hora]: %H:%M:%S  \r```"))
    end
end, false)

-- RegisterCommand('911a', function(source, args, rawCommand)
--     local message = rawCommand:sub(5)
--     local user_id = vRP.getUserId(source)
--     local identity = vRP.getUserIdentity(user_id)
--     if user_id then
--         TriggerClientEvent('chatMessage',-1,"",{51, 51, 255},"@Bandidos  ^0"..message)
--         SendWebhookMessage(webhookchat,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[COMANDO]: /911a\n[MENSAGEM]:"..message.." \n"..os.date("[Data]: %d/%m/%Y [Hora]: %H:%M:%S  \r```"))
--     -- TriggerClientEvent('chat:addMessage', -1, {
--         -- template = '<div style="margin: 0.1vw; border-radius: 15px 50px 30px 5px; "><span style="color: #001BFF;"> @Bandidos: </span>{1}</div>',
--         -- args = { fal, message }
--     -- })
--     end
-- end, false)

RegisterCommand('112', function(source, args, rawCommand)
    local message = rawCommand:sub(4)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    fal = identity.name.. " " .. identity.firstname
    if user_id and vRP.hasPermission(user_id,'paramedico.permissao')  then
        TriggerClientEvent('chatMessage',-1,"[EMS] ",{255, 51, 102},""..identity.name.." "..identity.firstname.. "  ^0"..message)
        SendWebhookMessage(webhookchat,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[COMANDO]: /112\n[MENSAGEM]:"..message.." \n"..os.date("[Data]: %d/%m/%Y [Hora]: %H:%M:%S  \r```"))
    end
end, false)


RegisterCommand('clearchat', function(source)
    local user_id = vRP.getUserId(source);
    if user_id ~= nil then
        if vRP.hasPermission(user_id, "ac.permissao") then
            TriggerClientEvent("chat:clear", -1);
        else
            TriggerClientEvent("chat:clear", source);
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATUSCHAT
-----------------------------------------------------------------------------------------------------------------------------------------
function statusChat(source)
	return vCLIENT.statusChat(source)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- exports("statusChat",statusChat)