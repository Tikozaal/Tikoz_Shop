print('')
print('^4Script By ^1Tikoz^7')
print('')

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


RegisterNetEvent('Tikoz:BuyPain')
AddEventHandler('Tikoz:BuyPain', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 2
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem("bread", 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~pain")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
  
end)

RegisterNetEvent('Tikoz:BuySandwich')
AddEventHandler('Tikoz:BuySandwich', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sandwich', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~sandwich")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyMonster')
AddEventHandler('Tikoz:BuyMonster', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('monstermun', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~monster munch")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyKinder')
AddEventHandler('Tikoz:BuyKinder', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('kinderb', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~kinder bueno")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyDragibus')
AddEventHandler('Tikoz:BuyDragibus', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('dragibus', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~dragibus")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

----------------------------------------- BOIRE ----------------------------------------------------

RegisterNetEvent('Tikoz:BuyEau')
AddEventHandler('Tikoz:BuyEau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 2
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1~b~ bouteille d'eau")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuySprite')
AddEventHandler('Tikoz:BuySprite', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sprite', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~sprite")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyFanta')
AddEventHandler('Tikoz:BuyFanta', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('fanta', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~fanta")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:Buyorangina')
AddEventHandler('Tikoz:Buyorangina', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('orangin', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~orangina")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)
----------------------------- Divers -----------------------------

RegisterNetEvent('Tikoz:BuyPhone')
AddEventHandler('Tikoz:BuyPhone', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('phone', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~Téléphone")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyRadio')
AddEventHandler('Tikoz:BuyRadio', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('radio', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~Radio")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

RegisterNetEvent('Tikoz:BuyGps')
AddEventHandler('Tikoz:BuyGps', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 50
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('gps', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez acheté ~y~x1 ~b~Gps")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)
