local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
    if v.Name == "MoneyDrop" then
    if not v:FindFirstChild("ESP") then
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")
    local Highlight = Instance.new("Highlight")


BillboardGui.Parent = v
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1.000
BillboardGui.Size = UDim2.new(250, 0, 250, 0)
BillboardGui.Name = "ESP"

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Money "..v:FindFirstChild("BillboardGui").TextLabel.Text
TextLabel.TextColor3 = Color3.fromRGB(0, 159, 58)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Highlight.Archivable = true
Highlight.Adornee = v
Highlight.Parent = v
Highlight.Name = "ESPHighlight"
Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
Highlight.Enable = true         
Highlight.FillColor = Color3.new(255,0,0)
Highlight.FillTransparency = 0.5
Highlight.OutlineColor = Color3.new(255,255,255)
Highlight.OutlineTtansparency = 0
          
        end
     end
   end
end)
