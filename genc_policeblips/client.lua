-------------------
-- CLIENT SCRIPT --
-------------------
Class = {}

Class.PlayerBlips = function()
    local self = {}
    self.Active = false
    self.Job = nil
    self.Blips = {}
    self.BlipColor = {
        police = 3,
        ambulance = 6,
        swat = 40        
    }

    self.Initialize = function()
        Citizen.CreateThread(function()
            self.Active = true
            while self.Active do
                Citizen.Wait(100)
                local active = {}
                for jobname, list in pairs(GlobalState.PlayerCoords) do
                    for serverId, coords in pairs(list) do
                        self.UpdateBlip(serverId, coords, jobname)
                        active[serverId] = true
                    end
                end
                for serverId, blip in pairs(self.Blips) do
                    if not active[serverId] then
                        if DoesBlipExist(blip) then
                            RemoveBlip(blip)
                        end
                        self.Blips[serverId] = nil
                    end
                end
            end
            for serverId, blip in pairs(self.Blips) do
                if DoesBlipExist(blip) then
                    RemoveBlip(blip)
                end
                self.Blips[serverId] = nil
            end            
        end)
    end

    self.UpdateBlip = function(serverId, coords, jobname)
        if not self.Blips[serverId] or not DoesBlipExist(self.Blips[serverId]) then
            self.Blips[serverId] = AddBlipForCoord(coords.x, coords.y, coords.z)
            SetBlipSprite(self.Blips[serverId], 468)
            SetBlipAsShortRange(self.Blips[serverId], true)
            SetBlipColour(self.Blips[serverId], self.BlipColor[jobname])
            SetBlipHiddenOnLegend(self.Blips[serverId], true)
            SetBlipScale(self.Blips[serverId], 0.7)
        else
            SetBlipCoords(self.Blips[serverId], coords.x, coords.y, coords.z)
            SetBlipColour(self.Blips[serverId], self.BlipColor[jobname])
        end
    end

    self.JobChange = function(job, initialize)
        if initialize then
            self.Job = job
            if not self.Active then
                self.Initialize()
            end
        else
            self.Active = false
        end
    end
    
    return self
end

PlayerBlips = Class.PlayerBlips()

RegisterNetEvent('genc_policeblips')
AddEventHandler('genc_policeblips', function(job, initialize)
    PlayerBlips.JobChange(job, initialize)  
end)

---------------
-- ESX STUFF --
---------------
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(1000)
    end
    while not ESX.IsPlayerLoaded() do
        Citizen.Wait(1000)
    end
    ESX.TriggerServerCallback('genc_policeblips_playerjoined', function(job, initialize)
        PlayerBlips.JobChange(job, initialize)
    end)
end)