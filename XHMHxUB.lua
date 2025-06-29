loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "纯缝合"; Text ="..."; Duration = 4; })

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "黄某脚本测试版",
    Text = "正在加载（反挂机已开启）",
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
local Window = OrionLib:MakeWindow({Name ="黄某脚本测试版", HidePremium = false, SaveConfig = true,IntroText = "黄某脚本测试版", ConfigFolder = "黄某脚本测试版"})

local Tab = Window:MakeTab({
    Name = "信息",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddParagraph("黄某脚本测试版")
Tab:AddParagraph("阿尔宙斯注入器可能用不了")
Tab:AddParagraph("作者roblox id:CNHM88")
Tab:AddParagraph("作者QQ391108721")
Tab:AddParagraph("Q群1043327536")
Tab:AddParagraph("如果你是买来的那就说明你被圈了")
Tab:AddParagraph("倒卖者死全家并且螺旋飞天")

local Tab = Window:MakeTab({
	Name = "设置",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID"," "..game.GameId.."")

Tab:AddButton({
	Name = "开启玩家进出服务器提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddToggle({

	Name = "穿墙",

	Default = false,

	Callback = function(Value)

		if Value then

		    Noclip = true

		    Stepped = game.RunService.Stepped:Connect(function()

			    if Noclip == true then

				    for a, b in pairs(game.Workspace:GetChildren()) do

                        if b.Name == game.Players.LocalPlayer.Name then

                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do

                                if v:IsA("BasePart") then

                                    v.CanCollide = false

                                end

                            end

                        end

                    end

			    else

				    Stepped:Disconnect()

			    end

		    end)

	    else

		    Noclip = true

	    end

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
	Name = "超广角设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Workspace.CurrentCamera.FieldOfView = Value
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

Tab:AddTextbox({
	Name = "最小视野设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = v
	end
})

Tab:AddButton({
  Name = "重新加入服务器",
  Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            game:GetService("Players").LocalPlayer
        )
  end
})

Tab:AddButton({
  Name = "离开服务器",
  Callback = function()
     game:Shutdown()
  end
})

Tab:AddButton({
  Name = "帧率显示",
  Callback = function()
 -- Gui to Lua 
 -- Version: 3.2 
  
 -- Instances:
 local ScreenGui = Instance.new("ScreenGui") 
 local FpsLabel = Instance.new("TextLabel")
 
 --Properties:
 
 ScreenGui.Name = "FPSGui" 
 ScreenGui.ResetOnSpawn = false 
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 
 FpsLabel.Name = "FPSLabel" 
 FpsLabel.Size = UDim2.new(0, 100, 0, 50) 
 FpsLabel.Position = UDim2.new(0, 10, 0, 10) 
 FpsLabel.BackgroundTransparency = 1 
 FpsLabel.Font = Enum.Font.SourceSansBold 
 FpsLabel.Text = "帧率: 0" 
 FpsLabel.TextSize = 20 
 FpsLabel.TextColor3 = Color3.new(1, 1, 1) 
 FpsLabel.Parent = ScreenGui 
  
 function updateFpsLabel() 
     local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) 
     FpsLabel.Text = "帧率: " .. fps 
 end 
  
  game:GetService("RunService").RenderStepped:Connect(updateFpsLabel) 
  
 ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


 animateCredits()
  end
})

Tab:AddButton({
  Name = "显示时间",
  Callback = function()
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
  end
})


Tab:AddButton({
  Name = "重开",
  Callback = function()

game.Players.LocalPlayer.Character.Head:Remove()

  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

local Tab = Window:MakeTab({
	Name = "死铁轨",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddParagraph("债券区")

Tab:AddButton({
  Name = "红叶脚本",
  Callback = function()
  loadstring(game:HttpGet("https://getnative.cc/script/loader"))()
  end
})

Tab:AddButton({
  Name = "自动胜利",
  Callback = function()
  loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-Auto-Win-Script-for-Dead-Rails-Instant-win-AFK-farm-KEYLESS-39867"))()
  end
})

Tab:AddButton({
  Name = "刷债券(最好用)",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Anoonymouss69/ScriptHUB/refs/heads/main/AutoBonds"))()
  end
})

Tab:AddButton({
  Name = "刷债券(中文)",
  Callback = function()
  loadstring(request({Url="https://raw.githubusercontent.com/ShenJiaoBen/Partial-Server-Ribbon/refs/heads/main/自动债券Linninew.lua"}).Body)()
  end
})

Tab:AddButton({
  Name = "刷债券(speed hub)",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
})

Tab:AddButton({
  Name = "Ringta刷债券",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/fjruie/newcopybonds.github.io/refs/heads/main/ringtadead.lua"))()
  end
})

Tab:AddParagraph("功能区")

Tab:AddButton({
  Name = "无拉回飞行",
  Callback = function()
  loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-FLY-in-Dead-Rails-One-Click-Script-KEYLESS-by-Moondiety-39179"))()
  end
})

Tab:AddButton({
  Name = "无拉回飞行第二版",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/selftilted/flighttosky/refs/heads/main/DeadRails"))()
  end
})

Tab:AddButton({
  Name = "近战武器攻速",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/HeadHarse/DeadRails/refs/heads/main/V4SWING"))()
  end
})

Tab:AddButton({
  Name = "近战武器攻速(第二类)",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/HeadHarse/Dusty/refs/heads/main/NOTV4TRUST"))()
  end
})

Tab:AddButton({
  Name = "hub好用的",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/m00ndiety/Dead-rails/refs/heads/main/Full-GUI'))()
  end
})

Tab:AddButton({
  Name = "无限制焊接",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/hbjrev/airweld.github.io/refs/heads/main/RINGTA.lua'))()
  end
})

Tab:AddParagraph("卡密:ringta")

Tab:AddButton({
  Name = "铁拳(可以击飞狼人)",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
  end
})

Tab:AddParagraph("任务类")

Tab:AddButton({
  Name = "僵尸马",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/wehjf/Pestilenceringta.github.io/refs/heads/main/horseringta.lua"))()
  end
})

Tab:AddParagraph("娱乐类")

Tab:AddButton({
  Name = "Zusume hub",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ZusumeHub/ZusumeHub/refs/heads/main/V3%20deadrails"))()
  end
})

Tab:AddParagraph("注意:复制的东西不能使用")

Tab:AddButton({
  Name = "交互无冷却",
  Callback = function()
  

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
	if v:IsA("ProximityPrompt") then
		v["HoldDuration"] = 0
	end
end
 
Tab:AddButton({
  Name = "蜘蛛侠HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SpiderScriptRB/Dead-Rails-SpiderXHub-Script/refs/heads/main/SpiderXHub%202.0.txt"))()
  end
})
 
game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
    v["HoldDuration"] = 0
end)
  end
})

local Tab = Window:MakeTab({
	Name = "最强战场",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "Fe美化防御",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkRandomUsernameok/PublicAssets/refs/heads/main/Releases/MUI.lua"))()
  end
})

local Tab = Window:MakeTab({
	Name = "AUT",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "sannin",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/aut.lua"))()
  end
})
