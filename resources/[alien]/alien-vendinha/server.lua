local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
inProgress = {}

src = {}
Tunnel.bindInterface("alien-vendinha", src)

local itemName = {
	{ item = "cm" },
	{ item = "rl" },
	{ item = "cl" },
	{ item = "cg" }
}

RegisterServerEvent("alien-vendinha:weaponfactory")
AddEventHandler("alien-vendinha:weaponfactory",function(item)
	local src = source
	local user_id = vRP.getUserId(src)
	if user_id then
		for e,g in pairs(itemName) do
			if item == g.item then
				if not inProgress[src] then
					if item == "cm" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"tomate") >= 10 then
								if vRP.tryGetInventoryItem(user_id,"tomate",10) then
									TriggerClientEvent("progress",src,7000,"fazendo")
										vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
										inProgress[src] = true
									TriggerClientEvent("F6Cancel",src,true)
									SetTimeout(7000,function()
										vRPclient._stopAnim(src,false)
										vRP.giveMoney(user_id,parseInt(2500))
									TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Tomates</b> e recebeu <b>R$2500</b>.")
										inProgress[src] = false
									TriggerClientEvent("F6Cancel",src,false)
								end)
							end
						else
						TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Tomates</b> na mochila.")
					end
				else
				TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
			end
		    elseif item == "rl" then
			    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.getInventoryItemAmount(user_id,"laranja") >= 10 then
						if vRP.tryGetInventoryItem(user_id,"laranja",10) then
							TriggerClientEvent("progress",src,7000,"fazendo")
								vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
								inProgress[src] = true
							TriggerClientEvent("F6Cancel",src,true)
							SetTimeout(7000,function()
								vRPclient._stopAnim(src,false)
								vRP.giveMoney(user_id,parseInt(2500))
							TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Laranjas</b>.")
								inProgress[src] = false
							TriggerClientEvent("F6Cancel",src,false)
						end)
					end
				else
				TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Laranjas</b> na mochila.")
			end
		else
		TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
	end
						
           elseif item == "cl" then
			    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
				    if vRP.getInventoryItemAmount(user_id,"graos") >= 10 then
					    if vRP.tryGetInventoryItem(user_id,"graos",10) then
				            TriggerClientEvent("progress",src,7000,"fazendo")
					            vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
					            inProgress[src] = true
				            TriggerClientEvent("F6Cancel",src,true)
				            SetTimeout(7000,function()
					            vRPclient._stopAnim(src,false)
					            vRP.giveMoney(user_id,parseInt(2500))
				            TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Grãos</b>.")
					            inProgress[src] = false
					        TriggerClientEvent("F6Cancel",src,false)
			            end)
		            end
	            else
	            TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Grãos</b> na mochila.")
            end
        else
	    TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
    end

					elseif item == "cg" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"garrafadeleite") >= 10 then
								if vRP.tryGetInventoryItem(user_id,"garrafadeleite",10) then
									TriggerClientEvent("progress",src,7000,"fazendo")
										vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
										inProgress[src] = true
									TriggerClientEvent("F6Cancel",src,true)
									SetTimeout(7000,function()
										vRPclient._stopAnim(src,false)
										vRP.giveMoney(user_id,parseInt(2500))
									TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Leites</b>.")
										inProgress[src] = false
									TriggerClientEvent("F6Cancel",src,false)
								end)
							end
						else
						TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Leites</b> na mochila.")
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