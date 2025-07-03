local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- 创建主屏幕GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystem"
screenGui.Parent = playerGui

-- 创建主框架
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 350, 0, 220)
frame.Position = UDim2.new(0.5, -175, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- 添加圆角效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = frame

-- 添加标题
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "高级功能验证"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.Parent = frame

-- 添加装饰线
local line = Instance.new("Frame")
line.Name = "Divider"
line.Size = UDim2.new(0.8, 0, 0, 2)
line.Position = UDim2.new(0.1, 0, 0, 50)
line.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
line.BorderSizePixel = 0
line.Parent = frame

-- 添加输入框
local inputBox = Instance.new("TextBox")
inputBox.Name = "KeyInput"
inputBox.Size = UDim2.new(0.8, 0, 0, 40)
inputBox.Position = UDim2.new(0.1, 0, 0.3, 0)
inputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
inputBox.BorderSizePixel = 0
inputBox.PlaceholderText = "请输入卡密"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.Font = Enum.Font.Gotham
inputBox.TextSize = 18
inputBox.Parent = frame

-- 输入框圆角
local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 6)
inputCorner.Parent = inputBox

-- 添加输入框内边距
local padding = Instance.new("UIPadding")
padding.PaddingLeft = UDim.new(0, 15)
padding.Parent = inputBox

-- 添加提交按钮
local submitButton = Instance.new("TextButton")
submitButton.Name = "SubmitButton"
submitButton.Size = UDim2.new(0.8, 0, 0, 45)
submitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
submitButton.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
submitButton.BorderSizePixel = 0
submitButton.Text = "验证卡密"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.Font = Enum.Font.GothamBold
submitButton.TextSize = 20
submitButton.Parent = frame

-- 按钮圆角
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = submitButton

-- 添加按钮悬停效果
submitButton.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(
        submitButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(129, 140, 248)}
    ):Play()
end)

submitButton.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(
        submitButton,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundColor3 = Color3.fromRGB(99, 102, 241)}
    ):Play()
end)

-- 添加状态标签
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(0.8, 0, 0, 20)
statusLabel.Position = UDim2.new(0.1, 0, 0.85, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "等待验证..."
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.TextSize = 14
statusLabel.Parent = frame

-- 添加关闭按钮
local closeButton = Instance.new("ImageButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 24, 0, 24)
closeButton.Position = UDim2.new(1, -30, 0, 10)
closeButton.BackgroundTransparency = 1
closeButton.Image = "rbxassetid://3926305904"
closeButton.ImageRectOffset = Vector2.new(284, 4)
closeButton.ImageRectSize = Vector2.new(24, 24)
closeButton.Parent = frame

-- 关闭按钮功能
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- 卡密验证功能
submitButton.MouseButton1Click:Connect(function()
    local key = inputBox.Text
    
    -- 清空输入框
    inputBox.Text = ""
    
    -- 更改状态
    statusLabel.Text = "验证中..."
    statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    
    wait(0.5) -- 模拟验证过程
    
    if key == "636" then
        -- 正确卡密
        statusLabel.Text = "验证成功！加载功能中..."
        statusLabel.TextColor3 = Color3.fromRGB(72, 222, 120)
        
        -- 执行远程脚本
        wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaokong6/28285598/refs/heads/main/bbb.lua"))()
        
        -- 关闭UI
        wait(1)
        screenGui:Destroy()
    else
        -- 错误卡密
        statusLabel.Text = "666" -- 错误提示
        statusLabel.TextColor3 = Color3.fromRGB(248, 113, 113)
        
        -- 抖动动画
        local shakeAmount = 5
        for i = 1, 3 do
            inputBox.Position = UDim2.new(0.1, -shakeAmount, 0.3, 0)
            wait(0.05)
            inputBox.Position = UDim2.new(0.1, shakeAmount, 0.3, 0)
            wait(0.05)
            inputBox.Position = UDim2.new(0.1, 0, 0.3, 0)
            wait(0.05)
        end
    end
end)

-- 按回车键提交
inputBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        submitButton:Activate()
    end
end)

-- 设置UI在最前面
screenGui.DisplayOrder = 10