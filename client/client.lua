Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-1', vector3(-335.7091, 762.49615, 116.55075), 0x760A9C6F, 'Valentine Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-2', vector3(2662.2517, -1505.653, 45.968982), 0x760A9C6F, 'StDenis Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-3', vector3(2991.6115, 558.83947, 44.355224), 0x760A9C6F, 'VanHorn Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-4', vector3(3017.9001, 1352.2457, 42.735687), 0x760A9C6F, 'Anusburg Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-5', vector3(1292.7081, -1276.722, 75.748435), 0x760A9C6F, 'Rhodes Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-6', vector3(-726.486, -1252.823, 44.734107), 0x760A9C6F, 'Blackwater Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-7', vector3(-5516.716, -2948.78, -1.8062), 0x760A9C6F, 'Tumbleweed Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {  },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-8', vector3(-1451.595, -2685.068, 41.228832), 0x760A9C6F, 'Fish Vendor', {
		type = 'server',
		event = 'dag_fishvendor:server:MakeMenu',
		args = {},
	})  
end)

RegisterNetEvent('dag_fishing:sellmenu')
AddEventHandler('dag_fishing:sellmenu', function(data)
	TriggerEvent('zf_context:openMenu', {
		{
            id = 0,
            header = "| Fish Vendor |",
            txt = "",
        }
		
	})
	local num = 1
	for x,i in pairs(data) do
		TriggerEvent('zf_context:openMenu', {
			{
				id = num,
				header = "• Sell "..i.label.." ",
				txt = "",
				params = {
					event = 'rsg_fishvendor:server:sellfish',
					args = i,
					isServer = true,
				}
			}
		})
		num = num + 1
	end
	TriggerEvent('zf_context:openMenu', {
		{
            id = 7,
            header = "Close (ESC)",
            txt = "",
        }
	})
end)

