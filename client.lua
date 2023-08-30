Citizen.CreateThread(function()
    local ped = PlayerPedId()
    local pedcoords = GetEntityCoords(ped)
    while true do 
        Wait(Config.TimeAfk)
        if pedcoords == GetEntityCoords(ped) then
            TriggerServerEvent('antiafk')
        end
    end
end)

local firstspawn = false

AddEventHandler('playerSpawned', function(spawn)
    firstspawn = true
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.TimeKickPing)
        if firstspawn then
            TriggerServerEvent('checkPing')
        end
    end
end)