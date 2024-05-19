HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1241662203841613855/_gErJjPBsXTGKGBDCRnkN9KQxJbxtAdjxm3i-Gx7HQErajzpi7ZULEhoBau903MJt95r"

local responce = syn.request(
{
    Url = Webhook_URL,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Your script has been executed!**",
            ["description"] = game.Players.LocalPlayer.DisplayName.." has execute the script.",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
       }}
   })
}
)
