local MaxPing = Config.MaxPing

RegisterServerEvent("antiafk")
AddEventHandler("antiafk", function()
    local DropAfk = string.format(Config.PlayerDroppedafk, Config.NameServer)
	DropPlayer(source, DropAfk)
end)

RegisterServerEvent('checkPing')
AddEventHandler('checkPing', function()
    local ping = GetPlayerPing(source)
    if ping >= MaxPing then
        local DropPing = string.format(Config.PlayerDroppedping, Config.NameServer, MaxPing, ping)
        DropPlayer(source, DropPing)
    end
end)