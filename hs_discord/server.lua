Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        local playercount = GetNumPlayerIndices()
        TriggerClientEvent('srht:playercount', -1, playercount)
    end
end)