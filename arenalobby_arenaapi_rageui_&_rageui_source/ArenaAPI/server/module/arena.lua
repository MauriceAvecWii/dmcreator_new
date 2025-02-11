-- Just holder for arena virtual world ID
ClaimedVirtualWorld = {}


function CreateArena(identifier, ownerSource)
    ArenaCreatorHelper(identifier)
    local arena = ArenaList[identifier]
    local self = {}
    
    --** Basic information about arena
    if ownerSource then
        arena.ownerSource = ownerSource
        arena.ownerName = GetPlayerName(ownerSource)
    end

    self.SetOwnWorld = function(result)
        arena.OwnWorld = result
        if result then
            if ArenaList[identifier].OwnWorldID == 0 then
                local newID = 0

                for i = 1, 1000 do
                    if not ClaimedVirtualWorld[i] then
                        newID = i
                        ClaimedVirtualWorld[i] = i
                        break
                    end
                end
                
                if newID == 0 then
                    print("WARNING the poolsize of virtual worlds have run out! Delete some Arena lobbies to make space!")
                else
                    ArenaList[identifier].OwnWorldID = newID
                end
            end
        end
    end

    self.GetOwnWorld = function()
        return arena.OwnWorld, arena.OwnWorldID
    end

    self.RemoveWorldAfterWin = function(result)
        arena.DeleteWorldAfterWin = result
    end

    self.SetMaximumCapacity = function(number)
        arena.MaximumCapacity = number
    end

    self.GetMaximumCapacity = function()
        return arena.MaximumCapacity
    end

    self.SetMinimumCapacity = function(number)
        arena.MinimumCapacity = number
    end

    self.GetMinimumCapacity = function()
        return arena.MinimumCapacity
    end

    self.GetArenaIdentifier = function()
        return arena.ArenaIdentifier
    end

    self.SetArenaLabel = function(name)
        arena.ArenaLabel = name
        TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
    end

    self.GetArenaLabel = function()
        return arena.ArenaLabel
    end

    self.SetArenaMaxRounds = function(rounds)
        if arena.MaximumRoundSaved == nil then
            arena.MaximumRoundSaved = rounds
        end
        arena.CurrentRound = rounds
    end

    self.GetMaximumRounds = function()
        return arena.MaximumRoundSaved
    end

    self.GetCurrentRound = function()
        return arena.CurrentRound
    end

    self.SetShowArenaTime = function(show)
        arena.ShowArenaTime = show
    end

    self.SetMaximumArenaTime = function(second)
        arena.MaximumArenaTime = second
        arena.MaximumArenaTimeSaved = second
    end

    self.GetMaximumArenaTime = function()
        return arena.MaximumArenaTimeSaved
    end

    self.SetMaximumLobbyTime = function(second)
        arena.MaximumLobbyTime = second
        arena.MaximumLobbyTimeSaved = second
    end

    self.GetMaximumLobbyTime = function()
        return arena.MaximumLobbyTimeSaved, arena.MaximumLobbyTime
    end

    self.SetArenaPublic = function(value)
        arena.ArenaIsPublic = value
    end

    self.SetArenaImageUrl = function(value)
        arena.ArenaImageUrl = value
    end

    self.GetArenaImageUrl = function(value)
        return arena.ArenaImageUrl
    end

    self.IsArenaPublic = function()
        return arena.ArenaIsPublic
    end

    self.SetJoinAfterStart = function(value)
        arena.CanJoinAfterStart = value
        TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
    end

    self.SetPassword = function(value)
        arena.Password = value
    end

    --** Adding player into arena logic
    self.AddPlayer = function(source, AfterArenaStart)
        if arena.PlayerList[source] == nil then
            PlayerInfo[source] = arena.ArenaIdentifier
            arena.PlayerList[source] = {name = GetPlayerName(source)}
            arena.PlayerScoreList[source] = {}
            arena.PlayerNameList[source] = GetPlayerName(source)
            arena.PlayerAvatar[source] = GetSteamAvatar(source)
            arena.CurrentCapacity += 1

            local data = GetDefaultDataFromArena(arena.ArenaIdentifier)
            CallOn(identifier, "join", source, data)
            if not AfterArenaStart then
                arena.MaximumLobbyTime = arena.MaximumLobbyTimeSaved
                arena.ArenaState = "ArenaActive"
            else
                data.JoinAfterArenaStart = true
                SetPlayerRoutingBucket(source, ArenaList[identifier].OwnWorldID)
            end
            TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
            TriggerClientEvent("ArenaAPI:sendStatus", source, "join", data)
            for k, v in pairs(arena.PlayerList) do
                TriggerClientEvent("ArenaAPI:sendStatus", k, "updatePlayerList", data)
            end
        end
    end

    self.RemovePlayer = function(source, skipEvent)
        -- if arena.PlayerList[source] ~= nil then
        if arena.DeleteWorldAfterWin then
            SetPlayerRoutingBucket(source, 0)
        end

        PlayerInfo[source] = "none"
        arena.PlayerList[source] = nil
        arena.PlayerAvatar[source] = nil
        arena.PlayerScoreList[source] = nil
        arena.PlayerNameList[source] = nil

        if arena.ownerSource == source then
            for k, v in pairs(arena.PlayerList) do
                arena.ownerSource = k
                arena.ownerName = GetPlayerName(k)
                break
            end
        end

        arena.CurrentCapacity -= 1
        if arena.CurrentCapacity == 0 then
            arena.ArenaState = "ArenaInactive"
        end

        local data = GetDefaultDataFromArena(arena.ArenaIdentifier)
        arena.MaximumLobbyTime = arena.MaximumLobbyTimeSaved

        TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
        if skipEvent == nil then
            CallOn(identifier, "leave", source, data)
            TriggerClientEvent("ArenaAPI:sendStatus", source, "leave", data)
            for k, v in pairs(arena.PlayerList) do
                TriggerClientEvent("ArenaAPI:sendStatus", k, "updatePlayerList", data)
            end
        end
        -- end
    end

    self.GetPlayerList = function()
        return arena.PlayerList
    end

    self.IsPlayerInArena = function(source)
        return arena.PlayerList[source] ~= nil
    end

    --** Setting player score logic
    self.SetPlayerScore = function(source, key, value)
        arena.PlayerScoreList[source][key] = value
    end

    self.GetPlayerScore = function(source, key)
        return arena.PlayerScoreList[source][key]
    end

    self.GivePlayerScore = function(source, key, value)
        arena.PlayerScoreList[source][key] = arena.PlayerScoreList[source][key] + value
    end

    self.RemovePlayerScore = function(source, key, value)
        arena.PlayerScoreList[source][key] = arena.PlayerScoreList[source][key] - value
    end

    self.PlayerScoreExists = function(source, key)
        return arena.PlayerScoreList[source][key] ~= nil
    end

    self.DeleteScore = function(source, key)
        arena.PlayerScoreList[source][key] = nil
    end

    --** Basic manipulation arena
    self.Destroy = function(notcall)
        if not notcall then
            CallOn(identifier, "end", arena)
        end

        for k, v in pairs(arena.PlayerList) do
            self.RemovePlayer(k, true)
        end
        if ArenaList[identifier] then
            ClaimedVirtualWorld[ArenaList[identifier].OwnWorldID] = nil
        end
        TriggerClientEvent("ArenaAPI:sendStatus", -1, "end", GetDefaultDataFromArena(arena.ArenaIdentifier))
        ArenaList[identifier] = nil
        TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
    end

    self.Reset = function()
        CallOn(identifier, "end", arena)

        for k, v in pairs(arena.PlayerList) do
            self.RemovePlayer(k, true)
        end

        if ArenaList[identifier] then
            ClaimedVirtualWorld[ArenaList[identifier].OwnWorldID] = nil
        end

        arena.PlayerList = {}
        arena.PlayerScoreList = {}
        arena.ArenaState = "ArenaInactive"

        arena.MaximumArenaTime = arena.MaximumArenaTimeSaved
        arena.CurrentRound = arena.MaximumRoundSaved
        TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)
    end

    --** Basic events for arena
    self.OnPlayerJoinLobby = function(cb)
        return On(identifier, "join", cb)
    end

    self.OnPlayerExitLobby = function(cb)
        return On(identifier, "leave", cb)
    end

    self.OnArenaStart = function(cb)
        return On(identifier, "start", cb)
    end

    self.OnArenaEnd = function(cb)
        return On(identifier, "end", cb)
    end

    self.OnArenaRoundEnd = function(cb)
        return On(identifier, "roundEnd", cb)
    end

    self.On = function(eventName, cb)
        return On(identifier, eventName, cb)
    end

    if arena.ArenaState == "ArenaInactive" then
        -- Wait for server set other data
        Citizen.CreateThread(function()
            Citizen.Wait(500)
            TriggerClientEvent("ArenaAPI:sendStatus", -1, "create", arena)
        end)
    end

    TriggerClientEvent("ArenaAPI:sendStatus", -1, "updateData", ArenaList)

    return self
end

exports("CreateArena", CreateArena)

function GetArenaInstance(identifier)
    return CreateArena(identifier)
end

exports("GetArenaInstance", GetArenaInstance)

-- Funktion zum Speichern von Karten
function ArenaAPI.SaveMap(userId, mapData)
    local filePath = string.format("data/maps/%s.json", userId)
    SaveResourceFile(GetCurrentResourceName(), filePath, json.encode(mapData), -1)
    return true
end

-- Funktion zum Laden von Karten
function ArenaAPI.LoadMap(mapName)
    local filePath = string.format("data/maps/%s.json", mapName)
    local mapData = LoadResourceFile(GetCurrentResourceName(), filePath)
    if mapData then
        return json.decode(mapData)
    end
    return nil
end
