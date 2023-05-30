local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local vRP = Proxy.getInterface("vRP")
local vRPclient = Tunnel.getInterface("vRP")

local Alien = {}
Tunnel.bindInterface("lavagem", Alien)

local webhookdlavagem = ""

local function SendWebhookMessage(webhook, message)
    PerformHttpRequest(webhook, function() end, 'POST', json.encode({content = message}), {['Content-Type'] = 'application/json'})
end

function Alien.lavarDinheiro()
    local source = source
    local user_id = vRP.getUserId(source)
    
    if not user_id then return end
    
    local banco = vRP.getBankMoney(user_id)
    local valor = tonumber(vRP.prompt(source, "Quanto dinheiro você deseja lavar:", ""))
    local taxaMaquina = 0.90

    if not valor or valor <= 0 then 
        return TriggerClientEvent("Notify", source, "nAlienado", "Você precisa inserir um valor válido para confirmar sua solicitação.")
    end
        
    if vRP.getInventoryItemAmount(user_id, "dinheiro-sujo") < valor then
        return TriggerClientEvent("Notify", source, "negado", "Você não tem <b>dinheiro sujo</b> suficiente na mochila.")
    end
    
    TriggerClientEvent("progress", source, 10000, "Lavando Dinheiro")
    vRPclient._playAnim(source, false, {{"anim@heists@prison_heistig1_p1_guard_checks_bus", "loop"}}, true)
    vRP.tryGetInventoryItem(user_id, "dinheiro-sujo", valor)
    SetTimeout(10000, function()
        local valorfinal = valor * taxaMaquina
        vRPclient._stopAnim(source, false)
        vRP.setBankMoney(user_id, banco + valorfinal)
        TriggerClientEvent("Notify", source, "sucesso", "Você lavou <b>$"..valor.."</b> Dinheiro sujo.\n E recebeu <b>$"..valorfinal.."</b> de dinheiro limpo.")
        SendWebhookMessage(webhookdlavagem, "```prolog\n[ID]: "..user_id.." \n[LAVOU]: "..valor.." Dinheiro Sujo "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."\r```")
    end)
end
