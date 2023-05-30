-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
eG = Tunnel.getInterface("alien-box")
local cFG = module("alien-box","box_config")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local open = false
function ToggleActionMenu(tela)
    if tela == 'box' then
        if open == false then
            open = true
            SetNuiFocus(true,true)
            SendNUIMessage({type='openBox', rewards = cFG.box,coins = eG.checkCoins(), winers = GlobalState.winers, configImg = GlobalState.imagesIP, config = cFG.geral})
            StartScreenEffect("MenuMGSelectionIn", 0, true)
        else
            open = false
            SetNuiFocus(false,false)
            SetCursorLocation(0.5,0.5)
            SendNUIMessage({type = "closeBox"})
            StopScreenEffect("MenuMGSelectionIn")
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- box
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('box', function()
    ToggleActionMenu('box')
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BoxClick
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("BoxClick", function(data, cb)
    if data.action == "closeNui" then
        ToggleActionMenu('box')
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- sendRewards
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('sendRewards', function(data, cb)
    local recompensas, raridades = eG.openBox(data.qtd)
    cb({recompensas = recompensas, raridades = raridades})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- sendRewards
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread( function()
        if not LocalPlayer.state.onlineTime then
            LocalPlayer.state:set('onlineTime', 0, true)
        end
        Citizen.Wait(60*1000)
        while true do
            local tempoOnline = LocalPlayer.state.onlineTime + 1
            LocalPlayer.state:set('onlineTime', tempoOnline, true)
            if tempoOnline % cFG.addCoinTime == 0 then
                eG.addCoin()
            end
            Citizen.Wait(60*1000)
        end
end)