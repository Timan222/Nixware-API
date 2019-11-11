local function event_listener(event)
    if event:GetName() == "round_start" then
        local localTeam = entitylist.GetPlayerByIndex(engine.GetLocalPlayer()):GetTeamNum()

        engine.ExecuteClientCmd("buy ak-47")
        end
end

client.RegisterCallback("firegameevent", event_listener)
