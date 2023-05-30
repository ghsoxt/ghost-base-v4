local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
inProgress = {}

src = {}
Tunnel.bindInterface("alien_maconha", src)

local itemName = {
	{ item = "maconha" },
	{ item = "maconhaa" },
	{ item = "embala1" },
	{ item = "embala2" }
}

-- DEVENVOLVIDO  BY  PH NEVES

RegisterServerEvent("alien_maconha:weaponfactory")
AddEventHandler("alien_maconha:weaponfactory",function(item)
	local src = source
	local user_id = vRP.getUserId(src)
	if user_id then
		for e,g in pairs(itemName) do
			if item == g.item then
				if not inProgress[src] then
					if item == "maconha" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("maconha") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"fertilizante") >= 50 then
								if vRP.getInventoryItemAmount(user_id,"adubo") >= 50 then
											if vRP.tryGetInventoryItem(user_id,"fertilizante",50) and vRP.tryGetInventoryItem(user_id,"adubo",50) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"maconha",50)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou uma <b>50 Maconha</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Balança</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>Folhas De Maconha</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES

					elseif item == "maconhaa" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("maconha") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"fertilizante") >= 100 then
								if vRP.getInventoryItemAmount(user_id,"adubo") >= 100 then
											if vRP.tryGetInventoryItem(user_id,"fertilizante",100) and vRP.tryGetInventoryItem(user_id,"adubo",100) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"maconha",100)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou um <b>100 Maconha</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Balança</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>Folhas De Maconha</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES

					elseif item == "embala1" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("tablete") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"maconha") >= 50 then
								if vRP.getInventoryItemAmount(user_id,"embalagem") >= 5 then
											if vRP.tryGetInventoryItem(user_id,"maconha",50) and vRP.tryGetInventoryItem(user_id,"embalagem",5) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"tablete",50)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou um <b>50 Tablete</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Maconha</b> o suficiente.")
										end
									else
										TriggerClientEvent("Notify",src,"negado","Você não tem <b>Embalagem</b> o suficiente.")
									end
						else
							TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
						end

						-- DEVENVOLVIDO  BY  PH NEVES
						
					elseif item == "embala2" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("tablete") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"maconha") >= 100 then
								if vRP.getInventoryItemAmount(user_id,"embalagem") >= 10 then
											if vRP.tryGetInventoryItem(user_id,"maconha",100) and vRP.tryGetInventoryItem(user_id,"embalagem",10) then
												TriggerClientEvent("progress",src,1000,"fazendo")
												vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
												inProgress[src] = true
												TriggerClientEvent("F6Cancel",src,true)
												SetTimeout(2000,function()
													vRPclient._stopAnim(src,false)
													vRP.giveInventoryItem(user_id,"tablete",100)
													TriggerClientEvent("Notify",src,"sucesso","Você fabricou um <b>100 Tablete</b>.")
													inProgress[src] = false
													TriggerClientEvent("F6Cancel",src,false)
												end)
											end
										else
											TriggerClientEvent("Notify",src,"negado","Você não tem <b>Maconha</b> o suficiente.")
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
	if vRP.hasPermission(user_id,"maconha.permissao") then
		return true
	end
end