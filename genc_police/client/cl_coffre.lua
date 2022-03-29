ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    --print('registered Job: ' .. xPlayer.job.name)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)


---------------- FONCTIONS ------------------

RMenu.Add('enos', 'coffre', RageUI.CreateMenu("~b~LSPD", "~b~omertest"))
RMenu:Get('enos', 'coffre'):SetRectangleBanner(0, 0, 30, 255)
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('enos', 'coffre'), true, true, true, function()

            
                              if ESX.PlayerData.job and ESX.PlayerData.job.name == 'offpolice' then

                RageUI.ButtonWithStyle("~g~Start Shift", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('duty:onoff')
                                RemoveAllPedWeapons(PlayerPedId(), true)

                end
            end)
                  end
                        RageUI.ButtonWithStyle(" ", nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                        --TriggerServerEvent('EMS:Ouvert')
                                end
            end)

                                                        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Get items", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('Pharmacy:giveItemm', 'medikit')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'bandage')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'gps')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'phone')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'clip')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'armour')

                                end
                            end)
                                                      end
                                                       if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Get weapons", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('equipementbase')
                                end
                            end)
                            end
                                                       if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Get uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                      SetPedComponentVariation(PlayerPedId() , 8, 87, 0) --tshirt 
                                                                      SetPedComponentVariation(PlayerPedId() , 16, 2, 0)  --torse
                                                                       SetPedComponentVariation(PlayerPedId() , 3, 0, 0)  -- bras
                                                                      SetPedComponentVariation(PlayerPedId() , 6, 24, 0)   --pants
                                                                      SetPedComponentVariation(PlayerPedId() , 8, 25, 0)   --shoes
                                end
                            end)
                            end
                                                       if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Resume civilian clothes", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)
                            end

            
                            RageUI.ButtonWithStyle(" ", nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    --TriggerServerEvent('EMS:Ouvert')
                                end
                            end)
                                                       if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                            RageUI.ButtonWithStyle("~r~End Shift", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('duty:onoff')
                                                                         RemoveAllPedWeapons(PlayerPedId(), true)

                                end
                            end)
                                                        end

            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'offpolice'  then 
                        RageUI.Separator("~s~↓ ~b~Storage ~s~↓")
            RageUI.ButtonWithStyle("Deposit Object(s)",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
				if Selected then
					OpenPutStocksLSPDMenu()
					RageUI.CloseAll()
                end
			end)

            RageUI.ButtonWithStyle("Deposit Weapon(s)",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if Selected then
                    OpenPutWeaponMenu()
                    RageUI.CloseAll()
                end
            end)
        end


        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)

---------------------------------------------

local position = {
    {x = 4420.78, y = -981.82, z = 30.69}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job.name == 'offpolice' then 

            local plyCoords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            DrawMarker(2, 469.9, -989.31, 24.92, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)

        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Press ~INPUT_TALK~ to access the safe")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('enos', 'coffre'), not RageUI.Visible(RMenu:Get('enos', 'coffre')))
                end
            end
        end
    end
    end
end)

function OpenGetStocksLSPDMenu()
    ESX.TriggerServerCallback('esx_policejob:prendreitem', function(items)
        local elements = {}

        for i=1, #items, 1 do
            table.insert(elements, {
                label = 'x' .. items[i].count .. ' ' .. items[i].label,
                value = items[i].name
            })
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'police',
            title    = 'police stockage',
            align    = 'top-left',
            elements = elements
        }, function(data, menu)
            local itemName = data.current.value

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
                css      = 'police',
                title = 'quantity'
            }, function(data2, menu2)
                local count = tonumber(data2.value)

                if not count then
                    ESX.ShowNotification('invalid quantity')
                else
                    menu2.close()
                    menu.close()
                    TriggerServerEvent('esx_policejob:prendreitems', itemName, count)

                    Citizen.Wait(300)
                    OpenGetStocksLSPDMenu()
                end
            end, function(data2, menu2)
                menu2.close()
            end)
        end, function(data, menu)
            menu.close()
        end)
    end)
end

function OpenPutStocksLSPDMenu()
    ESX.TriggerServerCallback('esx_policejob:inventairejoueur', function(inventory)
        local elements = {}

        for i=1, #inventory.items, 1 do
            local item = inventory.items[i]

            if item.count > 0 then
                table.insert(elements, {
                    label = item.label .. ' x' .. item.count,
                    type = 'item_standard',
                    value = item.name
                })
            end
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'police',
            title    = 'inventaire',
            align    = 'top-left',
            elements = elements
        }, function(data, menu)
            local itemName = data.current.value

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
                css      = 'police',
                title = 'quantity'
            }, function(data2, menu2)
                local count = tonumber(data2.value)

                if not count then
                    ESX.ShowNotification('invalid quantity')
                else
                    menu2.close()
                    menu.close()
                    TriggerServerEvent('esx_policejob:stockitem', itemName, count)

                    Citizen.Wait(300)
                    OpenPutStocksLSPDMenu()
                end
            end, function(data2, menu2)
                menu2.close()
            end)
        end, function(data, menu)
            menu.close()
        end)
    end)
end


function OpenGetWeaponMenu()

    ESX.TriggerServerCallback('esx_policejob:getArmoryWeapons', function(weapons)
        local elements = {}

        for i=1, #weapons, 1 do
            if weapons[i].count > 0 then
                table.insert(elements, {
                    label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name),
                    value = weapons[i].name
                })
            end
        end

        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_get_weapon',
        {
            title    = _U('get_weapon_menu'),
            align    = 'top-left',
            elements = elements
        }, function(data, menu)

            menu.close()

            ESX.TriggerServerCallback('esx_policejob:removeArmoryWeapon', function()
                OpenGetWeaponMenu()
            end, data.current.value)

        end, function(data, menu)
            menu.close()
        end)
    end)

end

function OpenPutWeaponMenu()
    local elements   = {}
    local playerPed  = PlayerPedId()
    local weaponList = ESX.GetWeaponList()

    for i=1, #weaponList, 1 do
        local weaponHash = GetHashKey(weaponList[i].name)

        if HasPedGotWeapon(playerPed, weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
            table.insert(elements, {
                label = weaponList[i].label,
                value = weaponList[i].name
            })
        end
    end

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_put_weapon',
    {
        title    = _U('put_weapon_menu'),
        align    = 'top-left',
        elements = elements
    }, function(data, menu)

        menu.close()

        ESX.TriggerServerCallback('esx_policejob:addArmoryWeapon', function()
            OpenPutWeaponMenu()
        end, data.current.value, true)

    end, function(data, menu)
        menu.close()
    end)
end