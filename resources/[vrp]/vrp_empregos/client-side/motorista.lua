local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vMOTOR = Tunnel.getInterface("_motorista")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local emservico = false
local CoordenadaX = 453.48
local CoordenadaY = -607.74
local CoordenadaZ = 28.57
local timers = 0
local payment = 0

local pontos = {
	[1] = {453.48,-607.74,28.57},
	[2] = {-204.27, 6230.08, 31.49}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO LOCAL DE ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
local entregas = {
	[1] = { 308.59,-766.42,28.66 },
	[2] = { 395.97, -1023.15, 29.42 },
	[3] = { -107.80,-1688.88,28.63 },
	[4] = { -386.51,-1722.46,19.12 },
	[5] = { -267.24,-1284.43,30.27 },
	[6] = { -214.79,-999.27,28.63 },
	[7] = { -148.47,-819.45,30.74 },
	[8] = { -71.16,-606.53,35.60 },
	[9] = { 257.66,-376.19,43.95 },
	[10] = { 599.09,-79.97,70.64 },
	[11] = { 939.96,-274.40,66.46 },
	[12] = { 961.43,-478.69,60.95 },
	[13] = { 1100.74,-762.23,57.11 },
	[14] = { 1265.63,-562.07,68.35 },
	[15] = { 948.82,-144.06,73.86 },
	[16] = { 550.47,80.98,95.29 },
	[17] = { 499.14,271.05,102.39 },
	[18] = { 36.11,279.60,108.91 },
	[19] = { -457.15,255.10,82.36 },
	[20] = { -1064.98,274.64,63.23 },
	[21] = { -1548.01,-155.19,54.32 },
	[22] = { -1985.29,-479.98,11.02 },
	[23] = { -1386.62,-828.71,18.42 },
	[24] = { -1210.53,-1218.54,7.05 },
	[25] = { -1065.14,-1504.67,4.42 },
	[26] = { -1072.00,-1607.17,3.74 },
	[27] = { -1041.33,-1528.59,4.45 },
	[28] = { -960.84,-1241.13,4.70 },
	[29] = { -630.27,-976.03,20.69 },
	[30] = { -566.36,-667.19,32.54 },
	[31] = { 143.16,-819.09,30.48 },
	[32] = { 408.65,-704.50,28.62 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local oInfinity = 500
		if not emservico then
			local ped = PlayerPedId()
			if not IsPedInAnyVehicle(ped) then
				local x,y,z = table.unpack(GetEntityCoords(ped))
					for k, v in pairs (pontos) do 
					local distance = Vdist(x,y,z,pontos[k][1],pontos[k][2],pontos[k][3])

					if distance <= 30.0 then
					oInfinity = 4
						DrawMarker(23,pontos[k][1],pontos[k][2],pontos[k][3]-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,20,0,0,0,0)
						if distance <= 1.2 then
							dText("PRESSIONE  ~b~E~w~  PARA INICIAR ROTA",4,0.5,0.93,0.50,255,255,255,180)
							if IsControlJustPressed(1,38) then
								emservico = true
								startMotorista()
								destino = 1
								payment = 10
								cBlip(entregas,destino)
							end
						end
					end
				end
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
function startMotorista()
Citizen.CreateThread(function()
	while emservico  do
		local oInfinity = 500
		if emservico then
			local ped = PlayerPedId()
			if IsPedInAnyVehicle(ped) then
				local x,y,z = table.unpack(GetEntityCoords(ped))
				local vehicle = GetVehiclePedIsUsing(ped)
				local distance = Vdist(x,y,z,entregas[destino][1],entregas[destino][2],entregas[destino][3])
				oInfinity = 4
				if distance <= 100.0 and (IsVehicleModel(vehicle,GetHashKey("coach")) or IsVehicleModel(vehicle,GetHashKey("bus"))) then
					DrawMarker(21,entregas[destino][1],entregas[destino][2],entregas[destino][3]+0.60,0,0,0,0,180.0,130.0,2.0,2.0,1.0,211,176,72,100,1,0,0,1)
					if distance <= 7.1 then
						dText("PRESSIONE  ~b~E~w~  PARA CONTINUAR A ROTA",4,0.5,0.93,0.50,255,255,255,180)
						if IsControlJustPressed(1,38) then
							RemoveBlip(blip)
							if destino == 32 then
								vMOTOR.checkPayment(payment,20 )
								destino = 1
								payment = 10
							else
								vMOTOR.checkPayment(payment,0)
								destino = destino + 1
							end
							cBlip(entregas,destino)
						end
					end
				end

				-- if IsEntityAVehicle(vehicle) then
				-- 	local vehiclespeed = GetEntitySpeed(vehicle)*3.6
				-- 	if math.ceil(vehiclespeed) >= 65 and timers <= 0 and payment > 0 then
				-- 		timers = 5
				-- 		payment = payment - 1
				-- 		TriggerEvent("Notify","aviso","Limite de <b>60 KM/H</b> atingido e seu pagamento foi reduzido.",8000)
				-- 	end
				-- end
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		Citizen.Wait(5000)
		if emservico then
			if timers > 0 then
				timers = timers - 5
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		local oInfinity = 500
		if emservico then
			oInfinity = 4
			if IsControlJustPressed(1,168) then
				emservico = false
				RemoveBlip(blip)
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCOES
-----------------------------------------------------------------------------------------------------------------------------------------
function dText(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function cBlip(entregas,destino)
	blip = AddBlipForCoord(entregas[destino][1],entregas[destino][2],entregas[destino][3])
	SetBlipSprite(blip,1)
	SetBlipColour(blip,2)
	SetBlipScale(blip,0.4)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Rota de Motorista")
	EndTextCommandSetBlipName(blip)
end