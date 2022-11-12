ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

menunourriture = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Nourriture"},
    Data = {currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            for i=1, #ListeNourriture, 1 do 
                if btn.name == ListeNourriture[i].name then
                    local name = ListeNourriture[i].name
                    local label = ListeNourriture[i].label
                    local prix = ListeNourriture[i].prix
                    TriggerServerEvent('Tikoz:ShopBuyItem', name, label, tonumber(prix))
                end
            end

        end,      
},
    Menu = {
        ["Menu :"] = {
            b = {
            }
        }
    }
}

CreateThread(function()

    for i=1, #ListeNourriture, 1 do 
        table.insert(menunourriture.Menu["Menu :"].b, {name = ListeNourriture[i].name, ask = "~g~"..ListeNourriture[i].prix.."$", askX = true})
    end

    while true do 
       
        if posnourriture() then

            if IsControlJustPressed(1, 51) then
                CreateMenu(menunourriture)
            end
        else
            Wait(1000)
        end
        Wait(0)
    end
end)

function posnourriture()

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    for _, v in pairs(Nourriture) do

        local dist = GetDistanceBetweenCoords(v.x, v.y, v.z, pos.x, pos.y, pos.z, true)

        if dist <= 2 then
            ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~menu")
            DrawMarker(6, v.x, v.y, v.z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)
			return true
     
        end
    end
end

menuboisson = {
    Base = {Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Boisson"},
    Data = {currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            for i=1, #ListeBoisson, 1 do 
                if btn.name == ListeBoisson[i].name then
                    local name = ListeBoisson[i].name
                    local label = ListeBoisson[i].label 
                    local prix = ListeBoisson[i].prix
                    TriggerServerEvent('Tikoz:ShopBuyItem', name, label, tonumber(prix))
                end
            end
        end,
},
    Menu = {
        ["Menu :"] = {
            b = {
            }
        }
    }
}

CreateThread(function()
    for k, v in pairs(Nourriture) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite (blip, Config.Blip.Id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.Blip.Taille)
        SetBlipColour (blip, Config.Blip.Couleur)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blip.Nom)
        EndTextCommandSetBlipName(blip)
    end
    for i=1, #ListeBoisson, 1 do 
        table.insert(menuboisson.Menu["Menu :"].b, {name = ListeBoisson[i].name, ask = "~g~"..ListeBoisson[i].prix.."$", askX = true})
    end
    
    while true do 
       
        if posboisson() then

            if IsControlJustPressed(1, 51) then
                CreateMenu(menuboisson)
            end
        else
            Wait(1000)
        end
        Wait(0)
    end
end)

function posboisson()

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    for _, v in pairs(Boisson) do

        local dist = GetDistanceBetweenCoords(v.x, v.y, v.z, pos.x, pos.y, pos.z, true)

        if dist <= 2 then
            ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~menu")
            DrawMarker(6, v.x, v.y, v.z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)
			return true
        end
    end
end

menudivers = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Divers"},
    Data = { currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            for i=1, #ListeDivers, 1 do 
                if btn.name == ListeDivers[i].name then
                    local name = ListeDivers[i].name
                    local label = ListeDivers[i].label
                    local prix = ListeDivers[i].prix
                    TriggerServerEvent("Tikoz:ShopBuyItem", name, label, tonumber(prix))

                end
            end
        end,
},
    Menu = {
        ["Menu :"] = {
            b = {
            }
        }
    }
}

CreateThread(function()

    for i=1, #ListeDivers, 1 do 
        table.insert(menudivers.Menu["Menu :"].b, {name = ListeDivers[i].name, ask = "~g~"..ListeDivers[i].prix.."$", askX = true})
    end

    while true do 

        if posdivers() then
            if IsControlJustPressed(1, 51) then
                CreateMenu(menudivers)
            end
        else
            Wait(1000)
        end
        Wait(0)
    end
end)

function posdivers()

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    for _, v in pairs(Divers) do 

        local dist = GetDistanceBetweenCoords(v.x, v.y, v.z, pos.x, pos.y, pos.z, true)

        if dist <= 2 then
            ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~menu")
            DrawMarker(6, v.x, v.y, v.z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)
            return true
        end
    end
end