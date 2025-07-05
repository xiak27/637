-- 放在 StarterPlayerScripts 下的 LocalScript

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 创建 ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MusicPlayerGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- 创建主容器
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- 圆角
local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 12)
uicorner.Parent = mainFrame

-- 搜索框
local searchBox = Instance.new("TextBox")
searchBox.Size = UDim2.new(1, -20, 0, 30)
searchBox.Position = UDim2.new(0, 10, 0, 10)
searchBox.PlaceholderText = "输入音乐名字..."
searchBox.Text = ""
searchBox.TextSize = 16
searchBox.Parent = mainFrame

-- 搜索按钮
local searchBtn = Instance.new("TextButton")
searchBtn.Size = UDim2.new(1, -20, 0, 30)
searchBtn.Position = UDim2.new(0, 10, 0, 50)
searchBtn.Text = "搜索音乐"
searchBtn.TextSize = 16
searchBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
searchBtn.TextColor3 = Color3.new(1, 1, 1)
searchBtn.Parent = mainFrame

local uicorner2 = Instance.new("UICorner")
uicorner2.CornerRadius = UDim.new(0, 6)
uicorner2.Parent = searchBtn

-- 搜索结果
local resultLabel = Instance.new("TextLabel")
resultLabel.Size = UDim2.new(1, -20, 0, 60)
resultLabel.Position = UDim2.new(0, 10, 0, 90)
resultLabel.Text = "搜索结果会显示在这里"
resultLabel.TextWrapped = true
resultLabel.TextSize = 14
resultLabel.BackgroundTransparency = 1
resultLabel.TextColor3 = Color3.new(0, 0, 0)
resultLabel.Parent = mainFrame

-- 播放按钮
local playBtn = Instance.new("TextButton")
playBtn.Size = UDim2.new(1, -20, 0, 30)
playBtn.Position = UDim2.new(0, 10, 0, 160)
playBtn.Text = "播放选中音乐"
playBtn.TextSize = 16
playBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
playBtn.TextColor3 = Color3.new(1, 1, 1)
playBtn.Parent = mainFrame

local uicorner3 = Instance.new("UICorner")
uicorner3.CornerRadius = UDim.new(0, 6)
uicorner3.Parent = playBtn

-- 预设的“数据库”
local musicDatabase = {
    ["lofi"] = 1837466428, -- 举例音频 ID
    ["happy"] = 1843521490,
    ["epic"] = 1843562585
}

local selectedSoundId = nil
local sound = Instance.new("Sound")
sound.Name = "BackgroundMusic"
sound.Parent = workspace

-- 点击搜索
searchBtn.MouseButton1Click:Connect(function()
    local keyword = string.lower(searchBox.Text)
    local foundId = nil
    for k, id in pairs(musicDatabase) do
        if string.find(k, keyword) then
            foundId = id
            break
        end
    end

    if foundId then
        resultLabel.Text = "找到音乐 ID: " .. foundId
        selectedSoundId = foundId
    else
        resultLabel.Text = "没有找到匹配的音乐"
        selectedSoundId = nil
    end
end)

-- 点击播放
playBtn.MouseButton1Click:Connect(function()
    if selectedSoundId then
        sound.SoundId = "rbxassetid://" .. selectedSoundId
        sound.Volume = 0.5
        sound.Looped = true
        sound:Play()
    else
        resultLabel.Text = "请先搜索并选择音乐"
    end
end)
