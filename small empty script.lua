local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "测试阶段"; Text ="勿外传"; Duration = 4; })

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "小空脚本",
    Text = "反挂机已开启",
    Duration = 5, 
})
print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/xiak27/637/refs/heads/main/xiao586.lua'))()
local Window = OrionLib:MakeWindow({Name ="小空脚本(内测版)", HidePremium = false, SaveConfig = true,IntroText = "小空脚本", ConfigFolder = "小空脚本"})

local Tab = Window:MakeTab({
	Name = "信息",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("您的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("您的服务器ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
    Name = "通用功能",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "玩家加入游戏提示",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
     end 
})

Tab:AddButton({
    Name = "获得管理员权限",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
     end 
})

Tab:AddButton({
    Name = "死亡笔记",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
     end 
})

Tab:AddButton({
    Name = "透视",
    Callback = function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
     end 
})

Tab:AddButton({
    Name = "甩人",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
     end 
})

Tab:AddTextbox({
	Name = "自定义头部大小",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)		game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.Head.Transparency = 1
v.Character.Head.BrickColor = BrickColor.new("Red")
v.Character.Head.Material = "Neon"
v.Character.Head.CanCollide = false
v.Character.Head.Massless = true
end)
end
end
end
end)    
	end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddTextbox({
	Name = "最大视野设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Workspace.CurrentCamera.FieldOfView = Value
	end
})

Tab:AddButton({
	Name = "光影V4",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function()
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
  	end
})

Tab:AddButton({
    Name = "情云同款可调自瞄",
    Callback = function()
  local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)
     end 
})

Tab:AddButton({
  Name = "铁拳",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
  end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddSlider({
	Name = "跳跃高度",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  	end    
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  end
})

Tab:AddSlider({
	Name = "速度",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddButton({
	Name = "传送玩家",
	Callback = function()      	loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
  	end
})

Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
  	end
})

Tab:AddButton({
	Name = "替身",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
    end
})

Tab:AddButton({
	Name = "阿尔宙斯自瞄",
	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()    
  	end    
})

Tab:AddButton({
	Name = "铁拳",
	Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
  	end    
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  end
})
local Tab = Window:MakeTab({
	Name = "无限r币🤑",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "80r币",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RunDTM/roblox-bluescreen/main/bsod.lua"))()
     end 
})

Tab:AddButton({
    Name = "100r币",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RunDTM/roblox-bluescreen/main/bsod.lua"))()
     end 
})

Tab:AddButton({
    Name = "500r币",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RunDTM/roblox-bluescreen/main/bsod.lua"))()
     end 
})

Tab:AddButton({
    Name = "1000r币",
    Callback = function()
local Players = game:GetService("Players")
Players.LocalPlayer:Kick("臭傻逼要你妈的r币")
wait(2)
     end 
})

Tab:AddButton({
    Name = "10000r币",
    Callback = function()
game:Shutdown()
     end 
})
local Tab = Window:MakeTab({
	Name = "各大脚本中心",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "皮脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
     end 
})

Tab:AddButton({
    Name = "XA",
    Callback = function()
loadstring(game:HttpGet("https://xingtaiduan.pythonanywhere.com/Loader"))()
     end 
})

Tab:AddButton({
    Name = "云脚本",
    Callback = function()
loadstring(game:HttpGet("https://github.com/CloudX-ScriptsWane/White-ash-script/raw/main/Beta.lua", true))()
     end 
})

Tab:AddButton({
    Name = "霖溺脚本",
    Callback = function()
LnScript = "霖溺-免费版加载器"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ScriptLoader/refs/heads/main/Linni_FreeLoader.lua"))()
     end 
})

Tab:AddButton({
    Name = "sansHub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
     end 
})

Tab:AddButton({
    Name = "HOHOHub",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
     end 
})

Tab:AddButton({
    Name = "MS脚本",
    Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
     end 
})

Tab:AddButton({
    Name = "R脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoyi-boop/rjiaoben/refs/heads/main/RJIAOBENNB.lua",true))()
     end 
})

Tab:AddButton({
    Name = "苏脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kukunb/kukulol/refs/heads/main/SUscript"))()
     end 
})

Tab:AddButton({
    Name = "情云脚本",
    Callback = function()
loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
     end 
})

Tab:AddButton({
    Name = "大司马脚本中心V5",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/gfop/refs/heads/main/Protected_4687541665942703.lua"))()
     end 
})

Tab:AddButton({
    Name = "剑客脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0neK/Hello/refs/heads/main/SG-V7"))()
     end 
})

Tab:AddButton({
    Name = "XK脚本",
    Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
     end 
})

Tab:AddButton({
    Name = "宿傩脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sukuna2134/Sukuna2/refs/heads/main/%E5%AE%BF%E5%82%A9%E8%84%9A%E6%9C%AC%E5%85%8D%E8%B4%B9%E7%89%88"))()
     end 
})

Tab:AddButton({
    Name = "红叶脚本",
    Callback = function()
loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
     end 
})

Tab:AddButton({
    Name = "神金脚本",
    Callback = function()
loadstring(game:HttpGet("https://github.com/shenjin55/qq-927274889/raw/refs/heads/main/roblox-shen-jin.lua"))()
     end 
})

Tab:AddButton({
    Name = "叶脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-CNVIP-XIAOYE.lua"))()
     end 
})

local Section = Tab:AddSection({
        Name = "比较野鸡的脚本"
})

Tab:AddButton({
    Name = "黄某脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HBC63/CHINAHM/refs/heads/main/HMHUB.lua"))()
    end
})

Tab:AddButton({
    Name = "沙脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/114514lzkill/ShaHUB/refs/heads/main/ShaHUB.lua"))()
     end 
})
local Tab = Window:MakeTab({
	Name = "死铁轨",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "红叶",
    Callback = function()
loadstring(game:HttpGet("https://xingtaiduan.pythonanywhere.com/Loader"))()
     end 
})

Tab:AddButton({
    Name = "sansHub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iopjklbnmsss/SansHubScript/refs/heads/main/SansHub"))()
     end 
})

Tab:AddButton({
    Name = "TN Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/Bringall"))()
     end 
})

Tab:AddButton({
    Name = "Nat Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
     end 
})


Tab:AddButton({
    Name = "不知道叫啥",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SpiderScriptRB/Dead-Rails-SpiderXHub-Script/refs/heads/main/SpiderXHub%202.0.txt"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥2",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥3",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-Best-keyless-op-script-insta-kill-mobs-31507"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥4",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubMain"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥5",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Markklol/aw/refs/heads/main/Protected/DRailsv2.lua'))() 
     end 
})

Tab:AddButton({
    Name = "不知道叫啥6",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥7",
    Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e1cfd93b113a79773d93251b61af1e2f.lua"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥8",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥9",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Mrpopcatfrombupge/FernHub/refs/heads/main/DeadRailsFarm", true))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥10",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-NullFire-32921"))()
     end 
})

Tab:AddButton({
    Name = "不知道叫啥11",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Haxxxxxxxxxxxx/DeadRails/refs/heads/main/HaxWareV2.lua"))()
     end 
})

Tab:AddButton({
    Name = "刷券",
    Callback = function()
getgenv().AutoExecute = true(loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/hungquan99/HungHUB/main/loader.lua"))()
     end 
})

Tab:AddButton({
    Name = "刷券2",
    Callback = function()
getgenv().auto_bond=true loadstring(game:HttpGet(' https://raw.githubusercontent.com/m00ndiety/Dead-rails/refs/heads/main/Auto-Win-With-Bonds'))()
     end 
})

Tab:AddButton({
    Name = "刷券3",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/%E5%88%B7%E5%80%BA%E5%88%B8"))()
     end 
})

Tab:AddButton({
    Name = "刷券4",
    Callback = function()
loadstring(request({Url="https://raw.githubusercontent.com/ShenJiaoBen/Partial-Server-Ribbon/refs/heads/main/自动债券Linninew.lua"}).Body)()
     end 
})

Tab:AddButton({
    Name = "刷券5",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cryzo-bexz/LionLoader/refs/heads/main/Loader/Lionhub/LionLoader.lua"))()
     end 
})

Tab:AddButton({
    Name = "无拉回飞行",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-FLY-in-Dead-Rails-One-Click-Script-KEYLESS-by-Moondiety-39179"))()
     end 
})
local Tab = Window:MakeTab({
	Name = "种植花园",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "脚本1",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Grow-a-Garden-Dead-Rails-Inf-Seeds-Script-35617"))()
     end 
})

Tab:AddButton({
    Name = "脚本2",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZusumeHub/ZusumeHub/refs/heads/main/GZXAG7"))()
     end 
})

Tab:AddButton({
    Name = "脚本3(玩家背包查看器)",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/whalekfc/GardenGrowScript/refs/heads/main/PlayerBackpackViewer.lua"))()
     end 
})

Tab:AddButton({
    Name = "脚本4",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MoziIOnTop/MoziIHub/refs/heads/main/GrowaGarden"))()
     end 
})

Tab:AddButton({
    Name = "脚本5",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/main/Main/GaG/Main.lua"))()
     end 
})

Tab:AddButton({
    Name = "脚本6",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
     end 
})

Tab:AddButton({
    Name = "脚本7",
    Callback = function()
loadstring(game:HttpGet("https://lunor.dev/loader"))()
     end 
})

Tab:AddButton({
    Name = "脚本8",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GRPGaming/Key-System/refs/heads/Xycer-Hub-Script/GAZG9"))()
     end 
})

Tab:AddButton({
    Name = "脚本9",
    Callback = function()
loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
     end 
})

Tab:AddButton({
    Name = "脚本10",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iwantsom3/script/refs/heads/main/Gag"))()
     end 
})

Tab:AddButton({
    Name = "1",
    Callback = function()
-- 基础设置
local FOV = 100
local SMOOTHNESS = 10
local PREDICTION_DISTANCE = 5
local AIM_KEY = Enum.KeyCode.E
local GUI_COLOR = Color3.fromRGB(128, 0, 128)

-- 服务引用
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- 创建FOV可视化圆环
local FOVRing = Drawing.new("Circle")
FOVRing.Visible = true
FOVRing.Thickness = 2
FOVRing.Color = Color3.fromRGB(0, 255, 0)
FOVRing.Filled = false
FOVRing.Radius = FOV
FOVRing.Position = Camera.ViewportSize / 2

-- 创建GUI界面
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AimAssistantGUI"
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderColor3 = GUI_COLOR
MainFrame.BorderSizePixel = 2
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0.4, 0, 0.4, 0)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- UI元素创建函数
local function createLabel(name, text, position)
    local label = Instance.new("TextLabel")
    label.Name = name
    label.Text = text
    label.TextColor3 = Color3.fromRGB(220, 220, 220)
    label.BackgroundTransparency = 1
    label.Position = position
    label.Size = UDim2.new(0.8, 0, 0.15, 0)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 14
    label.Parent = MainFrame
    return label
end

local function createSlider(name, value, position)
    local slider = Instance.new("TextBox")
    slider.Name = name
    slider.Text = tostring(value)
    slider.TextColor3 = Color3.white
    slider.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    slider.BorderColor3 = GUI_COLOR
    slider.BorderSizePixel = 1
    slider.Position = position
    slider.Size = UDim2.new(0.8, 0, 0.15, 0)
    slider.Font = Enum.Font.Gotham
    slider.TextSize = 14
    slider.Parent = MainFrame
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = slider
    
    return slider
end

-- 创建UI元素
createLabel("FovLabel", "瞄准范围", UDim2.new(0.1, 0, 0.1, 0))
local FovSlider = createSlider("FovSlider", FOV, UDim2.new(0.1, 0, 0.3, 0))

createLabel("SmoothLabel", "平滑系数", UDim2.new(0.1, 0, 0.5, 0))
local SmoothSlider = createSlider("SmoothSlider", SMOOTHNESS, UDim2.new(0.1, 0, 0.7, 0))

createLabel("PredictionLabel", "预判距离", UDim2.new(0.1, 0, 0.9, 0))
local PredictionSlider = createSlider("PredictionSlider", PREDICTION_DISTANCE, UDim2.new(0.1, 0, 1.1, 0))

-- 最小化按钮
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.white
MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
MinimizeButton.Position = UDim2.new(0.9, -5, 0.02, 0)
MinimizeButton.Size = UDim2.new(0.08, 0, 0.08, 0)
MinimizeButton.ZIndex = 2
MinimizeButton.Parent = MainFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MinimizeButton

-- 最小化功能
local isMinimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        MainFrame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
        MinimizeButton.Text = "+"
    else
        MainFrame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
        MinimizeButton.Text = "-"
    end
end)

-- 更新绘图函数
local function updateFOVRing()
    FOVRing.Position = Camera.ViewportSize / 2
    FOVRing.Radius = FOV
end

-- 寻找最近玩家
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local centerScreen = Camera.ViewportSize / 2
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Player and player.Character then
            local head = player.Character:FindFirstChild("Head")
            if head then
                local screenPos, visible = Camera:WorldToViewportPoint(head.Position)
                if visible then
                    local distance = (Vector2.new(screenPos.X, screenPos.Y) - centerScreen).Magnitude
                    if distance < shortestDistance and distance < FOV then
                        shortestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end
    
    return closestPlayer
end

-- 瞄准逻辑
local targetCFrame = Camera.CFrame
RunService.RenderStepped:Connect(function()
    updateFOVRing()
    
    if UserInputService:IsKeyDown(AIM_KEY) then
        local closestPlayer = getClosestPlayer()
        if closestPlayer and closestPlayer.Character then
            local head = closestPlayer.Character:FindFirstChild("Head")
            local rootPart = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
            
            if head and rootPart then
                local isMoving = rootPart.Velocity.Magnitude > 2
                local targetPosition = head.Position
                
                -- 预判移动
                if isMoving then
                    targetPosition += rootPart.Velocity.Unit * PREDICTION_DISTANCE
                end
                
                targetCFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
                Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, 1 / SMOOTHNESS)
                return
            end
        end
    end
    
    -- 无目标时保持原视角
    Camera.CFrame = Camera.CFrame:Lerp(Camera.CFrame, 0.1)
end)

-- 设置更新函数
local function updateSetting(setting, value, min, max)
    local num = tonumber(value)
    if num and num >= min and num <= max then
        setting = num
        return true
    end
    return false
end

-- 滑块事件绑定
FovSlider.FocusLost:Connect(function()
    if updateSetting(FOV, FovSlider.Text, 10, 500) then
        FovSlider.Text = tostring(FOV)
    else
        FovSlider.Text = tostring(FOV)
    end
end)

SmoothSlider.FocusLost:Connect(function()
    if updateSetting(SMOOTHNESS, SmoothSlider.Text, 1, 50) then
        SmoothSlider.Text = tostring(SMOOTHNESS)
    else
        SmoothSlider.Text = tostring(SMOOTHNESS)
    end
end)

PredictionSlider.FocusLost:Connect(function()
    if updateSetting(PREDICTION_DISTANCE, PredictionSlider.Text, 0, 20) then
        PredictionSlider.Text = tostring(PREDICTION_DISTANCE)
    else
        PredictionSlider.Text = tostring(PREDICTION_DISTANCE)
    end
end)

-- 退出清理
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("AimAssistant")
        FOVRing:Remove()
        ScreenGui:Destroy()
    end
end)
     end 
})