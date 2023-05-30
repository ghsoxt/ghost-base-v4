-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("chat",cRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local chatOpen = false
local chatActive = true
RegisterNetEvent('chat:clear')

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chatMessage")
AddEventHandler("chatMessage",function(author,color,text)
	if chatActive then
		local args = { text }
		if author ~= "" then
			table.insert(args,1,author)
		end
		SendNUIMessage({ type = "ON_MESSAGE", message = { color = color, multiline = true, args = args } })
		SendNUIMessage({ type = "ON_SCREEN_STATE_CHANGE", shouldHide = false })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVERPRINT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("__cfx_internal:serverPrint")
AddEventHandler("__cfx_internal:serverPrint",function(msg)
	-- SendNUIMessage({ type = 'ON_MESSAGE', message = { templateId = "print", multiline = true, args = { msg } } })
	chatOpen = false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDMESSAGE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chat:addMessage")
AddEventHandler("chat:addMessage",function(message)
	SendNUIMessage({ type = "ON_MESSAGE", message = message })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chat:clear")
AddEventHandler("chat:clear",function(name)
	SendNUIMessage({ type = "ON_CLEAR" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARSUGGESTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chat:clearSuggestions")
AddEventHandler("chat:clearSuggestions",function()
	SendNUIMessage({ type = "ON_SUGGESTIONS_REMOVE" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHATRESULT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("chatResult",function(data,cb)
	SetNuiFocus(false)
	if data.message then
		if data.message:sub(1,1) == "/" then
			ExecuteCommand(data.message:sub(2))
		else
			TriggerServerEvent("chat:messageEntered",data.message)
		end
	end
	cb("ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDSUGGESTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chat:addSuggestion")
AddEventHandler("chat:addSuggestion",function(suggestions)
	for _,suggestion in ipairs(suggestions) do
		SendNUIMessage({
			type = 'ON_SUGGESTION_ADD',
			suggestion = suggestion
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOADED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("loaded",function(data,cb)
	cb("ok")
end)

AddEventHandler('chat:clear', function(name)
	SendNUIMessage({
	  type = 'ON_CLEAR'
	})
  end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHAT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("dchat",function(source,args)
	if chatOpen then
		if chatActive then
			chatActive = false
			SendNUIMessage({ type = "ON_CLEAR" })
			TriggerEvent("nyo_notify", "#B80000", "Desativado", "chat <b>desativado", 5000)
		else
			chatActive = true
			TriggerEvent("nyo_notify", "#00FF00", "Sucesso", "chat <b>Ativado", 5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetTextChatEnabled(false)
	SetNuiFocus(false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENCHAT
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
 RegisterKeyMapping("openChat2","Abrir chat","keyboard","t")

 RegisterCommand("openChat2",function()
	-- if not exports["vrp_player"]:cancelandoStatus() then
	chatOpen = true
	SetNuiFocus(true)
	SendNUIMessage({ type = "ON_OPEN" })
	-- end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATUSCHAT
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.statusChat()
	return chatOpen
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATUSCHAT
-----------------------------------------------------------------------------------------------------------------------------------------
function statusChat()
	return chatOpen
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
-----------------------------------------------------------------------------------------------------------------------------------------
-- exports("statusChat",statusChat)
