-----------------------------------------------------------------------------------------------------------------------------------------
--[ vRP ]--------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ CONEXÃO ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Resg = Tunnel.getInterface("alien_hp")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ VARIÁVEIS ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
--[ REANIMAR ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('reanimar')
AddEventHandler('reanimar',function()
	local handle,ped = FindFirstPed()
	local finished = false
	local reviver = nil
	repeat
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),GetEntityCoords(ped),true)
		if IsPedDeadOrDying(ped) and not IsPedAPlayer(ped) and distance <= 1.5 and reviver == nil then
			reviver = ped
			TriggerEvent("cancelando",true)
			vRP._playAnim(false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
			TriggerEvent("progress",15000,"reanimando")
			SetTimeout(15000,function()
				SetEntityHealth(reviver,110)
				local newped = ClonePed(reviver,GetEntityHeading(reviver),true,true)
				TaskWanderStandard(newped,10.0,10)
				local model = GetEntityModel(reviver)
				SetModelAsNoLongerNeeded(model)
				Citizen.InvokeNative(0xAD738C3085FE7E11,reviver,true,true)
				TriggerServerEvent("trydeleteped",PedToNet(reviver))
				vRP._stopAnim(false)
				TriggerServerEvent("reanimar:pagamento")
				TriggerEvent("cancelando",false)
			end)
			finished = true
		end
		finished,ped = FindNextPed(handle)
	until not finished
	EndFindPed(handle)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ MACAS DO HOSPITAL ]------------------------------------------------------------------------------------------------------------------ 
-----------------------------------------------------------------------------------------------------------------------------------------
local macas = {
	
	{ ['x'] = 1123.3, ['y'] = -1538.48, ['z'] = 34.98, ['x2'] = 1124.26, ['y2'] = -1538.37, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1120.31, ['y'] = -1538.37, ['z'] = 34.98, ['x2'] = 1121.23, ['y2'] = -1538.37, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1126.3, ['y'] = -1538.43, ['z'] = 34.98, ['x2'] = 1127.23, ['y2'] = -1538.37, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },

	{ ['x'] = 1119.47, ['y'] = -1547.06, ['z'] = 34.98, ['x2'] = 1120.41, ['y2'] = -1547.11, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1125.74, ['y'] = -1547.0, ['z'] = 34.98, ['x2'] = 1126.65, ['y2'] = -1547.11, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1122.65, ['y'] = -1546.94, ['z'] = 34.98,['x2'] = 1123.56, ['y2'] = -1547.11, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },

	{ ['x'] = 1120.71, ['y'] = -1553.75, ['z'] = 34.98, ['x2'] = 1121.65, ['y2'] = -1553.65, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1123.56, ['y'] = -1553.71, ['z'] = 34.98, ['x2'] = 1124.49, ['y2'] = -1553.65, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1126.45, ['y'] = -1553.73, ['z'] = 34.98, ['x2'] = 1127.39, ['y2'] = -1553.65, ['z2'] = 35.9, ['h'] = 360.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	
	{ ['x'] = 1125.57, ['y'] = -1562.19, ['z'] = 34.98, ['x2'] = 1126.42, ['y2'] = -1562.29, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1122.79, ['y'] = -1562.19, ['z'] = 34.98, ['x2'] = 1123.65, ['y2'] = -1562.29, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	{ ['x'] = 1120.09, ['y'] = -1562.3, ['z'] = 34.98, ['x2'] = 1120.93, ['y2'] = -1562.29, ['z2'] = 35.9, ['h'] = 180.0, ['texto'] = "Pressione [~y~E~w~] para deitar   ~y~&~w~   [~y~G~w~] para iniciar tratamento." },
	

	--{ ['x'] = -799.12, ['y'] = -1213.0, ['z'] = 7.34, ['x2'] = -799.65, ['y2'] = -1212.68, ['z2'] = 8.34, ['h'] = 312.0, ['texto'] = "Pressione [~y~E~w~] para deitar." },
	--{ ['x'] = -795.69, ['y'] = -1215.94, ['z'] = 7.34, ['x2'] = -795.07, ['y2'] = -1216.64, ['z2'] = 8.32, ['h'] = 307.0, ['texto'] = "Pressione [~y~E~w~] para deitar." },
	--{ ['x'] = -791.24, ['y'] = -1220.46, ['z'] = 7.34, ['x2'] = -790.54, ['y2'] = -1220.77, ['z2'] = 8.32, ['h'] = 311.0, ['texto'] = "Pressione [~y~E~w~] para deitar." },
	--{ ['x'] = -455.67, ['y'] = -316.36, ['z'] = 34.92, ['x2'] = -456.04, ['y2'] = -315.6, ['z2'] = 35.68, ['h'] = 290.32, ['texto'] = "Pressione [~y~E~w~] para deitar." },
	--{ ['x'] = -450.56, ['y'] = -322.27, ['z'] = 34.92, ['x2'] = -450.47, ['y2'] = -323.01, ['z2'] = 35.69, ['h'] = 276.05, ['texto'] = "Pressione [~y~E~w~] para deitar." },
}
-----------------------------------------------------------------------------------------------------------------------------------------
--[ USO ]-------------------------------------------------------------------------------------------------------------------------------- 
-----------------------------------------------------------------------------------------------------------------------------------------
local emMaca = false
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		for k,v in pairs(macas) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			local cod = macas[k]

			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cod.x, cod.y, cod.z, true ) < 1.2 then
				
				DrawText3D(cod.x, cod.y, cod.z, cod.texto)
			end

			if distance < 1.2 then

				idle = 5

				if IsControlJustPressed(0,38) then
					SetEntityCoords(ped,v.x2,v.y2,v.z2)
					SetEntityHeading(ped,v.h)
					vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
					emMaca = true
				end

				if IsControlJustPressed(0,47) then
					if Resg.checkServices() then
						TriggerEvent('tratamento-macas')
						TriggerEvent('resetDiagnostic')
						TriggerEvent('resetWarfarina')
						SetEntityCoords(ped,v.x2,v.y2,v.z2)
						SetEntityHeading(ped,v.h)
						vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
					else
						TriggerEvent("Notify","Aviso","Existem paramédicos em serviço.")
					end
				end

			end

			if IsControlJustPressed(0,167) and emMaca then
				ClearPedTasks(GetPlayerPed(-1))
				emMaca = false
			end
		end

		Citizen.Wait(idle)
	end
end)

RegisterNetEvent('tratamento-macas')
AddEventHandler('tratamento-macas',function()
	TriggerEvent("cancelando",true)
	repeat
		SetEntityHealth(PlayerPedId(),GetEntityHealth(PlayerPedId())+1)
		Citizen.Wait(500)
	until GetEntityHealth(PlayerPedId()) >= 400 or GetEntityHealth(PlayerPedId()) <= 100
	TriggerEvent("Notify","Importante","Tratamento concluido.")
	TriggerEvent("cancelando",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ TRATAMENTO ]-------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local tratamento = false
RegisterNetEvent("tratamento")
AddEventHandler("tratamento",function()
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped)
    local armour = GetPedArmour(ped)

    SetEntityHealth(ped,health)
    --SetPedArmour(ped,armour)
	TriggerEvent("Ph1668",armour)
	
	if emMaca then
		if tratamento then
			return
		end

		tratamento = true
		TriggerEvent("Notify","Sucesso","Tratamento iniciado, aguarde a liberação do <b>profissional médico.</b>.")
		TriggerEvent('resetWarfarina')
		TriggerEvent('resetDiagnostic')
		

		if tratamento then
			repeat
				Citizen.Wait(600)
				if GetEntityHealth(ped) > 101 then
					SetEntityHealth(ped,GetEntityHealth(ped)+1)
				end
			until GetEntityHealth(ped) >= 400 or GetEntityHealth(ped) <= 101
				TriggerEvent("Notify","Sucesso","Tratamento concluido.")
				tratamento = false
		end
	else
		TriggerEvent("Notify","Negado","Você precisa estar deitado em uma maca para ser tratado.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function DrawText3D(x,y,z, text)
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