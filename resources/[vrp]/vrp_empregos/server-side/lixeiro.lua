lRP = {}
Tunnel.bindInterface("_lixeiro",lRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function lRP.ChecarItens()
	local source = source
	local user_id = vRP.getUserId(source)
	local itens = vRP.getInventoryItemAmount(user_id,"sacodelixo")
	if itens >= 1 then 
		return true 
	end
end


function lRP.ReceberItens()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		--vRP.giveInventoryItem(user_id,"sacodelixo",5,true)
	end
end
	
function lRP.EntregarItens()
	vRP.antiflood(source,"PagamentoLixeiro",8)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local valor = math.random(1200,2400)
		if vRP.injectMoneyLimpo(user_id,parseInt(valor*1)) then
			TriggerClientEvent("Notify",source,"bom","Você recebeu <b>$"..parseInt(valor*2).." dólares</b>.",4000)
		end
	end
end