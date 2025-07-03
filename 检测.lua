local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local function createPopup()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = playerGui
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true
    frame.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = frame
    
    local title = Instance.new("TextLabel")
    title.Text = "白名单验证"
    title.Size = UDim2.new(1, 0, 0, 50)
    title.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 24
    title.Parent = frame
    
    local message = Instance.new("TextLabel")
    message.Text = "点击按钮进行白名单验证"
    message.Size = UDim2.new(1, -40, 0, 60)
    message.Position = UDim2.new(0, 20, 0, 60)
    message.TextColor3 = Color3.fromRGB(200, 200, 200)
    message.BackgroundTransparency = 1
    message.Font = Enum.Font.Gotham
    message.TextSize = 18
    message.Parent = frame
    
    local button = Instance.new("TextButton")
    button.Text = "开始验证"
    button.Size = UDim2.new(0, 120, 0, 40)
    button.Position = UDim2.new(0.5, -60, 1, -60)
    button.BackgroundColor3 = Color3.fromRGB(70, 130, 200)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 18
    button.Parent = frame
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button
    
    local glow = Instance.new("UIStroke")
    glow.Color = Color3.fromRGB(100, 180, 255)
    glow.Thickness = 2
    glow.Transparency = 0.7
    glow.Parent = button
    
    frame.Visible = false
    frame.Size = UDim2.new(0, 0, 0, 0)
    frame.Visible = true
    
    local tweenIn = TweenService:Create(
        frame,
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Size = UDim2.new(0, 300, 0, 200)}
    )
    tweenIn:Play()
    
    return screenGui, button
end

local function verifyWhitelist()
    local playerName = localPlayer.Name
    
    local success, whitelistData = pcall(function()
        return game:HttpGet("https://pastebin.com/raw/n2y94cnE")
    end)
    
    if success and whitelistData then
        local whitelist = {}
        for name in whitelistData:gmatch("[^\r\n]+") do
            whitelist[name:lower()] = true
        end
        
        if whitelist[playerName:lower()] then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
        else
            localPlayer:Kick("有白名单吗就执行")
            wait(2)
        end
    else
        localPlayer:Kick("白名单验证失败")
        wait(2)
    end
end

local popup, button = createPopup()

button.MouseButton1Click:Connect(function()
    button.Text = "验证中..."
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.AutoButtonColor = false
    
    local tween = TweenService:Create(
        popup:FindFirstChild("Frame"),
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundTransparency = 1}
    )
    tween:Play()
    
    wait(0.3)
    popup:Destroy()
    
    verifyWhitelist()
end)