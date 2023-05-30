-----------------------------------------------------------------------------------------------------------------------------------------
-- DISPATCH
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	for i = 1,120 do
		EnableDispatchService(i,false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVE WEAPON VEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread(function()
-- 	local sleep = 1000
-- 	while true do
-- 		local ped = PlayerPedId()
-- 		if IsPedInAnyVehicle(ped) then
			
-- 			local vehicle = GetVehiclePedIsIn(PlayerPedId())
-- 			if GetPedInVehicleSeat(vehicle,-1) == ped then
-- 				sleep = 5
-- 				local speed = GetEntitySpeed(vehicle)*2.236936
-- 				if speed >= 40 then
					
-- 					SetPlayerCanDoDriveBy(PlayerId(),false)
-- 				else
-- 					SetPlayerCanDoDriveBy(PlayerId(),true)
-- 				end
-- 			end
-- 		end
-- 		Citizen.Wait(sleep)
-- 	end
-- end)
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- DRIFT
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(100)
--         local ped = PlayerPedId()
--         local vehicle = GetVehiclePedIsIn(PlayerPedId())
--         if IsPedInAnyVehicle(ped) then
--             local speed = GetEntitySpeed(vehicle)*2.236936
--             if GetPedInVehicleSeat(vehicle,-1) == ped 
--                 and (GetEntityModel(vehicle) ~= GetHashKey("coach") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("bus") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("youga2") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("ratloader") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("taxi") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("boxville4") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("trash2") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("tiptruck") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("rebel") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("speedo") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("phantom") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("packer") 
--                     and GetEntityModel(vehicle) ~= GetHashKey("paramedicoambu")) then
--                     if speed <= 100.0 then
--                     if IsControlPressed(1,21) then
--                         SetVehicleReduceGrip(vehicle,true)
--                     else
--                         SetVehicleReduceGrip(vehicle,false)
--                     end
--                 end    
--             end
--         end
--     end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVER X NA MOTO
-----------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread(function()
--     while true do
--         local timeDistance = 500
--         local ped = PlayerPedId()
--         if IsPedInAnyVehicle(ped) then
--             local vehicle = GetVehiclePedIsIn(ped)
--             if (GetPedInVehicleSeat(vehicle, -1) == ped or GetPedInVehicleSeat(vehicle, 0) == ped) and GetVehicleClass(vehicle) == 8 then
--                 timeDistance = 4
--                 DisableControlAction(0, 345, true)
--             end
--         end
		
--         Citizen.Wait(timeDistance)
--     end
-- end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ REMOVER O Q ]-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local timing = 1000
        local ped = PlayerPedId()
        local health = GetEntityHealth(ped)
        if health >= 101 then
			timing = 5 
        DisableControlAction(0,44,true)
        end
		Citizen.Wait(timing)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DAMAGE WALK MODE
-----------------------------------------------------------------------------------------------------------------------------------------
local hurt = false
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		local ped = PlayerPedId()
		if not IsEntityInWater(ped) then
			if GetEntityHealth(ped) <= 150 then
				idle = 5
				setHurt()
			elseif hurt and GetEntityHealth(ped) > 151 then
				setNotHurt()
			end
		end
		Citizen.Wait(idle)
	end
end)

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(PlayerPedId(),"move_m@injured",true)
	SetPlayerHealthRechargeMultiplier(PlayerId(),0.0)
	DisableControlAction(0,21) 
	DisableControlAction(0,22)
end

function setNotHurt()
    hurt = false
	SetPlayerHealthRechargeMultiplier(PlayerId(),0.0)
    ResetPedMovementClipset(PlayerPedId())
    ResetPedWeaponMovementClipset(PlayerPedId())
    ResetPedStrafeClipset(PlayerPedId())
end


-- -- NPC CONTROL
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- trafficDensity = 0.1  -- aqui voce coooloca a quantidade de npc CARROS
-- pedDensity = 0.2  -- aqui voce coooloca a quantidade de npc APÉ
-- Citizen.CreateThread(function()
--     while true do
--         SetVehicleDensityMultiplierThisFrame(trafficDensity)
--         SetPedDensityMultiplierThisFrame(pedDensity)
--         SetRandomVehicleDensityMultiplierThisFrame(trafficDensity)
--         SetParkedVehicleDensityMultiplierThisFrame(trafficDensity)
--         SetScenarioPedDensityMultiplierThisFrame(pedDensity, pedDensity)
--     Citizen.Wait(0)
--     end
-- end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- AIM REMOVE PLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
-- Citizen.CreateThread(function()
-- 	while true do
-- 		local ped = PlayerPedId()
-- 		local bool,hash = GetCurrentPedWeapon(ped,1)
-- 		local weapongroup = GetWeapontypeGroup(hash)
-- 		if bool and weapongroup ~= -728555052 then
-- 			SetPlayerLockon(PlayerId(),false)
-- 		else
-- 			SetPlayerLockon(PlayerId(),true)
-- 		end
-- 		Citizen.Wait(1000)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUDACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
local densityActived = false
RegisterNetEvent("densityActived")
AddEventHandler("densityActived",function()
	Citizen.Wait(60000)
	densityActived = true
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADGLOBAL
-----------------------------------------------------------------------------------------------------------------------------------------

-- Citizen.CreateThread(function()
-- 	while true do
-- 		for i = 1,51 do
-- 			if i ~= 10 and i ~= 14 and i ~= 15 and i ~= 16 and i ~= 19 then
-- 				HideHudComponentThisFrame(i)
-- 			end
-- 		end
-- 		Citizen.Wait(0)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVEDROPWEAPONS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local ot = 1000
		--if not IsPedInAnyVehicle(PlayerPedId()) then-- ç-ç mil treta
			local handle,ped = FindFirstPed()
			local finished = false
			repeat
				if not IsEntityDead(ped) then
					SetPedDropsWeaponsWhenDead(ped,false)
				end
				finished,ped = FindNextPed(handle)
			until not finished

			EndFindPed(handle)
		--end
		Wait(ot)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[ ESTOURAR OS PNEUS ]------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	
	while true do
		local sleep = 1000
		local ped = PlayerPedId()
		local vehicleped = IsPedInAnyVehicle(ped) 
		if vehicleped then
			sleep = 5
			local vehicle = GetVehiclePedIsIn(ped)
			local assento = GetPedInVehicleSeat(vehicle,-1)
           if assento == ped then
               local speed = GetEntitySpeed(vehicle)*2.236936
				if speed >= 390 and math.random(100) >= 97 then
					local estourar = GetVehicleTyresCanBurst(vehicle)
                   if estourar == false then return end
                   local pneus = GetVehicleNumberOfWheels(vehicle)
                   local pneusEffects
                   if pneus == 2 then
                        pneusEffects = (math.random(2)-1)*4
                   elseif pneus == 4 then
                       pneusEffects = (math.random(4)-1)
                       if pneusEffects > 1 then
                           pneusEffects = pneusEffects + 2
                       end
                   elseif pneus == 6 then
                       pneusEffects = (math.random(6)-1)
                   else
                       pneusEffects = 0
                   end
                   SetVehicleTyreBurst(vehicle,pneusEffects,false,1000.0)
               end
           end
		end
		Citizen.Wait(sleep)
   end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- IPLOADER
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	LoadInterior(GetInteriorAtCoords(-447.35,6010.87,31.72))
	LoadInterior(GetInteriorAtCoords(165.52,6640.41,31.72))
	LoadInterior(GetInteriorAtCoords(-2543.5,2310.94,33.42))
	LoadInterior(GetInteriorAtCoords(326.65,-593.17,43.29))
	LoadInterior(GetInteriorAtCoords(134.83,-1043.01,22.97))
	LoadInterior(GetInteriorAtCoords(798.45,-735.37,28.0))
	LoadInterior(GetInteriorAtCoords(1827.15,3681.98,34.28))
	LoadInterior(GetInteriorAtCoords(-160.24,6322.65,31.6))
	LoadInterior(GetInteriorAtCoords(1851.54,3689.08,34.29))
	LoadInterior(GetInteriorAtCoords(14.95,-1602.61,29.38))
	for _,ipl in pairs(allIpls) do
		loadInt(ipl.coords,ipl.interiorsProps)
	end
end)

function loadInt(coordsTable,table)
	for _,v in pairs(coordsTable) do
		local interior = GetInteriorAtCoords(v[1],v[2],v[3])
		LoadInterior(interior)
		for _,i in pairs(table) do
			EnableInteriorProp(interior,i)
			Citizen.Wait(10)
		end
		RefreshInterior(interior)
	end
end

allIpls = {
	{
		interiorsProps = {
			"swap_clean_apt",
			"layer_debra_pic",
			"layer_whiskey",
			"swap_sofa_A"
		},
		coords = {{ -1150.7,-1520.7,10.6 }}
	},
	{
		interiorsProps = {
			"csr_beforeMission",
			"csr_inMission"
		},
		coords = {{ -47.1,-1115.3,26.5 }}
	},
	{
		interiorsProps = {
			"V_Michael_bed_tidy",
			"V_Michael_M_items",
			"V_Michael_D_items",
			"V_Michael_S_items",
			"V_Michael_L_Items"
		},
		coords = {{ -802.3,175.0,72.8 }}
	},
	{
		interiorsProps = {
			"coke_stash1",
			"coke_stash2",
			"coke_stash3",
			"decorative_02",
			"furnishings_02",
			"walls_01",
			"mural_02",
			"gun_locker",
			"mod_booth"
		},
		coords = {{ 1107.0,-3157.3,-37.5 }}
	},
	{
		interiorsProps = {
			"coke_large",
			"decorative_01",
			"furnishings_01",
			"walls_01",
			"lower_walls_default",
			"gun_locker",
			"mod_booth"
		},
		coords = {{ 998.4,-3164.7,-38.9 }}
	},
	{
		interiorsProps = {
			"chair01",
			"equipment_basic",
			"interior_upgrade",
			"security_low",
			"set_up"
		},
		coords = {{ 1163.8,-3195.7,-39.0 }}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASERTIME
-----------------------------------------------------------------------------------------------------------------------------------------
local tasertime = false
Citizen.CreateThread(function()
	while true do
		local ORTiming = 1000
		local ped = PlayerPedId()
		if IsPedBeingStunned(ped) then
			ORTiming = 5
			SetPedToRagdoll(ped,10000,10000,0,0,0,0)
		end

		if IsPedBeingStunned(ped) and not tasertime then
			tasertime = true
			ORTiming = 5
			TriggerEvent("cancelando",true)
			ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
		elseif not IsPedBeingStunned(ped) and tasertime then
			tasertime = false
			SetTimeout(10000,function()
				StopGameplayCamShaking()
				TriggerEvent("cancelando",false)
			end)
		end

		Citizen.Wait(ORTiming)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
local teleport = {
	["TELEFERICO"] = {
		positionFrom = { -741.06,5593.12,41.65 },
		positionTo = { 446.15,5571.72,781.18 }
	},
	["MINERACAO"] = {
		positionFrom = { -597.04,2091.55,131.42 },
		positionTo = { -594.89,2084.97,131.39 }
	},
	["ESCRITORIO2"] = {
		positionFrom = { -1194.46,-1189.31,7.69 },
		positionTo = { 1173.55,-3196.68,-39.00 }
	},
	["ESCRITORIO3"] = {
		positionFrom = { -1007.12,-486.67,39.97 },
		positionTo = { -1003.05,-477.92,50.02 }
	},
	["ESCRITORIO4"] = {
		positionFrom = { -1898.5,-572.36,11.85 },
		positionTo = { -1902.05,-572.42,19.09 }
	},
	["CENTRAL"] = {
		positionFrom = { 254.1,225.41,101.88 },
		positionTo = { 253.31,222.99,101.69 }
	},
	--["ELEVADORH"] = {
	--	positionFrom = { 335.84,-580.34,43.3 },
    --		positionTo = { 335.84,-580.36,74.08 }
	--},
	-- ["DELEGACIAH"] = {
	-- 	positionFrom = { 2504.47,-341.89,101.93 },
	-- 	positionTo = { 2504.23,-342.15,94.1 }
	-- },
   --	["TRIBUNAL"] = {
	--	positionFrom = { 233.10,-410.53,48.11 },
   --		positionTo = { 243.36,-344.08,-118.78 }
	--},
	["CASSINO"] = {
		positionFrom = { 922.7,52.2,72.08 },
		positionTo = { 965.13,58.61,112.56 }
	},
	["CASSINO2"] = {
		positionFrom = { 967.96,63.62,112.56 },
		positionTo = { 969.6,63.04,112.56 }
	},
	--["ROUND61"] = {
	--	positionFrom = { -279.62,-3644.72,288.71 },
	--	positionTo = { -249.37,-3286.37,290.01 }
	--},
	--["ROUND62"] = {
	--	positionFrom = { -346.76,-3286.94,290.01 },
	--	positionTo = { -291.12,-3655.42,290.25 }
	--},
	--["ROUND63"] = {
	--	positionFrom = { -297.34,-3405.56,304.8 },
	--	positionTo = { -297.35,-3420.32,304.8 }
	--},
	--["ROUND64"] = {
	--	positionFrom = { -297.67,-3496.49,304.8 },
	--	positionTo = { -297.61,-3510.76,304.8 }
	--},
	--["ROUND65"] = {
	--	positionFrom = { -297.52,-3585.38,304.8 },
	--	positionTo = { -296.78,-3654.45,290.25 }
	--},
	--["ROUND66"] = {
	--	positionFrom = { 3513.06,3754.94,29.97 },
	--	positionTo = { -304.91,-3656.73,290.25 }
	--},
	--["ROUND67"] = {
	--	positionFrom = { -314.76,-3645.0,288.71 },
	--	positionTo = { -297.31,-3328.63,304.8 }
	--},
	["NIOBIO"] = {
		positionFrom = { 3540.5,3675.14,21.0 },
		positionTo = { 3540.75,3675.71,28.13 }
	},
	["DP"] = {
		positionFrom = { 2497.16,-349.48,94.1 },
		positionTo = { 2496.91,-349.52,105.7 }
	},

	--["BAHAMAS2"] = {
	--	positionFrom = { -1373.72,-624.78,30.81 },
	--	positionTo = { -1371.41,-626.09,30.81 }
	--},
	--["HOSPITAL"] = {
	--	positionFrom = { -452.93,-289.03,34.95 },
	--	positionTo = { -444.0,-332.0,78.17 }
	--},
	--["LAVAGEM"] = {
	--	positionFrom = { 764.33,-3208.05,6.03 },
	--	positionTo = { 1137.90,-3197.50,-39.66 }
	--},
	["MANSÃO-PRACA"] = {
	positionFrom = { -304.89,-721.2,28.03 },
	positionTo = { -288.28,-722.55,125.48 }
    },
	["MANSÃO2 "] = {
	positionFrom = { -791.56,336.99,85.71 },
	positionTo = { -787.7,319.18,243.38 }

},


}


Citizen.CreateThread(function()
	while true do
		local ORTiming = 1000
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local x,y,z = table.unpack(GetEntityCoords(ped))
			for k,v in pairs(teleport) do
				if GetDistanceBetweenCoords(v.positionFrom[1],v.positionFrom[2],v.positionFrom[3],x,y,z,true) <= 1.5 then
					ORTiming = 5
					DrawMarker(21,v.positionFrom[1],v.positionFrom[2],v.positionFrom[3]-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
					if IsControlJustPressed(0,38) then
						DoScreenFadeOut(500)
						SetTimeout(500,function()
							SetEntityCoords(ped,v.positionTo[1]+0.0001,v.positionTo[2]+0.0001,v.positionTo[3]+0.0001-0.50,1,0,0,1)
							Citizen.Wait(500)
							DoScreenFadeIn(500)
						end)
					end
				end

				if GetDistanceBetweenCoords(v.positionTo[1],v.positionTo[2],v.positionTo[3],x,y,z,true) <= 1.5 then
					ORTiming = 5
					DrawMarker(21,v.positionTo[1],v.positionTo[2],v.positionTo[3]-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
					if IsControlJustPressed(0,38) then
						DoScreenFadeOut(500)
						SetTimeout(500,function()
							SetEntityCoords(ped,v.positionFrom[1]+0.0001,v.positionFrom[2]+0.0001,v.positionFrom[3]+0.0001-0.50,1,0,0,1)
							Citizen.Wait(500)
							DoScreenFadeIn(500)
						end)
					end
				end
			end
		end
		Citizen.Wait(ORTiming)
	end
end)

	Citizen.CreateThread(function()
		while true do
			local sleep = 100
			if IsPedArmed(PlayerPedId(),6) then
				sleep = 4
				DisableControlAction(1,140,true)
				DisableControlAction(1,141,true)
				DisableControlAction(1,142,true)
			end
			Citizen.Wait(sleep)
		end
	end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DWTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function dwText(text,height)
	SetTextFont(4)
	SetTextScale(0.50,0.50)
	SetTextColour(255,255,255,180)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.5,height)
end