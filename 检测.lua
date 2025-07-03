local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Create the UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.4, 0, 0.3, 0) -- Adjust size as needed
Frame.Position = UDim2.new(0.3, 0, 0.35, 0) -- Center the frame
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 2
Frame.Parent = ScreenGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.9, 0, 0.6, 0)
TextLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextSize = 20
TextLabel.TextWrapped = true
TextLabel.Text = "点击下方的按钮进行验证！" -- You can customize this text
TextLabel.Parent = Frame

local CheckButton = Instance.new("TextButton")
CheckButton.Size = UDim2.new(0.6, 0, 0.2, 0)
CheckButton.Position = UDim2.new(0.2, 0, 0.7, 0)
CheckButton.BackgroundColor3 = Color3.fromRGB(80, 200, 80)
CheckButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckButton.Font = Enum.Font.SourceSansBold
CheckButton.TextSize = 20
CheckButton.Text = "验证"
CheckButton.Parent = Frame

-- Function to check username and execute code
local function checkAndExecute()
    ScreenGui:Destroy() -- Destroy the UI after button is clicked

    local success, whitelistedUsersRaw = pcall(game.HttpGet, "https://pastebin.com/raw/n2y94cnE")
    if success and whitelistedUsersRaw then
        local whitelistedUsers = {}
        for user in string.gmatch(whitelistedUsersRaw, "[^\r\n]+") do
            table.insert(whitelistedUsers, user)
        end

        local isWhitelisted = false
        for _, user in ipairs(whitelistedUsers) do
            if LocalPlayer.Name == user then
                isWhitelisted = true
                break
            end
        end

        if isWhitelisted then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
        else
            LocalPlayer:Kick("有白名单吗就执行")
            wait(2) -- This wait won't be reached if the player is kicked immediately.
                     -- It's here for logical completeness if the kick were delayed or conditional.
        end
    else
        -- Handle case where pastebin content cannot be fetched
        LocalPlayer:Kick("无法获取白名单列表，请稍后再试。")
        wait(2)
    end
end

-- Connect button click to the function
CheckButton.MouseButton1Click:Connect(checkAndExecute)