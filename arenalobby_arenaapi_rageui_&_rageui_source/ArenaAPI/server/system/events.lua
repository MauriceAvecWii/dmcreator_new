Events = {}
ValidEvents = {
    ["join"] = true,
    ["leave"] = true,
    ["end"] = true,
    ["start"] = true,
    ["roundend"] = true,
}

function ValidateEvents(eventName)
    return type(eventName) == "string" and ValidEvents[string.lower(eventName)] ~= nil
end

function ValidateInvokingEvent(identifier, eventName)
    return Events[identifier] ~= nil and Events[identifier][eventName]
end

function RemoveEventsWithNameResource(nameResource)
    for identifier, v in pairs(Events) do
        for event, value in pairs(v) do
            for resource, val in pairs(value) do
                if resource == nameResource then
                    Events[identifier][event][resource] = nil
                    break
                end
            end
        end
    end
end

---Return true if event is registered, false if is not
---@param identifier string
---@param eventName string
---@param cb function
---@return boolean
function On(identifier, eventName, cb)
    local invokingName = GetInvokingResource()
    eventName = string.lower(eventName)
    if not ValidateEvents(eventName) then
        return false
    end

    if Events[identifier] == nil then
        Events[identifier] = {}
    end

    if Events[identifier][eventName] == nil then
        Events[identifier][eventName] = {}
    end

    if Events[identifier][eventName][invokingName] == nil then
        Events[identifier][eventName][invokingName] = {}
    end
    table.insert(Events[identifier][eventName][invokingName], cb)
    return true
end

---Call event
---@param identifier string
---@param eventName string
---@param ... any
function CallOn(identifier, eventName, ...)
    if ValidateInvokingEvent(identifier, eventName) then
        for key, value in pairs(Events[identifier][eventName]) do
            for k, cb in pairs(value) do
                if type(cb) == "table" or type(cb) == "function" then
                    cb(...)
                end
            end
        end
    end
end

RegisterNetEvent("dmcreator:registerMap")
AddEventHandler("dmcreator:registerMap", function(mapData)
    local src = source
    local userId = GetPlayerIdentifier(src)

    local success = ArenaAPI.SaveMap(userId, mapData)
    if success then
        TriggerClientEvent('chat:addMessage', src, { args = { "ArenaAPI", "Karte erfolgreich registriert!" } })
    else
        TriggerClientEvent('chat:addMessage', src, { args = { "ArenaAPI", "Fehler beim Registrieren der Karte!" } })
    end
end)
