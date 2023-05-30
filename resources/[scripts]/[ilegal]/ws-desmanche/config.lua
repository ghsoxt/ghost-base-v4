local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')

cfg = { }

-- Nome e local do esmanche| nomes iguais nao sao validos!

cfg.desmanche = {
    ['Motoclub'] = vec3(982.18, -136.02, 74.07),
    ['Hells'] = vec3(478.31, -1308.02, 29.24),

}

cfg.core = {
    deleteVehicle = function(veh)
        TriggerServerEvent("nation:deleteVehicleSync",VehToNet(veh)) --Descomente caso use a garagem do nation
    end,

    playAnim = function(bool,table,bool2)
        vRP.playAnim(bool,{table},bool2)
    end,

    stopAnim = function()
        vRP.stopAnim(false)
    end,
}

cfg.textos = {
    cancelar = "Pressione ~p~F7~p~ para cancelar!",
    seconds = function(seconds) return "Tempo restante para finalizar: ~p~"..seconds.."~p~ segundos!" end,
    moto = "PRESSIONE  ~p~E~p~  PARA DESMONTAR A MOTOCICLETA",
    finalizar = function(time) return "Tempo para finalizar o desmanche  ~p~"..time.."~p~ segundos!" end,
}

--Tempo limite para finalizar o desmanche // segundos
cfg.tempoLimite = 150

cfg.tempoDesmancheDaMoto = 2 -- Segundos


return cfg