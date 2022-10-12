local url = "https://github.com/Doran342545345/Scriptshowcaeses/tree/main/games54"

local games = {
    [920587237] = "Adopt me";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
