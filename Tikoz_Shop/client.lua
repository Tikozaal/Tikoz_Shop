print('')
print('^4Script By ^1Tikoz')
print('')

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local menushop = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Magasin"},
    Data = { currentMenu = "Shop", "Test"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)
            if btn.name == "Pain" then
                TriggerServerEvent("Tikoz:BuyPain")
            elseif btn.name == "Sandwich" then
                TriggerServerEvent('Tikoz:BuySandwich')
            elseif btn.name == "Monster Munch" then
                TriggerServerEvent('Tikoz:BuyMonster')
            elseif btn.name == "Kinder Bueno" then
                TriggerServerEvent('Tikoz:BuyKinder') 
            elseif btn.name == 'Dragibus' then
                TriggerServerEvent('Tikoz:BuyDragibus') 
            end
        end,
},
    Menu = {
        ["Shop"] = {
            b = {
                {name = "Pain", ask = "~g~2$", askX = true},
                {name = "Sandwich", ask = "~g~3$", askX = true},
                {name = "Monster Munch", ask = "~g~3$", askX = true},
                {name = "Kinder Bueno", ask = "~g~3$", askX = true},
                {name = "Dragibus", ask = "~g~3$", askX = true},
            }
        }
    }
}

local boire = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Boisson"},
    Data = { currentMenu = "Shop", "Test"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)
            if btn.name == "Eau" then
                TriggerServerEvent("Tikoz:BuyEau")
            elseif btn.name == "Sprite" then
                TriggerServerEvent('Tikoz:BuySprite')
            elseif btn.name == "Fanta" then
                TriggerServerEvent('Tikoz:BuyFanta')
            elseif btn.name == "Orangina" then
                TriggerServerEvent('Tikoz:Buyorangina')
            end
        end,
},
    Menu = {
        ["Shop"] = {
            b = {
                {name = "Eau", ask = "~g~2$", askX = true},
                {name = "Sprite", ask = "~g~3$", askX = true},
                {name = "Fanta", ask = "~g~3$", askX = true},
                {name = "Orangina", ask = "~g~3$", askX = true},
            }
        }
    }
}

local diver = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Divers"},
    Data = { currentMenu = "Divers", "Test"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)
            if btn.name == "Téléphone" then
                TriggerServerEvent("Tikoz:BuyPhone")
            elseif btn.name == "Radio" then
                TriggerServerEvent('Tikoz:BuyRadio')
            elseif btn.name == "Gps" then
                TriggerServerEvent('Tikoz:BuyGps')
            end
        end,
},
    Menu = {
        ["Divers"] = {
            b = {
                {name = "Téléphone", ask = "~g~250$", askX = true},
                {name = "Radio", ask = "~g~100$", askX = true},
                {name = "Gps", ask = "~g~50$", askX = true},
            }
        }
    }
}

for i=1, #Config.Diver, 1 do
    Citizen.CreateThread(function()

        while true do 
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local pos2 = Config.Diver[i]
            local dist = #(pos - pos2)
        
            if dist <= 2 then

                DrawMarker(6, Config.Diver[i].x, Config.Diver[i].y, Config.Diver[i].z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

                ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour faire vos ~b~courses")

                if IsControlJustPressed(1, 51) then
                    CreateMenu(diver)
                end
            else 
                Citizen.Wait(1000)
            end
            Citizen.Wait(0)
        end

    end)
end

for i=1, #Config.Pos, 1 do
    Citizen.CreateThread(function()

        while true do 

            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local pos2 = Config.Pos[i]
            local dist = #(pos - pos2)
        
            if dist <= 2 then

                DrawMarker(6, Config.Pos[i].x, Config.Pos[i].y, Config.Pos[i].z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

                ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour faire vos ~b~courses")

                if IsControlJustPressed(1, 51) then

                    CreateMenu(menushop)

                end

            else 

                Citizen.Wait(1000)

            end
            Citizen.Wait(0)
        end

    end)
end

for i=1, #Config.Boisson, 1 do
    Citizen.CreateThread(function()

        while true do 

            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local pos2 = Config.Boisson[i]
            local dist = #(pos - pos2)
        
            if dist <= 2 then

                DrawMarker(6, Config.Boisson[i].x, Config.Boisson[i].y, Config.Boisson[i].z, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

                ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour acheté à ~b~boire")

                if IsControlJustPressed(1, 51) then
                    CreateMenu(boire)
                end
            else 
                Citizen.Wait(1000)
            end
            Citizen.Wait(0)
        end

    end)
end


Citizen.CreateThread(function()
	
	for i=1, #Config.Blip, 1 do
		
		local blip = AddBlipForCoord(Config.Blip[i].x, Config.Blip[i].y, Config.Blip[i].z)
		SetBlipSprite (blip, 59)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.75)
		SetBlipColour (blip, 2)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Magasin")
		EndTextCommandSetBlipName(blip)
        Citizen.Wait(10)
	end

end)