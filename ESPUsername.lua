local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local billboard_gui = Instance.New("BillboardGui")
billboard_gui.Active = true
billboard_gui.AlwaysOnTop = true
billboard_gui.ClipsDescendants = true
billboard_gui.LightInfluence = 1
billboard_gui.Size = UDim2.new(0, 150, 0, 50)
billboard_gui.StudsOffset = Vector3.new(0, 1, 0)
billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.Unknown
text_label.Text = "nameHolder"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextStrokeTransparency = 0.5
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Parent = billboard_gui
text_label.Name = "nameText"

RunService.RenderStepped:Connect(function()
    for i, v in pairs(Players:GetChildren()) do
        if not v.Character.Head:FindFirstChild("nameESP") or v == game.Players.LocalPlayer then
        local billboard_guiClone = billboard_gui:Clone()
        billboard_guiClone.Name = "nameESP"
        billboard_guiClone:FindFirstChild("nameText").Text = v.Name
        billboard_guiClone.Parent = v.Character:FindFirstChild("Head")
        end
    end
end)

Players.PlayerAdded:Connect(function(player)
    if not player.Character.Head:FindFirstChild("nameESP") or player == game.Players.LocalPlayer then
    local billboard_guiClone = billboard_gui:Clone()
    billboard_guiClone.Name = ("nameESP")
    billboard_guiClone:FindFirstChild("nameText").Text = player.Name
    billboard_guiClone.Parent = player.Character:FindFirstChild("Head")
    end
end)   
