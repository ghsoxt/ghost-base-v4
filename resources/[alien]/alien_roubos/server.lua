local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

sRP = {}
Tunnel.bindInterface(GetCurrentResourceName(), sRP)

vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

local blips = {}

-- Config
local ultimoAssaltoHora = {}
local recompensa = {}
local assalto = {}
local tempoAssalto = {}
local lastRoubo = {}

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

function sRP.startRobbery(key, v, cds)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
		local identity = vRP.getUserIdentity(user_id)
		local policias = vRP.getUsersByPermission("policia.permissao")
		if #policias < v.minPolice then
			TriggerClientEvent("Notify", source, "negado", "Necessários <b>" .. v.minPolice .. " policiais</b> para iniciar o roubo")
		else
			if sRP.isEnabledToRob(key .. cds.id, v.cooldown) then
				if sRP.hasNecessaryItemsToRob(user_id, v.need_item or {}) then
					SendWebhookMessage(v.webhook, key .. " iniciado(a)\n```yaml\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.."```")

					ultimoAssaltoHora[key .. cds.id] = { time = os.time() }
					recompensa[user_id] = v.item
					tempoAssalto[user_id] = v.tempoRoubo
					assalto[key] = true
					lastRoubo[user_id] = v
					lastRoubo[user_id].type = key

					SetTimeout(v.tempoRoubo * 1000, function()
						assalto[key] = false
					end)

					vCLIENT.iniciandoRoubo(source, cds.x, cds.y, cds.z, cds.h, v.tempoRoubo, v.maxDistance or 0, v.message or "Você se afastou demais do local!")
					removeAllItems(user_id, v.need_item or {})

					vCLIENT.showTime(source)
					
					vRPclient._playAnim(source, false, {v.animation, v.animation_comp}, true)

					local animationTime = (v.animationTime or v.tempoRoubo) * 1000
					SetTimeout(animationTime, function()
						vRPclient._stopAnim(source)
					end)
						
					if v.callPoliceChance and math.random(100) > v.callPoliceChance then return end

					sRP.avisarPolicia(key, v, cds.x, cds.y, cds.z)
				end
			else
				local tempoRestante = sRP.getRemaningTime(key .. cds.id, v.cooldown)
				TriggerClientEvent("Notify", source, "negado", "Você ainda deve aguardar <b>" .. tempoRestante .. " segundos</b> para realizar a ação")
			end
        end
    end
end

function sRP.cancelRobbery(distanceBigger, revived)
    local source = source
    local user_id = vRP.getUserId(source)
	local type = "apertou M"

	tempoAssalto[user_id] = nil
	recompensa[user_id] = nil
    if user_id and not revived then
		local identity = vRP.getUserIdentity(user_id)
        local policia = vRP.getUsersByPermission("policia.permissao")
        if policia then
			local x, y, z = vRPclient.getPosition(source)
			for l, w in pairs(policia) do
				local player = vRP.getUserSource(parseInt(w))
				local playerId = vRP.getUserId(player)
				if player then
					async(function()
						TriggerClientEvent("NotifyPush", player,
							{ 
								time = os.date("%H:%M:%S - %d/%m/%Y"), 
								code = 4, 
								title = "Roubo à " .. lastRoubo[user_id].type .. " cancelado", 
								x = x, y = y, z = z, 
								rgba = {41,76,119} 
							}
						)
					end)
				end
			end
        end

		if distanceBigger and not revived then type = "distância"
		elseif distanceBigger and revived then type = "ação finalizada/reanimado"
		else TriggerClientEvent("Notify", source, "aviso", "Roubo cancelado com sucesso!", 15000) end

		SendWebhookMessage(lastRoubo[user_id].webhook, (lastRoubo[user_id].type) .. " cancelado(a) (" .. type .. ")\n```diff\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.."\n" ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

		lastRoubo[user_id] = nil
    end
end

function sRP.getRemaningTime(k, cooldown)
    if ultimoAssaltoHora[k] then
		local t = ((os.time() - ultimoAssaltoHora[k]["time"]) - cooldown * 60) * -1
		return t
	end
	return 0
end

function sRP.isEnabledToRob(k, cooldown)
    if ultimoAssaltoHora[k] then
        if ultimoAssaltoHora[tostring(k)] ~= nil then
            if (os.time() - ultimoAssaltoHora[tostring(k)]["time"]) < cooldown * 60 then
                return false
            end
        end
    end
    return true
end

function sRP.givePayment()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
		local identity = vRP.getUserIdentity(user_id)

		local itemList = ""
        for n, i in pairs(recompensa[user_id]) do
            local pagamento = math.random(i.min, i.max)
			vRP.giveInventoryItem(user_id, n, pagamento)
			itemList = pagamento .. "x " .. vRP.itemNameList(n) .. "\n"
        end
		SendWebhookMessage(lastRoubo[user_id].webhook, lastRoubo[user_id].type .. " finalizado(a)\n```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.."\n" .. "[RECOMPENSA]: $" .. itemList ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

		local policiais = vRP.getUsersByPermission("policia.permissao")
		if policiais then
			for l, w in pairs(policiais) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,"190",{64,64,255},"O roubo à ^1" .. lastRoubo[user_id].type .. " ^0terminou! O(s) assaltante(s) deve(m) estar se evadindo do local.")
					end)
				end
			end
		end
		
        recompensa[user_id] = nil
        tempoAssalto[user_id] = nil
		lastRoubo[user_id] = nil
    end
end

function sRP.hasNecessaryItemsToRob(user_id, items)
    local source = vRP.getUserSource(user_id)
	local retorno = true
	for k, v in pairs(items) do
		if vRP.getInventoryItemAmount(user_id, k) < parseInt(v) then
			TriggerClientEvent("Notify", source, "negado", "Você precisa de <b>" .. v .. "x " .. vRP.itemNameList(k) .. "</b> para iniciar o roubo")
			retorno = false
		end
	end
    return retorno
end

function sRP.avisarPolicia(place, v, x, y, z)
	local policiais = vRP.getUsersByPermission("policia.permissao")
	if policiais then
		for l, w in pairs(policiais) do
			local player = vRP.getUserSource(parseInt(w))
			if player then
				async(function()
					vRPclient.playSound(player, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")
					TriggerClientEvent("NotifyPush", player,
						{ 
							time = os.date("%H:%M:%S - %d/%m/%Y"), 
							code = 31, 
							title = "Roubo à " .. place, 
							x = x, y = y, z = z, 
							rgba = {41,76,119} 
						}
					)
				end)
			end
		end
	end
end

function removeAllItems(user_id, items)
	local source = vRP.getUserSource(user_id)
	for k, v in pairs(items) do
		vRP.tryGetInventoryItem(user_id, k, v)
	end
end
