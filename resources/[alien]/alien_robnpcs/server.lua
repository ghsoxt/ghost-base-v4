-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
dmscrp = {}
Tunnel.bindInterface("alien_robnpcs",dmscrp)
vCLIENT = Tunnel.getInterface("alien_robnpcs")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local pedlist = {}
local blips = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function dmscrp.checkPedlist(npc)
	if pedlist[npc] then
		return true
	else
		return false
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESSEDPEDLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function dmscrp.pressedPedlist(npc)
	pedlist[npc] = true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookroubonpc = ""

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMLIST
-----------------------------------------------------------------------------------------------------------------------------------------
local itemlist = {
	[1] = { ['index'] = "energetico", ['quantidademenor'] = 1, ['quantidademaior'] = 5, ['name'] = "Energetico" },
	[2] = { ['index'] = "radio", ['quantidademenor'] = 1, ['quantidademaior'] = 5, ['name'] = "Radio" },
	[3] = { ['index'] = "celular", ['quantidademenor'] = 1, ['quantidademaior'] = 5, ['name'] = "celular" },
	[4] = { ['index'] = "mochila", ['quantidademenor'] = 1, ['quantidademaior'] = 5, ['name'] = "Mochila" },
	[5] = { ['index'] = "colete", ['quantidademenor'] = 1, ['quantidademaior'] = 5, ['name'] = "Colete Balístico" },

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
function dmscrp.checkPayment()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
		if user_id then 
			--local recompensaoudinheiro = math.random(100)
			--if recompensaoudinheiro >= 50 then
			    local randitem = math.random(#itemlist)
				local itensquatidade = math.random(itemlist[randitem].quantidademenor,itemlist[randitem].quantidademaior)
			    vRP.giveInventoryItem(user_id,itemlist[randitem].index,itensquatidade)
			    TriggerClientEvent("Notify",source,"sucesso","Você recebeu "..itensquatidade.."x <b>"..itemlist[randitem].name.."</b>.",8000)

				SendWebhookMessage(webhookroubonpc,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROUBO]: ROUBO NPC  \n[LOCALIAZACAO]: "..x..","..y..","..z.." \n[ITEM ROUBADO]: "..itemlist[randitem].name.." \n[QUANTIDADE]: "..itensquatidade.."x "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		    --else 
			    --local randmoney = math.random(10,50)
			    --if #policia > 0 then
				    --randmoney = math.random(100,200)
			    --end
			    --vRP.giveMoney(user_id,parseInt(randmoney))
			    --TriggerClientEvent("Notify",source,"sucesso","Recebeu <b>"..parseInt(randmoney).." dólares</b>.",8000)
			--end
		end
		local policia = vRP.getUsersByPermission("policia.permissao")
		local chamarpoliciaporcentagem = math.random(100)
		if chamarpoliciaporcentagem >= 50 then
			vRPclient.setStandBY(source,parseInt(80))
			--TriggerClientEvent("Notify",source,"aviso","A policia foi acionada.",8000)
			for k,v in pairs(policia) do
				local player = vRP.getUserSource(parseInt(v))
				if player then
					local ids = idgens:gen()
					vRPclient.playSound(player,"Oneshot_Final","MP_MISSION_COUNTDOWN_SOUNDSET")
					blips[ids] = vRPclient.addBlip(player,x,y,z,1,61,"Roubo em andamento",0.5,true)
					TriggerClientEvent('chatMessage',player,"911",{64,64,255},"Recebemos uma denuncia de roubo, verifique o ocorrido.")
					SetTimeout(30000,function() vRPclient.removeBlip(player,blips[ids]) idgens:free(ids) end)
				end
			end
		end
	end

end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDRESET
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1200000)
		pedlist = {}
	end
end)