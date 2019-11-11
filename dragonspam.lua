local function event_listener(event)
    if event:GetName() == "player_death" then
        local attacker = engine.GetPlayerIndexByUserID(event:GetInt("attacker"))
        local dead = engine.GetPlayerIndexByUserID(event:GetInt("userid"))
        local me = engine.GetLocalPlayer()

        if attacker == me and dead ~= me then
            local entity = entitylist.GetPlayerByIndex(dead)
            engine.ExecuteClientCmd("say " .. entity:GetName() .. ", ты кто ннчик? Я Timan , у меня есть свой чит.");
            engine.ExecuteClientCmd("say " .. entity:GetName() .. ", Хочешь чит?. Платишь 200р на киви и получаешь чит.");
            engine.ExecuteClientCmd("say " .. entity:GetName() .. ", вот вк https://vk.com/id479306393 .");
        end
    end
end

client.RegisterCallback("fire_game_event", event_listener)
