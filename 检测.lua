local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- 创建现代化弹窗
local function createPopup()
    -- 创建模糊背景
    local background = Instance.new("Frame")
    background.Size = UDim2.new(1, 0, 1, 0)
    background.BackgroundColor3 = Color3.new(0, 0, 0)
    background.BackgroundTransparency = 0.7
    background.BorderSizePixel = 0
    background.ZIndex = 10
    
    -- 创建主弹窗
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 350, 0, 280)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.BackgroundColor3 = Color3.fromRGB(28, 30, 38)
    frame.BorderSizePixel = 0
    frame.ZIndex = 11
    
    -- 添加圆角
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 14)
    corner.Parent = frame
    
    -- 添加阴影效果
    local shadow = Instance.new("ImageLabel")
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = Color3.new(0, 0, 0)
    shadow.ImageTransparency = 0.8
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    shadow.Size = UDim2.new(1, 20, 1, 20)
    shadow.Position = UDim2.new(0, -10, 0, -10)
    shadow.BackgroundTransparency = 1
    shadow.ZIndex = 10
    shadow.Parent = frame
    
    -- 标题
    local title = Instance.new("TextLabel")
    title.Text = "白名单验证"
    title.Size = UDim2.new(1, 0, 0, 60)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 26
    title.ZIndex = 12
    title.Parent = frame
    
    -- 图标
    local icon = Instance.new("ImageLabel")
    icon.Image = "rbxassetid://7072718307" -- 锁图标
    icon.Size = UDim2.new(0, 70, 0, 70)
    icon.Position = UDim2.new(0.5, -35, 0.25, -35)
    icon.BackgroundTransparency = 1
    icon.ZIndex = 12
    icon.Parent = frame
    
    -- 描述文本
    local description = Instance.new("TextLabel")
    description.Text = "点击下方按钮验证您的账户是否在白名单中"
    description.Size = UDim2.new(0.8, 0, 0, 60)
    description.Position = UDim2.new(0.1, 0, 0.55, -30)
    description.BackgroundTransparency = 1
    description.TextColor3 = Color3.fromRGB(180, 180, 200)
    description.Font = Enum.Font.Gotham
    description.TextSize = 16
    description.TextWrapped = true
    description.ZIndex = 12
    description.Parent = frame
    
    -- 渐变按钮
    local button = Instance.new("TextButton")
    button.Text = "开始验证"
    button.Size = UDim2.new(0.6, 0, 0, 50)
    button.Position = UDim2.new(0.2, 0, 0.85, -25)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 20
    button.ZIndex = 12
    
    -- 按钮圆角
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button
    
    -- 按钮渐变
    local buttonGradient = Instance.new("UIGradient")
    buttonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 150, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 120, 220))
    }
    buttonGradient.Rotation = 90
    buttonGradient.Parent = button
    
    -- 按钮悬停效果
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {Size = UDim2.new(0.62, 0, 0, 52)}):Play()
        TweenService:Create(buttonGradient, TweenInfo.new(0.2), {
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 170, 255)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 140, 240))
            }
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {Size = UDim2.new(0.6, 0, 0, 50)}):Play()
        TweenService:Create(buttonGradient, TweenInfo.new(0.2), {
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 150, 255)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 120, 220))
            }
        }):Play()
    end)
    
    button.Parent = frame
    
    -- 加载动画
    local loadingCircle = Instance.new("Frame")
    loadingCircle.Size = UDim2.new(0, 40, 0, 40)
    loadingCircle.Position = UDim2.new(0.5, -20, 0.85, -20)
    loadingCircle.BackgroundTransparency = 1
    loadingCircle.Visible = false
    loadingCircle.ZIndex = 12
    
    local circle = Instance.new("ImageLabel")
    circle.Image = "rbxassetid://7198794378" -- 加载图标
    circle.Size = UDim2.new(1, 0, 1, 0)
    circle.BackgroundTransparency = 1
    circle.Parent = loadingCircle
    loadingCircle.Parent = frame
    
    -- 添加到屏幕
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    background.Parent = screenGui
    frame.Parent = screenGui
    screenGui.Parent = playerGui
    
    -- 入场动画
    frame.Size = UDim2.new(0, 0, 0, 0)
    TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
        {Size = UDim2.new(0, 350, 0, 280)}):Play()
    
    TweenService:Create(background, TweenInfo.new(0.5), 
        {BackgroundTransparency = 0.7}):Play()
    
    return screenGui, button, loadingCircle
end

-- 白名单验证函数
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