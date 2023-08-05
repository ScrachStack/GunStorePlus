startup = function()
print([[
    Zaps GunStorePlus Started | Verison ^41.0.0
        Support? https://discord.gg/qP3rCzMCMH
]])

end

startup()

RegisterServerEvent('alv:purchase', function(source, weapon, price)
    if config.framework == 'esx' then
        local ESX = exports['es_extended']:getSharedObject()

        local xPlayer = ESX.GetPlayerFromId(source)

        if xPlayer.getMoney() < price then
            return xPlayer.showNotification(string.format('You cannot afford this. (Missing: $%s)', ESX.Math.GroupDigits(price-xPlayer.getMoney())))
        else
            if not xPlayer.hasWeapon(weapon) then
                xPlayer.removeMoney(price)
                xPlayer.addWeapon(weapon, 250)
                return xPlayer.showNotification(string.format('You have purchased a %s for $%s', ESX.GetWeaponLabel(weaponHash), ESX.Math.GroupDigits(price)))
            else
                return xPlayer.showNotification('You already own a %s.', ESX.GetWeaponLabel(weaponHash))
            end
        end
    elseif config.framework == 'qbcore' then
        local QBCore = exports['qb-core']:GetCoreObject()

        local xPlayer = QBCore.Functions.GetPlayer(source)

        if xPlayer.PlayerData.money < price then
            TriggerClientEvent('QBCore:Notify', source, 'You cannot afford this.', 'error', 5000)
        else
            if not xPlayer.Functions.HasItem(weapon) then
                xPlayer.Functions.RemoveMoney('cash', price)
                xPlayer.Functions.AddItem(weapon)
                TriggerClientEvent('QBCore:Notify', source, 'You have purchased a '..weapon..' for $'..price..'.')
            end
        end
    end
end)
