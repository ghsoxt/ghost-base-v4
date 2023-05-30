local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPclient = Tunnel.getInterface('vRP')

vRP._prepare("getVehicleInfoDesmanche","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("mb_setDetido","UPDATE vrp_user_vehicles SET detido = @detido, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")

local webhookLink = ""

cl = Tunnel.getInterface('ws-desmanche')

config = { }

config.desmanche = {
    ['Motoclub'] = {permission = "motoclub.permissao"},
    ['Hells'] = {permission = "hells.permissao"},
}

config.core = {

    -- Função sempre executada quando inicia o desmanche
    verifyVehicle = function(source,user_id,coord)
        local vehInfo = {} -- Está tabela e retornada na funcao de finish!!
        local vehicle,vnetid,placa,vname,lock,banned,trunk = vRPclient.vehList(source,2)
        if vehicle and placa and vname then
            if not banned then
                local dono = vRP.getUserByRegistration(placa)
                if dono then
					local veh = vRP.query("getVehicleInfoDesmanche",{ user_id = parseInt(dono), vehicle = vname })
                    if veh then
                        if #veh <= 0 then
                            return false,"Veículo não encontrado na lista do proprietário."
                        end
                        if parseInt(veh[1].detido) == 1 then
                            return false,"Veículo encontra-se apreendido na seguradora."
                        end
                        if dono == user_id then
                          return false,"Você não pode desmanchar seu proprio veiculo!"
                        end
 
                        vehInfo.vnetid = vnetid
                        vehInfo.coord = coord
                        vehInfo.vehicle = vehicle
                        vehInfo.price = vRP.vehiclePrice(vname)
                        vehInfo.model = vname
                        vehInfo.placa = placa
                        vehInfo.dono = dono

                        return true,vehInfo
                    end
                end
            else
                return false,"Você não pode desmanchar veiculos proibidos!"
            end
        else
            return false,"Nem um veiculo encontrado!"
        end
    end,

    -- Função sempre executada quando finalza o desmanche
    finish = function(source,vehicle,vehInfo,index)
        local user_id = vRP.getUserId(source)
        if user_id then
            if vehInfo and index then
                local item = 'dinheiro-sujo'
                local porcentagem = 0.10 -- 0.5%
                local pagamento = parseInt(vehInfo.price * porcentagem)

                -- vRP.giveMoney(user_id,pagamento) Pagamento em dinheiro limpo.
                vRP.giveInventoryItem(user_id,item,pagamento) -- Pagamento em dinheiro sujo.
                TriggerClientEvent('Notify',source,'sucesso','Você recebeu R$'..pagamento.."")

                TriggerEvent("nation:deleteVehicleSync",vehInfo.vnetid) -- Descomente caso use nation_garages
                vRP.execute("mb_setDetido",{ user_id = vehInfo.dono, vehicle = vehInfo.model, detido = 1, time = parseInt(os.time()) })
                webhook(webhookLink,"```prolog\n [DESMANCHE "..index.."]\n[USER ID]:"..user_id.."\n[VEICULO]:"..vehInfo.model.."\n[DONO DO VEICULO]:"..vehInfo.dono.."\n[PLACA]:"..vehInfo.placa..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."\n```")
            end
        end
    end,

    -- Função executada quando cancela o desmanche do veiculo
    cancel = function(source,veh,index,vehicle)
        if veh and veh.dono and veh.vehicle and veh.model and veh.placa then
            TriggerEvent("nation:deleteVehicleSync",veh.vnetid) -- Descomente caso use nation_garages
            webhook(webhookLink,"```prolog\n [DESMANCHE "..index.." - CANCELADO]\n[USER ID]:"..vRP.getUserId(source).."\n[VEICULO]:"..veh.model.."\n[DONO DO VEICULO]:"..veh.dono.."\n[PLACA]:"..veh.placa..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."\n```")
            TriggerClientEvent('Notify',source,'aviso','O veiculo foi recuperado pela policia!')
        end
    end,

    -- Função para verificar a permissão
    hasPermission = function(user_id,perm)
        return vRP.hasPermission(user_id,perm)
    end,

    -- Habilita para que assim que o player acessar o entrar no desmanche ele entra em uma sessao privada
    sistemaDeSessao = false,

} 


function webhook(webhook,message)
    if webhook ~= "none" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end