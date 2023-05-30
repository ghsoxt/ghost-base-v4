local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
inProgress = {}

src = {}
Tunnel.bindInterface("alien-vendinha2", src)

local itemName = {
	{ item = "cm" },
	{ item = "rl" },
	{ item = "cl" },
	{ item = "cg" },
	{ item = "r3" },
	{ item = "r2" }

}

RegisterServerEvent("alien-vendinha2:weaponfactory")
AddEventHandler("alien-vendinha2:weaponfactory",function(item)
	local src = source
	local user_id = vRP.getUserId(src)
	if user_id then
		for e,g in pairs(itemName) do
			if item == g.item then
				if not inProgress[src] then
					if item == "cm" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"anelroubado") >= 10 then
								if vRP.tryGetInventoryItem(user_id,"anelroubado",10) then
									TriggerClientEvent("progress",src,7000,"fazendo")
										vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
										inProgress[src] = true
									TriggerClientEvent("F6Cancel",src,true)
									SetTimeout(7000,function()
										vRPclient._stopAnim(src,false)
										vRP.giveMoney(user_id,parseInt(2500))
									TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Anel Roubado</b> e recebeu <b>R$2500</b>.")
										inProgress[src] = false
									TriggerClientEvent("F6Cancel",src,false)
								end)
							end
						else
						TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Anel Roubado</b> na mochila.")
					end
				else
				TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
			end
						
           elseif item == "rl" then
			    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
				    if vRP.getInventoryItemAmount(user_id,"relogioroubado") >= 10 then
					    if vRP.tryGetInventoryItem(user_id,"relogioroubado",10) then
				            TriggerClientEvent("progress",src,7000,"fazendo")
					            vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
					            inProgress[src] = true
				            TriggerClientEvent("F6Cancel",src,true)
				            SetTimeout(7000,function()
					            vRPclient._stopAnim(src,false)
					            vRP.giveMoney(user_id,parseInt(2500))
				            TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Relógio Roubado</b>.")
					            inProgress[src] = false
					        TriggerClientEvent("F6Cancel",src,false)
			            end)
		            end
	            else
	            TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Relógio Roubado</b> na mochila.")
            end
        else
	    TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
    end
						
           elseif item == "cl" then
			    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
				    if vRP.getInventoryItemAmount(user_id,"sapatosroubado") >= 10 then
					    if vRP.tryGetInventoryItem(user_id,"sapatosroubado",10) then
				            TriggerClientEvent("progress",src,7000,"fazendo")
					            vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
					            inProgress[src] = true
				            TriggerClientEvent("F6Cancel",src,true)
				            SetTimeout(7000,function()
					            vRPclient._stopAnim(src,false)
					            vRP.giveMoney(user_id,parseInt(2500))
				            TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Sapatos Roubado</b>.")
					            inProgress[src] = false
					        TriggerClientEvent("F6Cancel",src,false)
			            end)
		            end
	            else
	            TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Sapatos Roubado</b> na mochila.")
            end
        else
	    TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
    end


elseif item == "r3" then
	if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
		if vRP.getInventoryItemAmount(user_id,"brincoroubado") >= 10 then
			if vRP.tryGetInventoryItem(user_id,"brincoroubado",10) then
				TriggerClientEvent("progress",src,7000,"fazendo")
					vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
					inProgress[src] = true
				TriggerClientEvent("F6Cancel",src,true)
				SetTimeout(7000,function()
					vRPclient._stopAnim(src,false)
					vRP.giveMoney(user_id,parseInt(2500))
				TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Brinco Roubado</b>.")
					inProgress[src] = false
				TriggerClientEvent("F6Cancel",src,false)
			end)
		end
	else
	TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x  Brinco Roubado</b> na mochila.")
end
else
TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
end

elseif item == "r2" then
	if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
		if vRP.getInventoryItemAmount(user_id,"tabletroubado") >= 10 then
			if vRP.tryGetInventoryItem(user_id,"tabletroubado",10) then
				TriggerClientEvent("progress",src,7000,"fazendo")
					vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
					inProgress[src] = true
				TriggerClientEvent("F6Cancel",src,true)
				SetTimeout(7000,function()
					vRPclient._stopAnim(src,false)
					vRP.giveMoney(user_id,parseInt(10000))
				TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Tablet Roubado</b>.")
					inProgress[src] = false
				TriggerClientEvent("F6Cancel",src,false)
			end)
		end
	else
	TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Tablet Roubado</b> na mochila.")
end
else
TriggerClientEvent("Notify",src,"negado","Você não tem espaço o suficiente.")
end



					elseif item == "cg" then
						if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheiro-sujo") <= vRP.getInventoryMaxWeight(user_id) then
							if vRP.getInventoryItemAmount(user_id,"colarroubado") >= 10 then
								if vRP.tryGetInventoryItem(user_id,"colarroubado",10) then
									TriggerClientEvent("progress",src,7000,"fazendo")
										vRPclient._playAnim(src,false,{{"creatures@rottweiler@tricks@","petting_franklin"}},true)
										inProgress[src] = true
									TriggerClientEvent("F6Cancel",src,true)
									SetTimeout(7000,function()
										vRPclient._stopAnim(src,false)
										vRP.giveMoney(user_id,parseInt(2500))
									TriggerClientEvent("Notify",src,"sucesso","Você vendeu <b>10x Colar Roubado</b>.")
										inProgress[src] = false
									TriggerClientEvent("F6Cancel",src,false)
								end)
							end
						else
						TriggerClientEvent("Notify",src,"negado","Você não tem <b>10x Colar Roubado</b> na mochila.")
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