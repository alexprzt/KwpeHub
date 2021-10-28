local URL = "https://github.com/alexprzt/KwpeHub/blob/main/"

local games = {
    [891852901] = "Greenville",
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(URL .. name .. ".lua"))
