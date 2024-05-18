local url = ""
local http = game:GetService("HttpService")
local webhook = require(script.Parent.WebhookService)

game.Players.PlayerAdded:Connect(function(player)
    local data = {
        ['embeds'] = {{
            ['title'] = "**Player Joined!**",
            ['description'] = player.Name .. " Has Joined The Game",
            ['color'] = 4972305,
            ['url'] = "https://roblox.com/users/".. player.UserID .. "/profile",

            ['fields'] = {
                {    
                    ['name'] = "Account age: ",
                    ['value'] = player.AccountAge .. " Days old",
                    ['inline'] = true,
                },
                {
                    ['name'] = "User ID: ",
                    ['value'] = player.UserId,
                    ['inline'] = true
                }



             }}
         }
    }


    local finaldata = http:JSONEncode(data)
    http:PostAsync(url, finaldata)
end)

game.Players.PlayerRemoving:Connect(function(player)
    local data = {
        ['embeds'] = {{
            ['title'] = "**Player Left!**",
            ['description'] = player.Name .. " Has Left Game",
            ['color'] = 14618897,
            ['url'] = "https://roblox.com/users/".. player.UserID .. "/profile",
        }}

    }

    local finaldata = http:JSONEncode(data)
    http:PostAsync(url, finaldata)
end)




