HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1238688721000468511/44yz5HnabWPBnDwLHncUGDplk2ciw-9AKkEA_QoNgazuy7BeQ4eVcKOx3ADBzI5Kdhnm"

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
