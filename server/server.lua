
RegisterNetEvent('carplay:syncmusic')
AddEventHandler('carplay:syncmusic', function(peds, vehNet, data)
    local veh = NetworkGetEntityFromNetworkId(vehNet)
	if veh ~= 0 then
        for k, v in pairs(peds) do
            TriggerClientEvent("carplay:playsound", v, data)
        end
	end
end)
