local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
juH = Tunnel.getInterface("_laranja")


-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = false
local servico = false
local selecionado = 0
local CoordenadaX = 2416.37
local CoordenadaY = 4993.89 -- 2416.37,4993.89,46.23
local CoordenadaZ = 46.23
local processo = false
local segundos = 0


-----------------------------------------------------------------------------------------------------------------------------------------
-- RESIDENCIAS
-----------------------------------------------------------------------------------------------------------------------------------------
local locs = {
	[1] = { ['x'] = 2390.42, ['y'] = 4992.6, ['z'] = 45.23 },
	[2] = { ['x'] = 2389.82, ['y'] = 5004.95, ['z'] = 45.76 },
	[3] = { ['x'] = 2374.57, ['y'] = 4988.88, ['z'] = 44.04 }, 
	[4] = { ['x'] = 2377.79, ['y'] = 5004.34, ['z'] = 44.66 },
	[5] = { ['x'] = 2376.4, ['y'] = 5017.29, ['z'] = 45.46 }, 
	[6] = { ['x'] = 2362.13, ['y'] = 4976.54, ['z'] = 43.26 }, 
	[7] = { ['x'] = 2362.15, ['y'] = 4989.05, ['z'] = 43.37 }, 
	[8] = { ['x'] = 2349.66, ['y'] = 4976.19, ['z'] = 42.8 }, 
	[9] = { ['x'] = 2349.83, ['y'] = 4989.84, ['z'] = 43.05 }, 
	[10] = { ['x'] = 2336.69, ['y'] = 4976.23, ['z'] = 42.63 },  
	[11] = { ['x'] = 2345.07, ['y'] = 5008.16, ['z'] = 42.77 }, 
	[12] = { ['x'] = 2332.19, ['y'] = 4996.74, ['z'] = 42.15 }, 
	[13] = { ['x'] = 2317.93, ['y'] = 4983.94, ['z'] = 41.78 }, 
	[14] = { ['x'] = 2317.58, ['y'] = 4994.3, ['z'] = 42.07 },
	[15] = { ['x'] = 2305.29, ['y'] = 4997.04, ['z'] = 42.31 },
	[16] = { ['x'] = 2317.07, ['y'] = 5008.49, ['z'] = 42.52 },
	[17] = { ['x'] = 2330.76, ['y'] = 5021.53, ['z'] = 42.9 },
	[18] = { ['x'] = 2316.95, ['y'] = 5023.28, ['z'] = 43.3 },
	[19] = { ['x'] = 2329.48, ['y'] = 5036.44, ['z'] = 44.38 },
	[20] = { ['x'] = 2341.96, ['y'] = 5034.5, ['z'] = 44.29 },
	[21] = { ['x'] = 2344.23, ['y'] = 5022.81, ['z'] = 43.56 },
	[22] = { ['x'] = 2344.94, ['y'] = 5008.12, ['z'] = 42.77 },
	[23] = { ['x'] = 2357.82, ['y'] = 5020.43, ['z'] = 43.94 },
}



-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		if not servico then
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(CoordenadaX,CoordenadaY,CoordenadaZ)
			local distance = GetDistanceBetweenCoords(CoordenadaX,CoordenadaY,cdz,x,y,z,true)

			if distance <= 50 then
				idle = 5
				DrawMarker(30,CoordenadaX,CoordenadaY,CoordenadaZ-0.6,0,0,0,0.0,0,0,0.5,0.5,0.5,255,69,0,600,0,0,0,1)
				if distance <= 1.2 then
					drawTxt("PRESSIONE  ~o~E~w~  PARA INCIAR O SERVIÇO",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
						servico = true
						selecionado = math.random(23)
						CriandoBlip(locs,selecionado)
						TriggerEvent("Notify","sucesso","Você entrou em serviço.")
					end
				end
			end
		end
		Citizen.Wait(idle)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTREGAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		if servico then
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(locs[selecionado].x,locs[selecionado].y,locs[selecionado].z)
			local distance = GetDistanceBetweenCoords(locs[selecionado].x,locs[selecionado].y,cdz,x,y,z,true)
			
			if distance <= 200 then
				idle = 5
				DrawMarker(21,locs[selecionado].x,locs[selecionado].y,locs[selecionado].z-0.6,0,0,0,0,180.0,130.0,0.8,0.5,0.8,255,69,0,300,0,1,1,1)
				if distance <= 1.2 then
					drawTxt("PRESSIONE  ~o~E~w~  PARA COLHER ~o~LARANJA",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
						if juH.checkPayment() then
							TriggerEvent('cancelando',true)
							RemoveBlip(blips)
							backentrega = selecionado
							processo = true
							segundos = 7
							vRP._playAnim(false,{{"amb@prop_human_movie_bulb@base","base"}},true)
							while true do
								if backentrega == selecionado then
									selecionado = math.random(23)
								else
									break
								end
								Citizen.Wait(1)
							end
							CriandoBlip(locs,selecionado)
						end
					end
				end
			end
		end
		Citizen.Wait(idle)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		if servico then
			if IsControlJustPressed(0,168) then
				TriggerEvent("Notify","sucesso","Você saiu de serviço.")
				servico = false
				RemoveBlip(blips)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if segundos > 0 then
			segundos = segundos - 1
			if segundos == 0 then
				processo = false
				TriggerEvent('cancelando',false)
				ClearPedTasks(PlayerPedId())
			end
		end
	end
end)


----- 
Citizen.CreateThread(function()
	while true do
      Citizen.Wait(1)
      if servico then
			drawTxt("~w~PRESSIONE ~o~F7 ~w~SE DESEJA FINALIZAR A COLHEITA ",4,0.120,0.905,0.45,255,255,255,200)
			drawTxt("VA ATÉ O DESTINO PARA COLETAR AS ~o~LARANJAS",4,0.120,0.93,0.45,255,255,255,200)
      end
	end
end)
--------
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
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

function CriandoBlip(locs,selecionado)
	blips = AddBlipForCoord(locs[selecionado].x,locs[selecionado].y,locs[selecionado].z)
	SetBlipSprite(blips,1)
	SetBlipColour(blips,5)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
	SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Coletar Laranjas")
	EndTextCommandSetBlipName(blips)
end


