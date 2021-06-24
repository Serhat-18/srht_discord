local playercount = 0
Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(847307573040382003)


		SetDiscordRichPresenceAsset('developments')
        SetDiscordRichPresenceAssetText('Fivem İnfinty Pack')
        SetDiscordRichPresenceAssetSmall('c')
        SetDiscordRichPresenceAssetSmallText('HS_Developments')
        SetDiscordRichPresenceAction(0, 'HS_Developments', 'https://discord.gg/jmqkY55Ynw')
		SetDiscordRichPresenceAction(1, 'Website', 'https://srhdev.xyz')
		Citizen.Wait(10)
	 end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000)
		
		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. playercount .. "/2")
	end
end)

RegisterNetEvent('srht:playercount')
AddEventHandler('srht:playercount', function(count)
	playercount = count
end)