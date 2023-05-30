local Teleport = {
	["COMEDY"] = { -- CRISTO
		positionFrom = { ['x'] = -896.76, ['y'] = -1446.57, ['z'] = 7.53 },
		positionTo = { ['x'] = -893.54, ['y'] = -1446.42, ['z'] = 7.53 }
	},

}

Citizen.CreateThread(function()
	while true do
		local sleep = 1000
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local x,y,z = table.unpack(GetEntityCoords(ped))
			for k,v in pairs(Teleport) do
				if Vdist(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z,x,y,z) <= 10 then
					sleep = 5
					DrawMarker(27,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,0,125,100,0,0,0,1)
					DrawMarker(42,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.3,0,0,0,0,0,0,0.5,0.5,0.5,255,0,125,100,0,1,0,0)
					if Vdist(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z,x,y,z) <= 1 then
						if IsControlJustPressed(0,38) then
							SetEntityCoords(ped,v.positionTo.x,v.positionTo.y,v.positionTo.z-0.50)
						end
					end
				end

				if Vdist(v.positionTo.x,v.positionTo.y,v.positionTo.z,x,y,z) <= 12 then
					sleep = 5
					DrawMarker(27,v.positionTo.x,v.positionTo.y,v.positionTo.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,0,125,100,0,0,0,1)
					DrawMarker(42,v.positionTo.x,v.positionTo.y,v.positionTo.z-0.3,0,0,0,0,0,0,0.5,0.5,0.5,255,0,125,100,0,1,0,0)
					if Vdist(v.positionTo.x,v.positionTo.y,v.positionTo.z,x,y,z) <= 1 then
						if IsControlJustPressed(0,38) then
							SetEntityCoords(ped,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.50)
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)  -- Antigo

--[[Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        for k,j in pairs(Teleport) do
            local px,py,pz = table.unpack(GetEntityCoords(PlayerPedId(),true))
            local distance = GetDistanceBetweenCoords(j.positionFrom.x,j.positionFrom.y,j.positionFrom.z,px,py,pz,true)
            local distance2 = GetDistanceBetweenCoords(j.positionTo.x,j.positionTo.y,j.positionTo.z,px,py,pz,true)

            if distance <= 1.5 then
                DrawMarker(1,j.positionFrom.x,j.positionFrom.y,j.positionFrom.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
                if distance <= 1.5 then
                    if IsControlJustPressed(0,38) then
                        SetEntityCoords(PlayerPedId(),j.positionTo.x,j.positionTo.y,j.positionTo.z-0.50)
                    end
                end
            end

            if distance2 <= 1.5 then
                DrawMarker(1,j.positionTo.x,j.positionTo.y,j.positionTo.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
                if distance2 <= 1.5 then
                    if IsControlJustPressed(0,38) then
                        SetEntityCoords(PlayerPedId(),j.positionFrom.x,j.positionFrom.y,j.positionFrom.z-0.50)```
                    end
                end
            end
        end
    end
end)]]