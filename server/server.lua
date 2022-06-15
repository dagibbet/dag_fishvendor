local sharedItems = exports['qbr-core']:GetItems()

RegisterServerEvent('dag_fishvendor:server:sellfish')
AddEventHandler('dag_fishvendor:server:sellfish', function(fish)
    local src = source
	local Player = exports['qbr-core']:GetPlayer(src)
	local price = math.random(1,9)  -- will be replaced with the fish.worth value in later versions
    local meat = 0
	meat = math.random(1,3) -- will be based off fish.weight value in later versions
	Player.Functions.RemoveItem(fish.name, 1, fish.slot)		
	Player.Functions.AddMoney("cash", price, "fish-sold")
	TriggerClientEvent('inventory:client:ItemBox', src, sharedItems[fish.name], "remove")
	Player.Functions.AddItem('fishmeat', meat)
	TriggerClientEvent('inventory:client:ItemBox', src, sharedItems["fishmeat"], "add")
	TriggerClientEvent('rsg_notify:client:notifiy', src, 'you have sold your fish for $'..price, 5000)		
	
end)

RegisterServerEvent('dag_fishvendor:server:MakeMenu')
AddEventHandler('dag_fishvendor:server:MakeMenu', function()
	local src = source
	local Player = exports['qbr-core']:GetPlayer(src)
	menulist = {}
	local i = 1
	if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
		for k, v in pairs(Player.PlayerData.items) do 
			if Player.PlayerData.items[k] ~= nil then
				if Player.PlayerData.items[k].info.type ~= nil then
					if Player.PlayerData.items[k].info.type == "fish" then
							print(Player.PlayerData.items[k].name)
							menulist[i] = Player.PlayerData.items[k]
							i = i + 1
					end
				end
			end
		end
		TriggerClientEvent('dag_fishing:sellmenu', src, menulist)
	end
end)