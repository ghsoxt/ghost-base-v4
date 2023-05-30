local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
inProgress = {}

src = {}
Tunnel.bindInterface("alien_lsd", src)

local itemName = {
	{ item = "lsd" },
	{ item = "lsdd" },
	{ item = "embala1" },
	{ item = "embala2" }
}

-- DEVENVOLVIDO  BY  PH NEVES

RegisterServerEvent("alien_lsd:weaponfactory")
AddEventHandler("alien_lsd:weaponfactory",function(item)
	local src = source
	local user_id = vRP.getUserId(src)
	if user_id then
		for e,g in pairs(itemName) do
			if item == g.item then
				if not inProgress[src] then
					if item == "lsd" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("lsd") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"fungos") >= 50 then
								if vRP.getInventoryItemAmount(user_id,"acido-lisergico") >= 50 then
											if vRP.tryGetInventoryItem(user_id,"fungos",50) and vRP.tryGetInventoryItem(user_id,"acido-lisergico",50) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"lsd",50)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou <b>50 LSD</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Amído</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>acido-lisergico</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES
						
					elseif item == "lsdd" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("lsd") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"fungos") >= 100 then
								if vRP.getInventoryItemAmount(user_id,"acido-lisergico") >= 100 then
											if vRP.tryGetInventoryItem(user_id,"fungos",100) and vRP.tryGetInventoryItem(user_id,"acido-lisergico",100) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"lsd",100)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou <b>100 LSD</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Amído</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>acido-lisergico</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES
						
					elseif item == "embala1" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("lsdembalado") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"lsd") >= 50 then
								if vRP.getInventoryItemAmount(user_id,"embalagem") >= 5 then
											if vRP.tryGetInventoryItem(user_id,"lsd",50) and vRP.tryGetInventoryItem(user_id,"embalagem",5) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(3000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"lsdembalado",50)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou <b>50 LSD Embalado</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>LSD</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>Embalagem</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES
						
					elseif item == "embala2" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("lsdembalado") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"lsd") >= 100 then
								if vRP.getInventoryItemAmount(user_id,"embalagem") >= 10 then
											if vRP.tryGetInventoryItem(user_id,"lsd",100) and vRP.tryGetInventoryItem(user_id,"embalagem",10) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(3000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"lsdembalado",100)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou <b>100 LSD Embalado</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>LSD</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>Embalagem</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end
					end
				else
					TriggerClientEvent("Notify",src,"negado","Termine a produção em progresso para iniciar outra.")
				end
			end
		end
	end
end)

-- DEVENVOLVIDO  BY  PH NEVES

function src.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"lsd.permissao") then
		return true
	end
end