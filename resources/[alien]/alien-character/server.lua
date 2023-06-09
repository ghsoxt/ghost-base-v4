local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

PL = {}
Tunnel.bindInterface("alien-character", PL)
vSERVER = Tunnel.getInterface("alien-character")

local userlogin = {}

RegisterCommand("character",function(source)
    TriggerClientEvent("alien-character:characterCreate",source)
end)

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
    if first_spawn then
        local data = vRP.getUData(user_id,"vRP:spawnController")
        local spawnStatus = json.decode(data) or 0
        SetTimeout(500, function()
            processSpawnController(source, spawnStatus, user_id)
        end)
    end
end)

function processSpawnController(source,statusSent,user_id)
    local source = source
    if statusSent == 2 then
        if not userlogin[user_id] then
            userlogin[user_id] = true
            doSpawnPlayer(source,user_id,false)
        else
            doSpawnPlayer(source,user_id,true)
        end
    elseif statusSent == 1 or statusSent == 0 then
        userlogin[user_id] = true
        TriggerClientEvent("alien-character:characterCreate",source)
    end
end

function PL.finishedCharacter(characterNome, characterSobrenome, characterAge, currentCharacterMode)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

    if user_id then
        local player = vRP.getUserSource(user_id)
        vRP.execute("EG/add_vehicleLeads",{ user_id = user_id, vehicle = 'golfrebaixado', ipva = parseInt(os.time()) })
        vRP.execute("EG/add_vehicleLeads",{ user_id = user_id, vehicle = 'africat', ipva = parseInt(os.time()) })
        vRP.giveInventoryItem(user_id, "roupas", 1, false, 1)
        vRP.giveInventoryItem(user_id, "celular", 1, false, 2)
        vRP.setUData(user_id,"currentCharacterMode", json.encode(currentCharacterMode))
        vRP.setUData(user_id,"vRP:spawnController", json.encode(2))
        vRP.execute("vRP/update_user_first_spawn", {user_id = user_id,name = characterNome,firstname = characterSobrenome,age = characterAge})
        doSpawnPlayer(source,user_id,true)
    end
end

function doSpawnPlayer(source,user_id,firstspawn)
    TriggerClientEvent("alien-character:normalSpawn",source,firstspawn)
    TriggerEvent("disney-barbershop:init",user_id)
end

