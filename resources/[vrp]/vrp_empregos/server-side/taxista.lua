tRP = {}
Tunnel.bindInterface("_taxista",tRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function tRP.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasGroup(user_id,"Taxista") then 
		vRP.removeUserGroup(user_id,"Taxista")
	else
		vRP.addUserGroup(user_id,"Taxista")
	end
--	return vRP.hasPermission(user_id,"taxista.permissao")
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAGAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
function tRP.darPagamentoT(payment)
	vRP.antiflood(source,"PagamentoTaxi",5)
	local source = source
	local user_id = vRP.getUserId(source)
	local xp = math.random(1,2)
	local rand = math.random(100)
	if user_id then
		local valor = math.random(80,100)
		local result = valor
		if valor >= 5000 then
			return
		end
		vRP.injectMoneyLimpo(user_id,parseInt(result*payment*1))
		
		TriggerClientEvent("vrp_sound:source",source,'coin',0.2)
		TriggerClientEvent("Notify",source,"sucesso","Entrega concluída, recebido <b>$"..vRP.format(parseInt(result*payment*1)).." Dólares</b>.",8000)
	end
end
