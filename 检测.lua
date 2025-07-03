local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local function createPopup()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WhitelistPopup"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = playerGui
    
    local background = Instance.new("Frame")
    background.Name = "Background"
    background.Size = UDim2.new(1, 0, 1, 0)
    background.BackgroundColor3 = Color3.new(0, 0, 0)
    background.BackgroundTransparency = 0.5
    background.BorderSizePixel = 0
    background.ZIndex = 1
    background.Parent = screenGui
    
    local frame = Instance.new("Frame")
    frame.Name = "PopupFrame"
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    frame.BorderSizePixel = 0
    frame.ZIndex = 2
    frame.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame
    
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Text = "白名单验证"
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 24
    title.ZIndex = 3
    title.Parent = frame
    
    local titleCorner = Instance.new("UICorner")
    titleCorner.CornerRadius = UDim.new(0, 8)
    titleCorner.Parent = title
    
    local description = Instance.new("TextLabel")
    description.Name = "Description"
    description.Text = "点击按钮验证您的账户"
    description.Size = UDim2.new(1, -20, 0, 60)
    description.Position = UDim2.new(0, 10, 0.25, 0)
    description.BackgroundTransparency = 1
    description.TextColor3 = Color3.fromRGB(200, 200, 200)
    description.Font = Enum.Font.SourceSans
    description.TextSize = 18
    description.TextWrapped = true
    description.ZIndex = 3
    description.Parent = frame
    
    local button = Instance.new("TextButton")
    button.Name = "VerifyButton"
    button.Text = "开始验证"
    button.Size = UDim2.new(0.7, 0, 0, 40)
    button.Position = UDim2.new(0.15, 0, 0.7, 0)
    button.BackgroundColor3 = Color3.fromRGB(60, 120, 200)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
    button.ZIndex = 3
    button.Parent = frame
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 6)
    buttonCorner.Parent = button
    
    local loadingCircle = Instance.new("Frame")
    loadingCircle.Name = "LoadingCircle"
    loadingCircle.Size = UDim2.new(0, 30, 0, 30)
    loadingCircle.Position = UDim2.new(0.5, -15, 0.85, -15)
    loadingCircle.BackgroundTransparency = 1
    loadingCircle.Visible = false
    loadingCircle.ZIndex = 3
    loadingCircle.Parent = frame
    
    local circle = Instance.new("Frame")
    circle.Name = "Circle"
    circle.Size = UDim2.new(0, 30, 0, 30)
    circle.BackgroundColor3 = Color3.fromRGB(60, 120, 200)
    circle.BackgroundTransparency = 0.3
    circle.Parent = loadingCircle
    
    local circleCorner = Instance.new("UICorner")
    circleCorner.CornerRadius = UDim.new(1, 0)
    circleCorner.Parent = circle
    
    frame.Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(frame, TweenInfo.new(0.5), 
        {Size = UDim2.new(0, 300, 0, 200)}):Play()
    
    return screenGui, button, loadingCircle
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

local success, popup, button, loadingCircle = pcall(createPopup)

if not success then
    verifyWhitelist()
    return
end

button.MouseButton1Click:Connect(function()
    button.Visible = false
    loadingCircle.Visible = true
    
    local rotation = 0
    local connection
    connection = RunService.RenderStepped:Connect(function(dt)
        rotation = (rotation + dt * 300) % 360
        loadingCircle.Rotation = rotation
    end)
    
    wait(1.5)
    
    if connection then connection:Disconnect() end
    pcall(function() popup:Destroy() end)
    
    verifyWhitelist()
end)