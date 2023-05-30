mtRP = {}
Tunnel.bindInterface("_motorista",mtRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function mtRP.checkPayment(porc,bonus)
	vRP.antiflood(source,"PagamentoMotorista",5)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local valor = math.random(30,100)
		local payment = valor * porc + bonus * 0.10
		
		vRP.injectMoneyLimpo(user_id,parseInt(payment)*1.0)

		TriggerClientEvent("vrp_sound:source",source,'coin',0.2)
		TriggerClientEvent("Notify",source,"sucesso","Entrega concluída, recebido <b>$"..vRP.format(parseInt(payment*1.0)).." Dólares</b>.",8000)
	end
end