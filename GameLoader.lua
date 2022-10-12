local url = "https://raw.githubusercontent.com/doran08/Script65/main/Games"

local games = {
    [3652625463] = "Lifting simulator";
    [10239643962] = "Explosion simulator";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
