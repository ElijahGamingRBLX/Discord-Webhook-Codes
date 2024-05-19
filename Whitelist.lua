local http_request = syn and syn.request or request;
local hwidPaste = loadstring(game:HttpGet("your link"))()

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid = decoded.headers['Syn-Fingerprint']

for i, v in pairs(hwidPaste) do
    if v == hwid then
        print("Whitelisted")
    else
        print("Not Whitelisted")
    end
end

setclipboard(hwid)
