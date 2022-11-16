
local url = "https://raw.githubusercontent.com/Doran342545345/Scriptshowcaeses/main/games54"

local games = {
	[920587237] = "Adopt me";
	[10386702469] = "Roblox but every second you grow";
	[4282985734] = "Combat Warriors";
	[142823291] = "Murder Mystery 2";
	[662417684] = "Lucky Blocks Battleground";
	[11346342371] = "Making Memes At 3 AM Tycoon";
	
	
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
