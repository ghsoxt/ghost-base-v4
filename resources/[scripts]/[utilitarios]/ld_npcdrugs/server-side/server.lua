-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cnVRP = {}
Tunnel.bindInterface("products",cnVRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local amount = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMLIST
-----------------------------------------------------------------------------------------------------------------------------------------
local itemList = {
	{ item = "cocaina", priceMin = 700, priceMax = 1500, randMin = 5, randMax = 10 },
	{ item = "maconha", priceMin = 700, priceMax = 1500, randMin = 5, randMax = 10 },
	{ item = "lsd", priceMin = 700, priceMax = 1500, randMin = 5, randMax = 10 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKAMOUNT
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkAmount()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(itemList) do
			local rand = math.random(v.randMin,v.randMax)
			local price = math.random(v.priceMin,v.priceMax)
			if vRP.getInventoryItemAmount(user_id,v.item) >= parseInt(rand) then
				amount[user_id] = { v.item,rand,price }

				TriggerClientEvent("products:lastItem",source,v.item)

				if (v.item == "maconha" or v.item == "lsd" or v.item == "cocaina") and math.random(100) >= 75 then
					local x,y,z = vRPclient.getPosition(source)
					local copAmount = vRP.getUsersByPermission("policia.permissao")
					for k,v in pairs(copAmount) do
						async(function()
							TriggerClientEvent("NotifyPush",v,
							{ 
							 code = 5, 
							 title = "Denúncia de Venda de Drogas", x = x, y = y, z = z,
							 rgba = {163, 0, 0} })
						end)
					end
				end

				return true
			-- else
			-- 	TriggerClientEvent("Notify",source,"negado","Voce nao possui nada que me interesse",5000)
			end
		end
		return false
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENTMETHOD
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.paymentMethod()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.tryGetInventoryItem(user_id,amount[user_id][1],amount[user_id][2],true) then
			--vRP.upgradeStress(user_id,2)
			local value = amount[user_id][3] * amount[user_id][2]
			vRP.giveInventoryItem(user_id,"dinheiro-sujo",parseInt(value),true)
			TriggerClientEvent("sound:source",source,"coin",0.5)
		end
	end
end