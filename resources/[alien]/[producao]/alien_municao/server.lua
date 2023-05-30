local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
dM = {}
Tunnel.bindInterface("alien_municao",dM)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ DM ] WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookmunicao = "---------------------1082551719579373638/FkcqfEIoCBQgBcHy0o28eq_je2mJ-gOZsn2bYuxIjytkXPnRja_Ym6UWq0wtRXH0nmlF"

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ DM ] ARRAY 
-----------------------------------------------------------------------------------------------------------------------------------------
local municao = {
	{ item = "ak" },
    { item = "fiveseven" },
    { item = "uzi" },
    { item = "mtar" },
    { item = "thompson" },
    
    { item = "m-ak" },
    { item = "m-fiveseven" },
    { item = "m-uzi" },
    { item = "m-mtar" },
	{ item = "m-thompson" }   
}
-----------------------------------------------------------------------------------------------------------------------------------
--[ DM ] EVENTOS 
-----------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("produzir-municao")
AddEventHandler("produzir-municao",function(item)
	local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if user_id then
		for k,v in pairs(municao) do
			if item == v.item then
                if item == "ak" then
                    if vRP.hasPermission(user_id,"municao.permissao") or vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_ASSAULTRIFLE") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodearma") >= 55 then
                            if vRP.getInventoryItemAmount(user_id,"pecadearma") >= 60 then
                                
                                    if vRP.tryGetInventoryItem(user_id,"armacaodearma",55) and vRP.tryGetInventoryItem(user_id,"pecadearma",60) then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"Montando AK47")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 1X DE AK47 "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wbody|WEAPON_ASSAULTRIFLE",1)
                                           TriggerClientEvent("Notify",source,"sucesso","Você montou uma <b>AK47</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>80x Peça de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>40x</b> Armação de Arma.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "fiveseven" then
                    if vRP.hasPermission(user_id,"municao.permissao") or vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_PISTOL_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodearma") >= 20 then
                            if vRP.getInventoryItemAmount(user_id,"pecadearma") >= 40 then

                                    if vRP.tryGetInventoryItem(user_id,"armacaodearma",20) and vRP.tryGetInventoryItem(user_id,"pecadearma",40) then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"Montando Five Seven")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 1X DE FIVESEVEN "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wbody|WEAPON_PISTOL_MK2",1)
                                           TriggerClientEvent("Notify",source,"sucesso","Você montou uma <b>Five Seven</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>50x Peça de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>10x</b> Armação de Arma.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "uzi" then
                    if vRP.hasPermission(user_id,"municao.permissao") or vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_MICROSMG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodearma") >= 30 then
                            if vRP.getInventoryItemAmount(user_id,"pecadearma") >= 50 then
            
                                    if vRP.tryGetInventoryItem(user_id,"armacaodearma",30) and vRP.tryGetInventoryItem(user_id,"pecadearma",50)  then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"Montando Uzi")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 1X DE UZI "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wbody|WEAPON_MICROSMG",1)
                                           TriggerClientEvent("Notify",source,"sucesso","Você montou uma <b>Uzi</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>20x Peça de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>60x</b> Armação de Arma.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "mtar" then
                    if vRP.hasPermission(user_id,"municao.permissao") or vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_ASSAULTSMG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodearma") >= 40 then
                            if vRP.getInventoryItemAmount(user_id,"pecadearma") >= 60 then
                                
                                    if vRP.tryGetInventoryItem(user_id,"armacaodearma",40) and vRP.tryGetInventoryItem(user_id,"pecadearma",60)  then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"Montando Mtar")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 1X DE MTAR "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wbody|WEAPON_ASSAULTSMG",1)
                                           TriggerClientEvent("Notify",source,"sucesso","Você montou uma <b>Mtar</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>70x Peça de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>30x</b> Armação de Arma.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "thompson" then
                    if vRP.hasPermission(user_id,"municao.permissao") or vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_GUSENBERG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"armacaodearma") >= 40 then
                            if vRP.getInventoryItemAmount(user_id,"pecadearma") >= 80 then

                                    if vRP.tryGetInventoryItem(user_id,"armacaodearma",40) and vRP.tryGetInventoryItem(user_id,"pecadearma",80) then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"Montando Thompson")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 1X DE THOMPSON "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wbody|WEAPON_GUSENBERG",1)
                                           TriggerClientEvent("Notify",source,"sucesso","Você montou uma <b>Thompson</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>80x Peça de Arma</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>40x</b> Armação de Arma.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end


                    













                elseif item == "m-ak" then
                    if vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wammo|WEAPON_ASSAULTRIFLE") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"polvora") >= 100 then
                            if vRP.getInventoryItemAmount(user_id,"capsulas") >= 100 then
                                
                                    if vRP.tryGetInventoryItem(user_id,"polvora",100) and vRP.tryGetInventoryItem(user_id,"capsulas",100)  then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"PROJETANDO MUNIÇÃO DE AK-103")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 100X DE MUNICAO DE AK47 "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wammo|WEAPON_ASSAULTRIFLE",100)
                                           TriggerClientEvent("Notify",source,"sucesso","Você produziu 100x Mun. de <b>AK-103</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>50x capsulas</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>50x</b>Polvora.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "m-fiveseven" then
                    if vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wammo|WEAPON_PISTOL_MK2") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"polvora") >= 40 then
                            if vRP.getInventoryItemAmount(user_id,"capsulas") >= 40  then
                                
                                    if vRP.tryGetInventoryItem(user_id,"polvora",40 ) and vRP.tryGetInventoryItem(user_id,"capsulas",40)  then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"PROJETANDO MUNIÇÃO DE FIVE")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 50X DE MUNICAO DE FIVESEVEN "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wammo|WEAPON_PISTOL_MK2",50)
                                           TriggerClientEvent("Notify",source,"sucesso","Você produziu 50x Mun. de <b>Five</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>30x capsulas</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>20x</b> Polvora.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "m-uzi" then
                    if vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wammo|WEAPON_MICROSMG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"polvora") >= 50 then
                            if vRP.getInventoryItemAmount(user_id,"capsulas") >= 50 then
                                
                                    if vRP.tryGetInventoryItem(user_id,"polvora",50) and vRP.tryGetInventoryItem(user_id,"capsulas",50) then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"PROJETANDO MUNIÇÃO DE Uzi")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 50X DE MUNICAO DE UZI "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wammo|WEAPON_MICROSMG",50)
                                           TriggerClientEvent("Notify",source,"sucesso","Você produziu 50x Mun. de <b>Uzi</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>30x capsulas</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>30x</b> Polvora.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "m-mtar" then
                    if vRP.hasPermission(user_id,"municao.permissao")  then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wammo|WEAPON_ASSAULTSMG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"polvora") >= 60 then
                            if vRP.getInventoryItemAmount(user_id,"capsulas") >= 60 then
                                
                                    if vRP.tryGetInventoryItem(user_id,"polvora",60) and vRP.tryGetInventoryItem(user_id,"capsulas",60) then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"PROJETANDO MUNIÇÃO DE MTAR")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 100X DE MUNICAO DE MTAR "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wammo|WEAPON_ASSAULTSMG",100)
                                           TriggerClientEvent("Notify",source,"sucesso","Você produziu 100x Mun. de <b>MTAR</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>50x capsulas</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>40x</b> Polvora.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
                elseif item == "m-thompson" then
                    if vRP.hasPermission(user_id,"municao.permissao") then
					if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wammo|WEAPON_GUSENBERG") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"polvora") >= 80 then
                            if vRP.getInventoryItemAmount(user_id,"capsulas") >= 80 then
                               
                                    if vRP.tryGetInventoryItem(user_id,"polvora",80) and vRP.tryGetInventoryItem(user_id,"capsulas",80)  then
                                        TriggerClientEvent("fechar-nui-municao",source)

                                        TriggerClientEvent("progress",source,15000,"PROJETANDO MUNIÇÃO DE THOMP")
                                        vRPclient._playAnim(source,false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                                        SendWebhookMessage(webhookmunicao,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[PRODUZIU]: 100X DE MUNICAO DE THOMPSON "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                        SetTimeout(15000,function()
                                           vRPclient._stopAnim(source,false)
                                           vRP.giveInventoryItem(user_id,"wammo|WEAPON_GUSENBERG",100)
                                           TriggerClientEvent("Notify",source,"sucesso","Você produziu 100x Mun. de <b>THOMPSON</b>.")
                                        end)
                                    end

                            else
                                TriggerClientEvent("Notify",source,"negado","Você precisa de <b>50x capsulas</b>.")
                            end
                        else
                            TriggerClientEvent("Notify",source,"negado","Você não tem <b>50x</b> Polvora.")
                        end
					else
						TriggerClientEvent("Notify",source,"negado","Espaço insuficiente na mochila.")
                    end
                    end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------
--[ DM ] FUNÇÃO DE PERMISSÃO 
-----------------------------------------------------------------------------------------------------------------------------------
function dM.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end