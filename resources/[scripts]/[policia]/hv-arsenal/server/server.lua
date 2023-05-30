-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
--------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
---------------------------------------------------------------------------------------------------------------------------------------
hvSERVER = {}
Tunnel.bindInterface("hv-arsenal",hvSERVER)
hvCLIENT = Tunnel.getInterface("hv-arsenal")
local config = module("hv-arsenal","cfg/config")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local shieldTimer = {}
local foodTimer = {}
local reloadTimer = {}
local weaponTimer = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
function SendWebhookMessage(webhook,message)
    if webhook ~= nil and webhook ~= "" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.checkPerm()
    local source = source
    local user_id = vRP.getUserId(source) 
    if user_id then
        if vRP.hasPermission(user_id, config["permission"]) then
            return true
        else
            hvCLIENT.shopNotify(source,"negado","Você não tem permissão.",6000)
            return false
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET JOB
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.getJob()
    local source = source
    local user_id = vRP.getUserId(source) 
    if user_id then
        local job = vRP.getUserGroupByType(user_id,"job")
        if job == '' then job = 'Nenhum' end
        return job
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET WEAPON WEIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.getWeight(index)
    return vRP.getItemWeight("wbody|"..index)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK PERM AND SET SHIELD
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.setArmour()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, config["permission"]) then
            if os.time() >= parseInt(shieldTimer[user_id]) then
                vRPclient.setArmour(source,100)
                shieldTimer[user_id] = (os.time() + (config.shieldTime*60))
                hvCLIENT.shopNotify(source,"sucesso","Colete balistico equipado com sucesso.")
                if config.webhook["shield"] ~= "" then
                    local identity = vRP.getUserIdentity(user_id)
                    SendWebhookMessage(config.webhook["shield"],"```ini\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[EQUIPOU SEU COLETE]"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                end
            else
                local time = ((parseInt(shieldTimer[user_id]) - os.time())/60)
                hvCLIENT.shopNotify(source,"negado","Você precisa esperar "..parseInt(time).." minutos, para equipar seu colete.")
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET MARMITEX
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.getFood()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, config["permission"]) then
            if os.time() >= parseInt(foodTimer[user_id]) then
                for k,v in pairs(config["foodKit"]) do
                    vRP.giveInventoryItem(user_id,k,parseInt(v))
                end
                foodTimer[user_id] = (os.time() + (config.foodTime*60))
                hvCLIENT.shopNotify(source,"sucesso","Sua comida foi entregue, boa refeição.")

                if config.webhook["food"] ~= "" then
                    local identity = vRP.getUserIdentity(user_id)
                    SendWebhookMessage(config.webhook["food"],"```ini\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[RESGATOU SUA MARMITEX]"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                end
            else
                local time = ((parseInt(foodTimer[user_id]) - os.time())/60)
                hvCLIENT.shopNotify(source,"negado","Você precisa esperar "..parseInt(time).." minutos, para pegar sua refeição.")
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET RELOAD WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.reloadWeapon(index)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, config["permission"]) then
            if reloadTimer[user_id] then
                if os.time() >= parseInt(reloadTimer[user_id][index]) then
                    vRPclient.giveWeapons(source, {[index] = { ammo = config["guns"][index]["ammoRecived"] }})
                    reloadTimer[user_id][index] = (os.time() + (config.reloadTime*60))
                    hvCLIENT.shopNotify(source,"sucesso","Sua arma foi recarregada.")

                    if config.webhook["reload"] ~= "" then
                        local identity = vRP.getUserIdentity(user_id)
                        SendWebhookMessage(config.webhook["reload"],"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[RECARREGOU]: "..index.." | "..config["guns"][index]["ammoRecived"].."x Munições"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                    end
                else
                    local time = ((parseInt(reloadTimer[user_id][index]) - os.time())/60)
                    hvCLIENT.shopNotify(source,"negado","Você precisa esperar "..parseInt(time).." minutos, para recarregar sua arma.")
                end
            else 
                reloadTimer[user_id] = {}
                reloadTimer[user_id][index] = (os.time() + (config.reloadTime*60))
                vRPclient.giveWeapons(source, {[index] = { ammo = config["guns"][index]["ammoRecived"] }})
                hvCLIENT.shopNotify(source,"sucesso","Sua arma foi recarregada.")

                if config.webhook["reload"] ~= "" then
                    local identity = vRP.getUserIdentity(user_id)
                    SendWebhookMessage(config.webhook["reload"],"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[RECARREGOU]: "..index.." | "..config["guns"][index]["ammoRecived"].."x Munições"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                end
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.getWeapon(index, ammo)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, config["permission"]) then
            if weaponTimer[user_id] then
                if os.time() >= parseInt(weaponTimer[user_id][index]) then
                    weaponTimer[user_id][index] = (os.time() + (config["guns"][index]["block_time"]*60))

                    if config.webhook["equip"] ~= "" then
                        local identity = vRP.getUserIdentity(user_id)
                        SendWebhookMessage(config.webhook["equip"],"```ini\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[EQUIPOU]: "..index.." | "..ammo.."x Munições"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                    end

                    if index == config["comunicator"] then
                        return vRP.giveInventoryItem(user_id,index,config["guns"][index]["ammoRecived"])
                    end

                    vRPclient.giveWeapons(source, {[index] = { ammo = config["guns"][index]["ammoRecived"] }})
                    hvCLIENT.shopNotify(source,"sucesso","Sua arma foi equipada.")
                else
                    local time = ((parseInt(weaponTimer[user_id][index]) - os.time())/60)
                    hvCLIENT.shopNotify(source,"negado","Você precisa esperar "..parseInt(time).." minutos, para equipar essa arma.")
                end
            else 
                weaponTimer[user_id] = {}
                weaponTimer[user_id][index] = (os.time() + (config["guns"][index]["block_time"]*60))

                if config.webhook["equip"] ~= "" then
                    local identity = vRP.getUserIdentity(user_id)
                    SendWebhookMessage(config.webhook["equip"],"```ini\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[EQUIPOU]: "..index.." | "..ammo.."x Munições"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                end

                if index == config["comunicator"] then
                    return vRP.giveInventoryItem(user_id,index,config["guns"][index]["ammoRecived"])
                end

                vRPclient.giveWeapons(source, {[index] = { ammo = config["guns"][index]["ammoRecived"] }})
                hvCLIENT.shopNotify(source,"sucesso","Sua arma foi equipada.")
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEAR WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
function hvSERVER.clearWeapons()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.request(source,"Você deseja realmente limpar todos os seus equipamentos?",30) then
            vRPclient.replaceWeapons(source,{})
            hvCLIENT.shopNotify(source,"sucesso","Sua armas foram removidas com sucesso.")

            if config.webhook["clear"] ~= "" then
                local identity = vRP.getUserIdentity(user_id)
                SendWebhookMessage(config.webhook["clear"],"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[LIMPOU SEU ARMAMENTO]"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
            end
        end
    end
end