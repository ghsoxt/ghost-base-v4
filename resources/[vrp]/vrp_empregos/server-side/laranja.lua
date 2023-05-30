local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
juH = {}
Tunnel.bindInterface("_laranja",juH)
-----------------------------------------------------------------------------------------------------------------------------------------
-- QUANTIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
local quantidade = {}
function juH.Quantidade()
	local source = source
	if quantidade[source] == nil then
		quantidade[source] = math.random(1,2)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSAO
-----------------------------------------------------------------------------------------------------------------------------------------
function juH.checkPermission()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"juh.permissao") then
        return true
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAGAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
function juH.checkPayment()
	juH.Quantidade()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("laranja")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
		vRP.giveInventoryItem(user_id,"laranja",quantidade[source])
		quantidade[source] = nil
		return true
		end
	end
end