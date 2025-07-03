-- Roblox Lua 脚本 - 科技感磨砂玻璃高端UI

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer

-- 创建并插入模糊效果
local blur = Instance.new("BlurEffect")
blur.Size = 10 -- 模糊程度，可调节
blur.Parent = Lighting

-- 创建 ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WhitelistCheckGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- 主 Frame
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 400, 0, 220)
Frame.Position = UDim2.new(0.5, -200, 0.5, -110)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Parent = ScreenGui

-- 圆角
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = Frame

-- 霓虹外边框
local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 3
UIStroke.Color = Color3.fromRGB(0, 200, 255)
UIStroke.Transparency = 0.2
UIStroke.Parent = Frame

-- 标题
local Title = Instance.new("TextLabel")
Title.Text = "🚀 科技感 UI"
Title.Size = UDim2.new(1, -50, 0, 50)
Title.Position = UDim2.new(0, 25, 0, 10)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.SciFi
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame

-- 关闭按钮
local CloseBtn = Instance.new("TextButton")
CloseBtn.Text = "✖"
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -40, 0, 10)
CloseBtn.BackgroundTransparency = 1
CloseBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
CloseBtn.Font = Enum.Font.SciFi
CloseBtn.TextScaled = true
CloseBtn.Parent = Frame

CloseBtn.MouseButton1Click:Connect(function()
	blur:Destroy()
	ScreenGui:Destroy()
end)

-- 中间提示
local Info = Instance.new("TextLabel")
Info.Text = "点击下方按钮进行检测"
Info.Size = UDim2.new(1, -40, 0, 40)
Info.Position = UDim2.new(0, 20, 0, 70)
Info.BackgroundTransparency = 1
Info.TextColor3 = Color3.fromRGB(180, 255, 255)
Info.TextScaled = true
Info.Font = Enum.Font.SciFi
Info.TextWrapped = true
Info.Parent = Frame

-- 检测按钮
local Button = Instance.new("TextButton")
Button.Text = "开始检测"
Button.Size = UDim2.new(0.5, 0, 0.2, 0)
Button.Position = UDim2.new(0.25, 0, 0.7, 0)
Button.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
Button.BackgroundTransparency = 0.3
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SciFi
Button.TextScaled = true
Button.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = Button

local BtnStroke = Instance.new("UIStroke")
BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BtnStroke.Thickness = 2
BtnStroke.Color = Color3.fromRGB(0, 200, 255)
BtnStroke.Transparency = 0.1
BtnStroke.Parent = Button

Button.MouseEnter:Connect(function()
	Button.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
end)
Button.MouseLeave:Connect(function()
	Button.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
end)

Button.MouseButton1Click:Connect(function()
	local shrink = TweenService:Create(Button, TweenInfo.new(0.1), {Size = Button.Size - UDim2.new(0, 5, 0, 5)})
	local expand = TweenService:Create(Button, TweenInfo.new(0.1), {Size = Button.Size})
	shrink:Play()
	shrink.Completed:Wait()
	expand:Play()
end)

-- 拖动
local dragging, dragInput, dragStart, startPos

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
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- 淡入动画
Frame.Transparency = 1
for _, v in pairs(Frame:GetDescendants()) do
	if v:IsA("TextLabel") or v:IsA("TextButton") then
		v.TextTransparency = 1
	end
end

TweenService:Create(Frame, TweenInfo.new(0.5), {Transparency = 0}):Play()
for _, v in pairs(Frame:GetDescendants()) do
	if v:IsA("TextLabel") or v:IsA("TextButton") then
		TweenService:Create(v, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
	end
end

-- 点击检测逻辑
Button.MouseButton1Click:Connect(function()
	local success, result = pcall(function()
		return game:HttpGet("https://pastebin.com/raw/n2y94cnE")
	end)

	if success then
		local whitelist = {}
		for username in string.gmatch(result, "[^\r\n]+") do
			table.insert(whitelist, username)
		end

		local allowed = false
		for _, name in ipairs(whitelist) do
			if name == LocalPlayer.Name then
				allowed = true
				break
			end
		end

		if allowed then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
		else
			LocalPlayer:Kick("有白名单吗就执行")
			wait(2)
		end
	else
		warn("获取白名单失败")
	end

	blur:Destroy()
	ScreenGui:Destroy()
end)
