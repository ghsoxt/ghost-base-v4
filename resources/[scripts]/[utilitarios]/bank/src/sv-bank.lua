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
cRP = {}
Tunnel.bindInterface("bank",cRP)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PREAPARES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vRP/Get_Transactions","SELECT * FROM bank WHERE receiver_identifier = @identifier OR sender_identifier = @identifier ORDER BY id DESC")
vRP.prepare("vRP/Transactions",'SELECT *, DATE(date) = CURDATE() AS "day1", DATE(date) = CURDATE() - INTERVAL 1 DAY AS "day2", DATE(date) = CURDATE() - INTERVAL 2 DAY AS "day3", DATE(date) = CURDATE() - INTERVAL 3 DAY AS "day4", DATE(date) = CURDATE() - INTERVAL 4 DAY AS "day5", DATE(date) = CURDATE() - INTERVAL 5 DAY AS "day6", DATE(date) = CURDATE() - INTERVAL 6 DAY AS "day7" FROM `bank` WHERE DATE(date) >= CURDATE() - INTERVAL 7 DAY')



local webhooksolicitar = ""
local webhookparcelas = ""
local webhookjuros = ""

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERINFO
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.GetPlayerInfo()
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    local sex = vRPclient.getModelPlayer(source)
	if tostring(sex) == "mp_m_freemode_01" then
        sex = "m"
    else
        sex = "f"
    end
    local data = {
        playerName = identity.name .. " "--[[.. identity.name2]],
        playerBankMoney = vRP.getBankMoney(user_id),
        walletMoney = vRP.getMoney(user_id) or 0,
        sex = sex,
    }
    return data
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETPIN
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.GetPIN()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	
	return identity.pincode
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPOSITMONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:DepositMoney")
AddEventHandler("bank:DepositMoney", function(amount)
	local source = source
	local user_id = vRP.getUserId(source)

	if vRP.tryPayment(user_id, amount) then -- TIRAR DINHEIRO
		vRP.giveBankMoney(user_id, amount) -- DAR DINHEIRO NO BANCO

		TriggerEvent('bank:AddDepositTransaction', amount, source)

		TriggerClientEvent('bank:updateTransactions', source, vRP.getBankMoney(user_id), vRP.getMoney(user_id))
		TriggerClientEvent('Notify', source, "Você depositou $"..amount, 5000)
	else
		TriggerClientEvent('Notify', source, "Dinheiro insuficiente.", 5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WITHDRAWMONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:WithdrawMoney")
AddEventHandler("bank:WithdrawMoney", function(amount)
	local source = source
	local user_id = vRP.getUserId(source)

	if vRP.tryWithdraw(user_id,amount) then

		TriggerEvent('bank:AddWithdrawTransaction', amount, source)

		TriggerClientEvent('bank:updateTransactions', source, vRP.getBankMoney(user_id), vRP.getMoney(user_id))

		TriggerClientEvent('Notify', source, "Você sacou $"..amount, 5000)
	else
		TriggerClientEvent('Notify', source, "Dinheiro insuficiente.", 5000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRANSFERMONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:TransferMoney")
AddEventHandler("bank:TransferMoney", function(amount, nuser_id)
    local source = source
    local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if user_id ~= nuser_id then
        if vRP.setBankMoney(user_id,amount) then
            if nuser_id ~= nil then
                vRP.giveBankMoney(nuser_id, amount)

                for i=1, #vRP.getUsers(), 1 do
                    local xForPlayer = vRP.getUserId(vRP.getUsers()[i])
                    if xForPlayer == nuser_id then
						local identity2 = vRP.getUserIdentity(xForPlayer)
                        TriggerClientEvent('bank:updateTransactions', vRP.getUsers()[i], vRP.getBank(nuser_id), vRP.getInventoryItemAmount(nuser_id,"dollars"))
                        TriggerClientEvent('Notify', vRP.getUsers()[i], "Você recebeu $"..amount.." from "..identity2.name .. " " .. identity2.name2, 5000)
                    end
                end
                TriggerEvent('bank:AddTransferTransaction', amount, nuser_id, source)
				TriggerClientEvent('bank:updateTransactions', source, vRP.getBank(user_id), vRP.getInventoryItemAmount(user_id,"dollars"))
                TriggerClientEvent('Notify', source, "Você transferiu $"..amount.." para "..identity.name .. " "--[[.. identity.name2]], 5000)
            end
        else
            TriggerClientEvent('Notify', source, "Dinheiro insuficiente.", 5000)
        end
    else
        TriggerClientEvent('Notify', source, "Você não pode transferir para si mesmo.", 5000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETOVERVIEWTRANSACTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.GetOverviewTransactions()
	local source = source
	local user_id = vRP.getUserId(source)
	local playerIdentifier = user_id
	local allDays = {}
	local income = 0
	local outcome = 0
	local totalIncome = 0
	local day1_total, day2_total, day3_total, day4_total, day5_total, day6_total, day7_total = 0, 0, 0, 0, 0, 0, 0

	local result = vRP.query("vRP/Get_Transactions", { identifier = playerIdentifier })

	local result2 = vRP.query("vRP/Transactions", { })
	for k, v in pairs(result2) do
		local type = v.type
		local receiver_identifier = v.receiver_identifier
		local sender_identifier = v.sender_identifier
		local value = tonumber(v.value)

		if v.day1 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day1_total = day1_total + value
					income = income + value
				elseif type == "withdraw" then
					day1_total = day1_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day1_total = day1_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day1_total = day1_total - value
					outcome = outcome - value
				end
			end
			
		elseif v.day2 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day2_total = day2_total + value
					income = income + value
				elseif type == "withdraw" then
					day2_total = day2_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day2_total = day2_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day2_total = day2_total - value
					outcome = outcome - value
				end
			end

		elseif v.day3 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day3_total = day3_total + value
					income = income + value
				elseif type == "withdraw" then
					day3_total = day3_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day3_total = day3_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day3_total = day3_total - value
					outcome = outcome - value
				end
			end

		elseif v.day4 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day4_total = day4_total + value
					income = income + value
				elseif type == "withdraw" then
					day4_total = day4_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day4_total = day4_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day4_total = day4_total - value
					outcome = outcome - value
				end
			end

		elseif v.day5 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day5_total = day5_total + value
					income = income + value
				elseif type == "withdraw" then
					day5_total = day5_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day5_total = day5_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day5_total = day5_total - value
					outcome = outcome - value
				end
			end

		elseif v.day6 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day6_total = day6_total + value
					income = income + value
				elseif type == "withdraw" then
					day6_total = day6_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day6_total = day6_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day6_total = day6_total - value
					outcome = outcome - value
				end
			end

		elseif v.day7 == 1 then
			if value ~= nil then
				if type == "deposit" then
					day7_total = day7_total + value
					income = income + value
				elseif type == "withdraw" then
					day7_total = day7_total - value
					outcome = outcome - value
				elseif type == "transfer" and receiver_identifier == playerIdentifier then
					day7_total = day7_total + value
					income = income + value
				elseif type == "transfer" and sender_identifier == playerIdentifier then
					day7_total = day7_total - value
					outcome = outcome - value
				end
			end

		end
	end

	totalIncome = day1_total + day2_total + day3_total + day4_total + day5_total + day6_total + day7_total

	table.remove(allDays)
	table.insert(allDays, day1_total)
	table.insert(allDays, day2_total)
	table.insert(allDays, day3_total)
	table.insert(allDays, day4_total)
	table.insert(allDays, day5_total)
	table.insert(allDays, day6_total)
	table.insert(allDays, day7_total)
	table.insert(allDays, income)
	table.insert(allDays, outcome)
	table.insert(allDays, totalIncome)

	return result, playerIdentifier, allDays
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDDEPOSITTRANSACTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:AddDepositTransaction")
AddEventHandler("bank:AddDepositTransaction", function(amount, source_)
	local _source = nil
	if source_ ~= nil then
		_source = source_
	else
		_source = source
	end

	local user_id = vRP.getUserId(_source)
	local identity = vRP.getUserIdentity(user_id)

	MySQL.Async.insert('INSERT INTO bank (receiver_identifier, receiver_name, sender_identifier, sender_name, date, value, type) VALUES (@receiver_identifier, @receiver_name, @sender_identifier, @sender_name, CURRENT_TIMESTAMP(), @value, @type)', {
		['@receiver_identifier'] = 'bank',
		['@receiver_name'] = 'Bank Account',
		['@sender_identifier'] = tostring(user_id),
		['@sender_name'] = identity.name .. " "--[[.. identity.name2]],
		['@value'] = tonumber(amount),
		['@type'] = 'deposit'
	}, function (result)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSALARI
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:AddSalaryTransaction")
AddEventHandler("bank:AddSalaryTransaction", function(amount, source_)
	local _source = nil
	if source_ ~= nil then
		_source = source_
	else
		_source = source
	end
 
	local user_id = vRP.getUserId(_source)
	local identity = vRP.getUserIdentity(user_id)

	MySQL.Async.insert('INSERT INTO bank (receiver_identifier, receiver_name, sender_identifier, sender_name, date, value, type) VALUES (@receiver_identifier, @receiver_name, @sender_identifier, @sender_name, CURRENT_TIMESTAMP(), @value, @type)', {
		['@receiver_identifier'] = 'bank',
		['@receiver_name'] = 'Pagamento',
		['@sender_identifier'] = tostring(user_id),
		['@sender_name'] = identity.name .. " "--[[.. identity.name2]],
		['@value'] = tonumber(amount),
		['@type'] = 'salary'
	}, function (result)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDWITHDRAWTRANSACTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:AddWithdrawTransaction")
AddEventHandler("bank:AddWithdrawTransaction", function(amount, source_)
	local _source = nil
	if source_ ~= nil then
		_source = source_
	else
		_source = source
	end

	local user_id = vRP.getUserId(_source)
	local identity = vRP.getUserIdentity(user_id)

	MySQL.Async.insert('INSERT INTO bank (receiver_identifier, receiver_name, sender_identifier, sender_name, date, value, type) VALUES (@receiver_identifier, @receiver_name, @sender_identifier, @sender_name, CURRENT_TIMESTAMP(), @value, @type)', {
		['@receiver_identifier'] = tostring(user_id),
		['@receiver_name'] = identity.name .. " "--[[.. identity.name2]],
		['@sender_identifier'] = 'bank',
		['@sender_name'] = 'Bank Account',
		['@value'] = tonumber(amount),
		['@type'] = 'withdraw'
	}, function (result)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDTRANSFERTRANSACTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bank:AddTransferTransaction")
AddEventHandler("bank:AddTransferTransaction", function(amount, xTarget, source_, targetName, targetIdentifier)
	local _source = nil
	if source_ ~= nil then
		_source = source_
	else
		_source = source
	end

	local user_id = vRP.getUserId(_source)
	local identity = vRP.getUserIdentity(user_id)
	local identity2 = vRP.getUserIdentity(xTarget)

	if targetName == nil then
		MySQL.Async.insert('INSERT INTO bank (receiver_identifier, receiver_name, sender_identifier, sender_name, date, value, type) VALUES (@receiver_identifier, @receiver_name, @sender_identifier, @sender_name, CURRENT_TIMESTAMP(), @value, @type)', {
			['@receiver_identifier'] = tostring(xTarget),
			['@receiver_name'] = identity2.name .. " ",
			['@sender_identifier'] = tostring(user_id),
			['@sender_name'] = identity.name .. " "--[[.. identity.name2]],
			['@value'] = tonumber(amount),
			['@type'] = 'transfer'
		}, function (result)
		end)
	elseif targetName ~= nil and targetIdentifier ~= nil then
		MySQL.Async.insert('INSERT INTO bank (receiver_identifier, receiver_name, sender_identifier, sender_name, date, value, type) VALUES (@receiver_identifier, @receiver_name, @sender_identifier, @sender_name, CURRENT_TIMESTAMP(), @value, @type)', {
			['@receiver_identifier'] = tostring(targetIdentifier),
			['@receiver_name'] = tostring(targetName),
			['@sender_identifier'] = tostring(user_id),
			['@sender_name'] = identity.name .. " "--[[.. identity.name2]],
			['@value'] = tonumber(amount),
			['@type'] = 'transfer'
		}, function (result)
		end)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATEPINDB
-----------------------------------------------------------------------------------------------------------------------------------------

PagamentoPorTrocaDeSenha = 0
RegisterServerEvent("bank:UpdatePINDB")
AddEventHandler("bank:UpdatePINDB", function(pin, amount)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.tryFullPayment(user_id,PagamentoPorTrocaDeSenha) then
        MySQL.Async.execute('UPDATE vrp_user_identities SET pincode = @pin WHERE user_id = @identifier', {
			['@identifier'] = user_id,
            ['@pin'] = pin,
          
        }, function(changed)
        end)
	  	TriggerClientEvent("Notify", source, "Sua senha do caixa eletronico foi trocada com sucesso!")
    else
		TriggerClientEvent("Notify", source, "Dinheiro insuficiente.")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTFINES
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.requestFines()
	local user_id = vRP.getUserId(source)
	return vRP.getUData(user_id,"vRP:multas")
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- FINESPAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.finesPayment(id,price)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.setBankMoney(user_id,parseInt(price)) then
			
        else
            TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente na sua conta bancária.",5000)
        end
    end
end



  
