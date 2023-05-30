local Tunnel = module("vrp", "lib/Tunnel")
local Alien = Tunnel.getInterface("lavagem")

local Cordenadas = {
    {x = 96.56, y = -1303.71, z = 29.26},
    {x = -1367.52, y = -625.56, z = 30.32}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for _, cordenada in ipairs(Cordenadas) do
            if #(coords - vector3(cordenada.x, cordenada.y, cordenada.z)) <= 1.2 then
                DrawText3Ds(cordenada.x, cordenada.y, cordenada.z, "PRESSIONE [~g~E~w~] PARA LAVAR DINHEIRO")
                if IsControlJustPressed(0, 38) then
                    Alien.lavarDinheiro()
                end
            end
        end
    end
end)

function DrawText3Ds(x, y, z, text)
    local onScreen, scrX, scrY = World3dToScreen2d(x, y, z)
    if onScreen then
        local factor = #text / 460
        local px, py, pz = table.unpack(GetGameplayCamCoords())
        SetTextScale(0.3, 0.3)
        SetTextFont(6)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 160)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(scrX, scrY)
        DrawRect(scrX, scrY + 0.0115, 0.02 + factor, 0.027, 28, 28, 28, 95)
    end
end
