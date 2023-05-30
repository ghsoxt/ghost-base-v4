-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
hvCLIENT = {}
hvSERVER = Tunnel.getInterface('hv-arsenal')
Tunnel.bindInterface('hv-arsenal',hvCLIENT)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG
-----------------------------------------------------------------------------------------------------------------------------------------
local config = module('hv-arsenal','cfg/config')
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local gunsList = {}
local shieldTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- NUI CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('closeNui',function()
	TransitionFromBlurred(1000)
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ 
		action = 'hideMenu'
	})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET RELOAD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvReload',function(data)
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(data.index), false) then
		hvSERVER.reloadWeapon(data.index)
	else
		hvCLIENT.shopNotify("aviso","Você não possui essa arma equipada.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET ATTACHS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvAttach',function(data)
	if HasPedGotWeapon(PlayerPedId(), GetHashKey(data.index)) then
		setComponents(data.index)
	else
		hvCLIENT.shopNotify("aviso","Você não possui essa arma equipada.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvEquip',function(data)
	hvSERVER.getWeapon(data.index, data.ammo)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET WEAPON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvClear',function(data)
	TransitionFromBlurred(1000)
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ 
		action = 'hideMenu'
	})
	hvSERVER.clearWeapons()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET FOOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvFood',function()
	hvSERVER.getFood()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET ARMOUR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('hvArmour',function()
	hvSERVER.setArmour()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAIN THREAD
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	for k,v in pairs(config["guns"]) do
		local weaponHash = GetHashKey(k)
		table.insert(
			gunsList, { 
				index       = k,
				displayName = v["displayName"],
				group       = v["group"],
				ammoType    = v["ammoType"],
				gunWeight   = hvSERVER.getWeight("wbody|"..k),
				ammoRecived = v["ammoRecived"],
				clipSize    = GetWeaponClipSize(weaponHash), 
				gunInfos    = exports['hv-arsenal']:getWeaponInfos(weaponHash), 
				block_time  = v["block_time"]
		})
	end
	
	-- [ MAIN THREAD ]
	while true do
		local sleep = 1000
		local ped = PlayerPedId()
		local cds = GetEntityCoords(ped)
		for k,v in pairs(config.position) do
			local distance = #(cds - v)
			if distance <= 10 then
				sleep = 4

				RequestStreamedTextureDict('icon_arsenal', true)
				while not HasStreamedTextureDictLoaded('icon_arsenal') do
					Citizen.Wait(0)
				end

					DrawMarker(
						9,
						v.x,
						v.y,
						v.z - 0.3,
						0.0,
						0.0,
						0.0,
						vec3(90.0,0.0,0.0),
						0.9,
						0.9,
						0.9,
						255,
						255,
						255,
						100,
						false, --rotate
						false,
						false,
						true,
						'icon_arsenal',
						'arsenal_icon'
					)

				if distance <= 1.5 then
					DrawText3D(v.x,v.y,v.z+0.2,'~w~Pressione ~g~[E]~w~ para acessar o arsenal')
					if IsControlJustPressed(0,38) and hvSERVER.checkPerm() then
						TransitionToBlurred(1000)
						SetNuiFocus(true,true)
						SetCursorLocation(0.5,0.5)
						SendNUIMessage({ 
							action  = 'showMenu',
							data = config['display'],
							weapons = gunsList,
							job = hvSERVER.getJob(),
							host = config['imagesHost']
						})
						Citizen.Wait(2000)
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 400
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- NUI NOTIFY
-----------------------------------------------------------------------------------------------------------------------------------------
function hvCLIENT.shopNotify(type,message)
	SendNUIMessage({ 
		action = 'notifyMenu',
		type = type,
		message = message
	})
end