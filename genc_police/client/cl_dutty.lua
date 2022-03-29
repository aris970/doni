ESX = nil

local jobID = 0
local jobLevel = nil
local jobVehicle = nil
local jobNumber


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


function getInformations(player)
	ESX.TriggerServerCallback('identity:getOtherPlayerData', function(data)
		identityStats = data
	end, GetPlayerServerId(player))
end


function spawnuniPolice3(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "LSPD"..math.random(1,6)
    SetVehicleNumberPlateText(vehicle, plaque) 
    --SetPedIntoVehicle(PlayerPedId(),vehicle,-1)
    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(vehicle))
    SetVehicleMaxMods4(vehicle)
    SetFuel(vehicle, 100)
   SetVehicleDoorsLocked(vehicle, 2)
   local gps = AddBlipForEntity(vehicle)
   SetBlipSprite(gps, 225)
    SetBlipColour(gps, 38)
     BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Police Car')
    EndTextCommandSetBlipName(gps)
        SetEntityAsMissionEntity(vehicle, true, true)

    ESX.ShowAdvancedNotification('Police Garage', '~b~SAN ANDREAS POLICE DEPT ', '~g~Vetura jote eshte para garazhdes te policise~w~  \n', 'CHAR_ORTEGA', 7)

end

function spawnuniPolice2(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "LSPD"..math.random(1,6)
    SetVehicleNumberPlateText(vehicle, plaque) 
    --SetPedIntoVehicle(PlayerPedId(),vehicle,-1)
    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(vehicle))
    SetVehicleMaxMods3(vehicle)
    SetFuel(vehicle, 100)
   SetVehicleDoorsLocked(vehicle, 2)
   local gps = AddBlipForEntity(vehicle)
   SetBlipSprite(gps, 225)
    SetBlipColour(gps, 38)
     BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Police Car')
    EndTextCommandSetBlipName(gps)
        SetEntityAsMissionEntity(vehicle, true, true)

    ESX.ShowAdvancedNotification('Police Garage', '~b~SAN ANDREAS POLICE DEPT ', '~g~Vetura jote eshte para garazhdes te policise~w~  \n', 'CHAR_ORTEGA', 7)

end

function spawnuniPolice(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "LSPD"..math.random(1,6)
    SetVehicleNumberPlateText(vehicle, plaque) 
    --SetPedIntoVehicle(PlayerPedId(),vehicle,-1)
    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(vehicle))
    SetVehicleMaxMods2(vehicle)
    SetFuel(vehicle, 100)
   SetVehicleDoorsLocked(vehicle, 2)
   local gps = AddBlipForEntity(vehicle)
   SetBlipSprite(gps, 225)
    SetBlipColour(gps, 38)
     BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Police Car')
    EndTextCommandSetBlipName(gps)
        SetEntityAsMissionEntity(vehicle, true, true)

    ESX.ShowAdvancedNotification('Police Garage', '~b~SAN ANDREAS POLICE DEPT ', '~g~Vetura jote eshte para garazhdes te policise~w~  \n', 'CHAR_ORTEGA', 7)

end

function spawnuniCar(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "LSPD"..math.random(1,6)
    SetVehicleNumberPlateText(vehicle, plaque) 
    --SetPedIntoVehicle(PlayerPedId(),vehicle,-1)
    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(vehicle))
    SetVehicleMaxMods(vehicle)
    SetFuel(vehicle, 100)
   SetVehicleDoorsLocked(vehicle, 2)
   local gps = AddBlipForEntity(vehicle)
   SetBlipSprite(gps, 225)
    SetBlipColour(gps, 38)
     BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Police Car')
    EndTextCommandSetBlipName(gps)
        SetEntityAsMissionEntity(vehicle, true, true)

    ESX.ShowAdvancedNotification('Police Garage', '~b~SAN ANDREAS POLICE DEPT ', '~g~Vetura jote eshte para garazhdes te policise~w~  \n', 'CHAR_ORTEGA', 7)

end
function SetFuel(vehicle, fuel)
	if type(fuel) == 'number' and fuel >= 0 and fuel <= 100 then
		SetVehicleFuelLevel(vehicle, fuel + 0.0)
		DecorSetFloat(vehicle, "_FUEL_LEVEL", GetVehicleFuelLevel(vehicle))
	end
end
function SetVehicleMaxMods(vehicle)
    local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modLivery   = 2,
      modRoof   = 0,

      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end

function SetVehicleMaxMods2(vehicle)
    local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modLivery   = 0,
      modRoof   = 0,

      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end

function SetVehicleMaxMods3(vehicle)
    local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modLivery   = 1,
      modRoof   = 0,

      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end

function SetVehicleMaxMods4(vehicle)
    local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modLivery   = 3,
      modRoof   = 0,

      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end


Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
	end
	ped = CreatePed("PED_TYPE_CIVMALE", "s_m_y_cop_01", 459.04, -1017.25, 27.15, 88.98, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
end)

  ------------------------ HELICO


  function spawnuniCarre(car)
      local car = GetHashKey(car)
      RequestModel(car)
      while not HasModelLoaded(car) do
          RequestModel(car)
          Citizen.Wait(0)
      end
      local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
      local vehicle = CreateVehicle(car, Config.spawn.spawnheli.position.x, Config.spawn.spawnheli.position.y, Config.spawn.spawnheli.position.z, Config.spawn.spawnheli.position.h, true, false)
      SetEntityAsMissionEntity(vehicle, true, true)
      local plaque = "LSPD"..math.random(1,9)
      SetVehicleNumberPlateText(vehicle, plaque)
      TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
      SetPedIntoVehicle(PlayerPedId(),vehicle,-1)
      SetVehicleMaxMods(vehicle)
end

-------onoffudty/police
RMenu.Add('duttypolice', 'main', RageUI.CreateMenu("~b~LSPD", "~b~Interactions", 10, 80))
RMenu.Add('duttypolice', 'test', RageUI.CreateSubMenu(RMenu:Get('duttypolice', 'main'), "LSPD", "Interactions"))
RMenu.Add('duttypolice', 'test2', RageUI.CreateSubMenu(RMenu:Get('duttypolice', 'main'), "LSPD", "Interactions"))
RMenu.Add('duttypolice', 'test3', RageUI.CreateSubMenu(RMenu:Get('duttypolice', 'main'), "LSPD", "Interactions"))





Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('duttypolice', 'main'), true, true, true, function()   

                             if ESX.PlayerData.job and ESX.PlayerData.job.name == 'offpolice' then

                RageUI.ButtonWithStyle("~g~Start Shift", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
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

                      if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                     RageUI.ButtonWithStyle("~g~Uniforms", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                            --TriggerServerEvent('EMS:Ouvert')
                            end
                        end, RMenu:Get('duttypolice', 'test2'))
                        end

                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then

                     RageUI.ButtonWithStyle("~g~Get Vehicle", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                            --TriggerServerEvent('EMS:Ouvert')
                            end
                        end, RMenu:Get('duttypolice', 'test'))
                        end
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then

                        RageUI.ButtonWithStyle(" ", nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                            --TriggerServerEvent('EMS:Ouvert')
                            end
                        end)
                       end

                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Load Weapons", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    --TriggerServerEvent('equipementbase')
                                end
                            end)
                            end

                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                            RageUI.ButtonWithStyle("~o~Restock items", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('Pharmacy:giveItemm', 'armour')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'boxpistol')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'gps')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'phone')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'parachute')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'oxygenmask')
                                    TriggerServerEvent('Pharmacy:giveItemm', 'boxrifle')

                                end
                            end)
                                                      end
                      if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                     RageUI.ButtonWithStyle("~o~Weapons", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                            --TriggerServerEvent('EMS:Ouvert')
                            end
                        end, RMenu:Get('duttypolice', 'test3'))
                        end



                            RageUI.ButtonWithStyle(" ", nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    --TriggerServerEvent('EMS:Ouvert')
                                end
                            end)
                                                       if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                            RageUI.ButtonWithStyle("~r~End Shift", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('duty:onoff')
                                    RemoveAllPedWeapons(PlayerPedId(), true)
                                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)
                            end

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('duttypolice', 'test'), true, true, true, function()

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kadet' or ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Crown Vic - Kadet", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice("polvic")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Dodge Charger - Officer V2", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("npolchar")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Motto Unit", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("code3bmw")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end


          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Tahoe - Officer", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice2("poltah")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

             if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Police Patrol", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice2("county13")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

             if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Police Civil", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice2("pd_bmw")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("SWAT ARMORY", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice2("BEAR01")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end


          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and  ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Ford Interceptor - Kapiten", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice3("poltaurus")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

              if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and  ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("AIR-1", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice3("polmav")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~y~Dodge Charger ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniPolice3("npolchal")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

             if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'nenkolonel' then

                    RageUI.ButtonWithStyle("Kolonel EXP", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("npolexp")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end



          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~y~Speed Unit", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("npolstang")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~y~Corvete", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("npolvette")
                    TriggerServerEvent('ddx_vehiclelock:givekey', 'yes', GetVehicleNumberPlateText(car))
                    RageUI.CloseAll()
                    end
                end)
             end


        end, function()
        end)
        RageUI.IsVisible(RMenu:Get('duttypolice', 'test3'), true, true, true, function()

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kadet' or ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - Cadet", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbasecadet')



                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - Officer", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbase')



                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - Toger", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbase')



                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and  ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - Kapiten", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbase')



                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - NenKolonel", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbase')



                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("Pack Weapons - Kolonel", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('equipementbase')


                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("M4A1 V2", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('m4a1')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat SNIPER ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('sniper')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat MOLOTOV ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('molotov')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat Grenade ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('grenade')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat Smoke ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('smoke')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat CombatShotgun ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('combat')
                    end
                end)
             end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat Molotov ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('smoke')
                    end
                end)
             end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then

                    RageUI.ButtonWithStyle("~p~Swat AdvancedRifle ", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
TriggerServerEvent('advanced')
                    end
                end)
             end







        end, function()
        end)
        RageUI.IsVisible(RMenu:Get('duttypolice', 'test2'), true, true, true, function()

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kadet' or ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Cadet uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 124, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 15, 72, 0)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 43, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 26, 0)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 112, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 59, 0)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 10, 6)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain


           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Officer uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 124, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 73, 0)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 34, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 26, 0)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 112, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 59, 0)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 10, 6)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain

           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == '' or ESX.PlayerData.job.grade_name == '' or ESX.PlayerData.job.grade_name == '' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Motto uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 16, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 142, 0)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 45, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 66, 1)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 48, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 0, 0)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 16, 0)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain

           end
        end)
       end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Toger uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 124, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 73, 3)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 34, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 19, 0)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 96, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 59, 0)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 10, 6)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain

           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Swat uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 16, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 150, 0)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 46, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 67, 0)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 40, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 59, 3)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 43, 2)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 43, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain

           end
        end)
       end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and  ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Kapiten uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 124, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 73, 5)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 34, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 22, 0)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 112, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 59, 0)   --bag
                 SetPedPropIndex(PlayerPedId() , 0, 10, 6)  -- helmet
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain

           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Nen-Kolonel uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId() , 8, 20, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId() , 11, 113, 2)  --torse 1
                 SetPedComponentVariation(PlayerPedId() , 3, 41, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId() , 4, 62, 15)   --pants
                 SetPedComponentVariation(PlayerPedId() , 6, 112, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId() , 5, 38, 1)   --bag
                 SetPedComponentVariation(PlayerPedId() , 1, 0, 0)  -- mjekra

                 SetPedComponentVariation(PlayerPedId() , 7, 0, 0)   --chain
                 SetPedPropIndex(PlayerPedId() , 0, 10, 6)  -- helmet


           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~o~Kolonel uniform", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
                 SetPedComponentVariation(PlayerPedId(-1) , 15, 0, 0) --tshirt 1 
                 SetPedComponentVariation(PlayerPedId(-1) , 66, 0, 0)  --torse 1
                 SetPedComponentVariation(PlayerPedId(-1) , 14, 0, 0)  -- arms
                 SetPedComponentVariation(PlayerPedId(-1) , 39, 0, 0)   --pants
                 SetPedComponentVariation(PlayerPedId(-1) , 12, 6, 0)   --shoes
                 SetPedComponentVariation(PlayerPedId(-1) , 5, 38, 0)   --bag
                 SetPedComponentVariation(PlayerPedId(-1) , 7, 0, 0)   --chain
                 SetPedComponentVariation(PlayerPedId(-1) , 1, 0, 0)  -- mjekra

                 --SetPedComponentVariation(PlayerPedId() , 1, 13, 0)  -- mjekra
                 SetPedComponentVariation(PlayerPedId() , 9, 0, 0)  -- Vest
                 SetPedComponentVariation(PlayerPedId() , 10, 13, 0)  -- decals
                 SetPedPropIndex(PlayerPedId() , 0, 13, 2)  -- helmet

           end
        end)
       end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'kadet' or ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~b~Take vest", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
            local playerPed = PlayerPedId()

                 SetPedComponentVariation(PlayerPedId() , 12, 0, 0)  -- Vest
		SetPedArmour(playerPed, 100)


           end
        end)
       end
          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~b~Swat vest", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
            local playerPed = PlayerPedId()

                 SetPedComponentVariation(PlayerPedId() , 9, 80, 0)  -- Vest
		SetPedArmour(playerPed, 100)


           end
        end)
       end

          if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'toger' or ESX.PlayerData.job.grade_name == 'kapiten' or ESX.PlayerData.job.grade_name == 'nenkolonel' or ESX.PlayerData.job.grade_name == 'kolonel' then
          RageUI.ButtonWithStyle("~b~Motto vest", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
             if (Selected) then
            local playerPed = PlayerPedId()

                 SetPedComponentVariation(PlayerPedId() , 9, 51, 0)  -- Vest
		SetPedArmour(playerPed, 100)


           end
        end)
       end


        end, function()
        end)


    Citizen.Wait(0)
    end
end)


Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
                local plyCoords2 = GetEntityCoords(PlayerPedId(), false)
                local dist2 = Vdist(plyCoords2.x, plyCoords2.y, plyCoords2.z, Config.pos.armurerie.position.x, Config.pos.armurerie.position.y, Config.pos.armurerie.position.z)
		    if dist2 <= 1.0 then
		    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job.name == 'offpolice' then 	
                    ESX.ShowHelpNotification("Press ~INPUT_TALK~ to work in ~b~LSPD")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('duttypolice', 'main'), not RageUI.Visible(RMenu:Get('duttypolice', 'main')))
                    end   
                end
            end 
        end
end)


Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
	end
	ped = CreatePed("PED_TYPE_CIVMALE", "s_m_y_cop_01", 459.16, -988.84, 29.69, 128.67, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)