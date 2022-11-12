ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('Tikoz:ShopBuyItem')
AddEventHandler('Tikoz:ShopBuyItem', function(name, label, prix)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local iteminventaire = xPlayer.getInventoryItem(label).count
    local money = xPlayer.getMoney()

    if money >= prix then 
        xPlayer.removeMoney(prix)
        xPlayer.addInventoryItem(label, 1)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Supérette', "~g~Paiement confirmé", "Vous avez acheté : \nProduit : ~b~"..name.."~s~\nPrix : ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
    else
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Supérette', "~r~Paiement refusé", "Vous avez pas assez d'argent sur vous", 'CHAR_BANK_FLEECA', 9)
    end
end)


