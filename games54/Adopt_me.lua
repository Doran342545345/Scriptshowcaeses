loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
local UserId = game:GetService("Players").LocalPlayer.UserId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local placeid = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).PlaceId
local OSTime = os.time();
local Time = os.date('!*t', OSTime);
local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
local Content = 'Executed GUI';
local Embed = {
    title = "ID: "..UserId;
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = game:GetService("Players").LocalPlayer.Name;
        url = 'https://web.roblox.com/users/'..UserId ;
    };
    fields = {
        {
            name = 'game link';
            value = 'https://web.roblox.com/games/'..game.PlaceId;
        },
        {
            name = 'Game name';
            value = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
        }
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = 'https://discord.com/api/webhooks/1031811400475090994/W8k0j3iOEcpkELd_nD2YCCEaaKdMgibS2DwSyKIJpSRXGCLCsxmrLSgY9saPRwzCY0YB';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};


