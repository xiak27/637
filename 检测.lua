-- Roblox Lua 脚本 - 高端UI版

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

-- 创建 ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WhitelistCheckGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- 创建主 Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, -175, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Parent = ScreenGui

-- 圆角
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

-- 阴影
local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Parent = Frame

-- 标题
local Title = Instance.new("TextLabel")
Title.Text = "ui随便"
Title.Size = UDim2.new(1, -40, 0, 40)
Title.Position = UDim2.new(0, 20, 0, 10)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame

-- 关闭按钮
local CloseBtn = Instance.new("TextButton")
CloseBtn.Text = "✖"
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseBtn.Font = Enum.Font.Gotham
CloseBtn.TextScaled = true
CloseBtn.Parent = Frame

CloseBtn.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

-- 按钮
local Button = Instance.new("TextButton")
Button.Text = "点击检测"
Button.Size = UDim2.new(0.5, 0, 0.2, 0)
Button.Position = UDim2.new(0.25, 0, 0.65, 0)
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextScaled = true
Button.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = Button

-- 按钮悬停效果
Button.MouseEnter:Connect(function()
	Button.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
end)
Button.MouseLeave:Connect(function()
	Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
end)

-- 按钮点击动画
Button.MouseButton1Click:Connect(function()
	local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local shrink = TweenService:Create(Button, tweenInfo, {Size = Button.Size - UDim2.new(0, 5, 0, 5)})
	local expand = TweenService:Create(Button, tweenInfo, {Size = Button.Size})

	shrink:Play()
	shrink.Completed:Wait()
	expand:Play()
end)

-- 拖动功能
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- 弹窗淡入动画
Frame.Transparency = 1
for _, desc in pairs(Frame:GetDescendants()) do
	if desc:IsA("TextLabel") or desc:IsA("TextButton") then
		desc.TextTransparency = 1
	end
end

local tween = TweenService:Create(Frame, TweenInfo.new(0.4), {Transparency = 0})
tween:Play()
for _, desc in pairs(Frame:GetDescendants()) do
	if desc:IsA("TextLabel") or desc:IsA("TextButton") then
		TweenService:Create(desc, TweenInfo.new(0.4), {TextTransparency = 0}):Play()
	end
end

-- 点击按钮后执行检测逻辑
Button.MouseButton1Click:Connect(function()
	-- 请求白名单
	local success, result = pcall(function()
		return game:HttpGet("https://pastebin.com/raw/n2y94cnE")
	end)

	if success then
		local whitelist = {}
		for username in string.gmatch(result, "[^\r\n]+") do
			table.insert(whitelist, username)
		end

		local usernameAllowed = false
		for _, name in ipairs(whitelist) do
			if name == LocalPlayer.Name then
				usernameAllowed = true
				break
			end
		end

		if usernameAllowed then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
		else
			LocalPlayer:Kick("有白名单吗就执行")
			wait(2)
		end
	else
		warn("获取白名单失败")
	end

	-- 检测后销毁UI
	ScreenGui:Destroy()
end)
