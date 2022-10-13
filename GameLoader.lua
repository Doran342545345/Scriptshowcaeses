
local url = "https://raw.githubusercontent.com/Doran342545345/Scriptshowcaeses/main/games54"

local games = {
	[920587237] = "Adopt me";
	[10386702469] = "Roblox but every second you grow";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
