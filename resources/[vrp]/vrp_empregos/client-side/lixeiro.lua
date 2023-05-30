local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vLIXEIRO = Tunnel.getInterface("_lixeiro")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local emservico = false
local recebersaco = false
local processo = false
local quantidade = 0
local segundos = 0
local veh
caminhao = nil

veiculos = {
	"trash",
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO LOCAL DE ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
local entregas = {
	[1] = {x=-163.59,y=-1669.44,z=32.94}, -- -163.59, -1669.44, 32.94
	[2] = {x=189.33,y=-1731.74,z=29.09},
	[3] = {x=374.33,y=-1981.48,z=24.06},
	[4] = {x=-95.46,y=-1672.73,z=29.00},
	[5] = {x=283.57,y=-2089.98,z=16.49},
	[6] = {x=946.17,y=-2107.25,z=30.31},
	[7] = {x=1219.29,y=-1201.87,z=36.13},
	[8] = {x=1245.41,y=-346.13,z=68.87},
	[9] = {x=1171.43,y=-317.08,z=68.95},
	[10] = {x=601.06,y=73.40,z=92.40},
	[11] = {x=381.54,y=253.23,z=102.80},
	[12] = {x=347.27,y=351.60,z=104.91},
	[13] = {x=219.18,y=387.58,z=106.48},
	[14] = {x=207.01,y=341.22,z=105.39},
	[15] = {x=20.01,y=371.52,z=112.18},
	[16] = {x=-192.32,y=419.96,z=109.79},
	[17] = {x=-371.32,y=510.87,z=118.99},
	[18] = {x=-761.93,y=689.78,z=143.83},
	[19] = {x=-1179.76,y=725.64,z=151.05},
	[20] = {x=-1317.95,y=629.89,z=136.32},
	[21] = {x=-1247.25,y=464.86,z=92.99},
	[22] = {x=-1154.15,y=-210.90,z=37.75},
	[23] = {x=-1328.89,y=-225.65,z=42.76},
	[24] = {x=-1279.72,y=-278.53,z=38.09},
	[25] = {x=-1391.83,y=-447.67,z=34.26},
	[26] = {x=-1166.70,y=-750.24,z=19.05},
	[27] = {x=-1191.25,y=-722.89,z=20.91},
	[28] = {x=-1254.73,y=-863.77,z=12.12},
	[29] = {x=-1320.87,y=-1092.04,z=6.69},
	[30] = {x=-1237.56,y=-1403.47,z=4.05}
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISTANCESERVICE
-----------------------------------------------------------------------------------------------------------------------------------------
local disService = {
    { -341.06,-1567.64,25.23,"Lixeiro" }
}
--- Function
function distanceService()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    for k,v in pairs(disService) do
        local distance = #(coords - vector3(v[1],v[2],v[3]))
        if distance <= 15 then
            return true,v[4]
        end
    end
    return false,nil
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("lixeiro",function(source,args,rawCommand)
	local ped = PlayerPedId()
	local distanceService,service = distanceService(source)
	if distanceService then
		if service == "Lixeiro" then
			if not emservico and IsPedInAnyVehicle(ped) then
				local veh = GetVehiclePedIsIn(PlayerPedId(), false)
				if Isveiculos(GetEntityModel(veh)) then
					caminhao = VehToNet(veh)
					SetEntityAsMissionEntity(veh, false, false)
					emservico = true
					TriggerEvent("Notify","aviso","aperte F7 se desejar finalizar o expediente.")
					quantidade = 1
					destino = 1
					cRLixeiro(entregas,destino)
					startLixeiro()
				end
			end
		end
	else
		TriggerEvent("Notify","aviso","Você esta longe de sua sede.",5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Start Lixeiro
-----------------------------------------------------------------------------------------------------------------------------------------
function startLixeiro()
Citizen.CreateThread(function()
	while emservico do
	local oInfinity = 500
	local ped = PlayerPedId()
	if emservico then
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),entregas[destino].x,entregas[destino].y,entregas[destino].z,true)
		local h = GetEntityHeading(PlayerPedId())
		local ui = GetMinimapAnchor()
		oInfinity = 4
			dLixeiro(ui.right_x+0.01,ui.bottom_y-0.060,1.0,1.0,0.35,"PRESSIONE ~r~F7 ~w~PARA DESEJA FINALIZAR O EXPEDIENTE",255,255,255,150)
			dLixeiro(ui.right_x+0.01,ui.bottom_y-0.040,1.0,1.0,0.45,"VÁ ATE O DESTINO E COLETE ~g~"..quantidade.." SACO DE LIXO~w~!",255,255,255,255)
			if distance <= 50 and not recebersaco and not IsVehicleModel(GetVehiclePedIsUsing(PlayerPedId()),GetHashKey("trash")) then
				DrawMarker(20,entregas[destino].x,entregas[destino].y,entregas[destino].z-0.10,0,0,0,0,180.0,130.0,2.0,2.0,1.0,121,206,121,100,1,0,0,1)
				if distance < 3 then
					dLixeiro1("PRESSIONE ~g~E~w~ PARA PEGAR O SACO DE LIXO",4,0.5,0.95,0.35,255,255,255,150)
					if IsControlJustPressed(0,38) then
						vLIXEIRO.ReceberItens()
						recebersaco = true
						vRP.CarregarObjeto("missfbi4prepp1","_bag_pickup_garbage_man","prop_cs_street_binbag_01",50,28422)
						TriggerEvent("Notify","aviso","Coloque o saco na parte traseira do caminhão, nada de correr ou pular.")
						RemoveBlip(blip)
					end
				end
			end
			if recebersaco then
			local markerCoords = GetOffsetFromEntityInWorldCoords(NetToVeh(caminhao), 0.0, -5.5, -1.8)
				if Vdist(markerCoords, coords) < 3 then
					colocarlixo = true
					receberlixo(liberarcacamba)
				end
			end	
			if emservico and not recebersaco then
				local markerCoords = GetOffsetFromEntityInWorldCoords(NetToVeh(caminhao), 0.0, -5.5, -1.8)
				if Vdist(markerCoords, coords) <= 3 then
					dLixeiro1("PRESSIONE ~g~E~w~ PARA COLOCAR OU ~g~G~w~ PARA RETIRAR DO CAMINHÃO",4,0.5,0.95,0.35,255,255,255,150)
					if IsControlJustPressed(0,47) and vLIXEIRO.ChecarItens() then
						vRP.CarregarObjeto("missfbi4prepp1","_bag_pickup_garbage_man","prop_cs_street_binbag_01",50,28422)
						despejarlixo = true
						abrircacamba(liberarcacamba)
						colocarlixo = true
						recebersaco = true
						TriggerEvent("Notify","aviso","Jogue o lixo no ponto marcado, nada de correr ou pular.")
					end
				end
			end
			if emservico and entregaritem then
				local distance = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),-348.88491821289,-1557.3649902344,25.334774017334,true)
				if distance <= 50 and not IsVehicleModel(GetVehiclePedIsUsing(PlayerPedId()),GetHashKey("trash")) then
					DrawMarker(20,-348.88491821289,-1557.3649902344,25.334774017334+0.10,0,0,0,0,180.0,130.0,2.0,2.0,1.0,121,206,121,100,1,0,0,1)
					if distance <= 5 then
						drawTaxi3D(-348.88491821289,-1557.3649902344,25.334774017334+0.5,"PRESSIONE ~g~E~w~ PARA JOGAR FORA")
						if IsControlJustPressed(0,38) and vLIXEIRO.ChecarItens() then
							vLIXEIRO.EntregarItens()
							TriggerEvent("Notify","sucesso","Você entregou um saco de lixo.")
							entregaritem = false
							recebersaco = false
							processo = true
							segundos = 5
							vRP._playAnim(false,{"missfbi4prepp1","_bag_throw_garbage_man"},true)
							TriggerEvent('cancelando',true)
							vRP.DeletarObjeto("one")
							Citizen.Wait(1000)
						end
					end
				end
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO MISSÃO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		local oInfinity = 500
		if emservico then 
			oInfinity = 4
			if IsControlJustPressed(0,168) then
				emservico = false
				recebersaco = false
				entregaritem = false
				vRP.DeletarObjeto("one")
				RemoveBlip(blip)
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO ANIMAÇÃO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		Citizen.Wait(500)
		if processo then
			if segundos > 0 then
				segundos = segundos - 1
				if segundos == 0 then
					processo = false
					vRP._stopAnim(false)
					TriggerEvent('cancelando',false)
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESABILITANDO TECLAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		local sleep = 500
		if recebersaco or entregaritem then
			sleep = 5
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,21,true)
			DisableControlAction(0,22,true)
		end
		if emservico then
			sleep = 5
			DisableControlAction(0,289,true)
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROIBIIR ARMAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while emservico do
		local oInfinity = 400
		local ped = PlayerPedId()
		if emservico then 
			oInfinity = 4
			if IsPedArmed(PlayerPedId(), 7)  then
				SetCurrentPedWeapon(PlayerPedId(), GetHashKey('WEAPON_UNARMED'), true)
				TriggerEvent("Notify","negado","Você não pode trabalhar armado, aperte F7 se deseja finalizar o expediente.")
			end
		end
		Citizen.Wait(oInfinity)
	end
end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCOES
-----------------------------------------------------------------------------------------------------------------------------------------
function Isveiculos(model)
	for _,v in pairs(veiculos) do
		if model == GetHashKey(v) then
			return true
		end
	end
	
	return false
end

function dLixeiro(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(4)
    SetTextScale(scale,scale)
    SetTextColour(r,g,b,a)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
end

function dLixeiro1(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function GetMinimapAnchor()
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.height = yscale * (res_y / 5.674)
    Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    Minimap.top_y = Minimap.bottom_y - Minimap.height
    Minimap.x = Minimap.left_x
    Minimap.y = Minimap.top_y
    Minimap.xunit = xscale
    Minimap.yunit = yscale
    return Minimap
end

function cRLixeiro(entregas,destino)
	blip = AddBlipForCoord(entregas[destino].x,entregas[destino].y,entregas[destino].z)
	SetBlipSprite(blip,1)
	SetBlipColour(blip,2)
	SetBlipScale(blip,0.4)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Coleta Seletiva de Lixo")
	EndTextCommandSetBlipName(blip)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ABRINDO CAÇAMBA CAMINHÃO
-----------------------------------------------------------------------------------------------------------------------------------------
function receberlixo(liberarcacamba)
	if colocarlixo then
	dLixeiro1("PRESSIONE ~g~E~w~ PARA COLOCAR OU ~g~G~w~ PARA RETIRAR DO CAMINHÃO",4,0.5,0.95,0.35,255,255,255,150)
		if IsControlJustPressed(0,38) then
		SetVehicleDoorOpen(NetToVeh(caminhao),5,false,false)
		processo = true
		segundos = 5
		vRP._playAnim(false,{"missfbi4prepp1","_bag_throw_garbage_man"},true)
		vRP.DeletarObjeto("one")
		Citizen.Wait(1000)
			if destino == 30 then
			destino = 1
			else
			destino = destino + 1
			end
		colocarlixo = false
		recebersaco = false
		entregaritem = false
		cRLixeiro(entregas,destino)
		TriggerEvent("Notify","aviso","Dirija até a localização marcada em seu gps para continuar trabalhando ou vá despejar o lixo que já coletou.")
		SetVehicleDoorShut(NetToVeh(caminhao),5,false, true)
		end
	end
end

function abrircacamba(liberarcacamba)
	if despejarlixo then
		SetVehicleDoorOpen(NetToVeh(caminhao),5,false,false)
		Citizen.Wait(1000)
		entregaritem = true
		SetVehicleDoorShut(NetToVeh(caminhao),5,false, true)
	end
end