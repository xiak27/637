local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "小空脚本",
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
local OrionLib =loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local Window = OrionLib:MakeWindow({Name = "小空脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用小空脚本", ConfigFolder = "欢迎使用小空脚本"})
local about = Window:MakeTab({
    Name = "小空脚本",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")


local Tab = Window:MakeTab({
    Name = "作者",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "晓空",
    Callback = function()
       end
})

local Tab = Window:MakeTab({
    Name = "复制",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
   Name = "点击复制群号",
   Callback = function()
    setclipboard("934692663")
   end
})

Tab:AddButton({
   Name = "点击复制作者QQ号",
   Callback = function()
    setclipboard("2032685964")
   end
})
local Tab = Window:MakeTab({
    Name = "脚本",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "黑客脚本",
	Callback = function()
loadstring(game: HttpGet("https://raw.githubusercontent.com/BirthScripts/Scripts/main/c00l.lua"))()
    end
})

Tab:AddButton({
    Name = "皮",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua')))()
    end
})

Tab:AddButton({
    Name = "X",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/maowang1/X/refs/heads/main/Protected_7336712241286912.txt')))()
    end
})

Tab:AddButton({
    Name = "冷",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LENG8123/UI/refs/heads/main/ohio%20library.txt"))()        
    end
})
local Tab = Window:MakeTab({
    Name = "通用",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "飞行",
    Callback = function()   loadstring(game:HttpGet("https://github.com/user-attachments/files/20122339/xiaoFly.txt"))()
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

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

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

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

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

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

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

Tab:AddButton({

	Name = "光影V4",

	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
     end
})

currency:AddButton({
    Name = "建筑工具",
    Callback = function()
        Hammer = Instance.new("HopperBin")
        Hammer.Name = "锤子"
        Hammer.BinType = 4
        Hammer.Parent = game.Players.LocalPlayer.Backpack
        Clone = Instance.new("HopperBin")
        Clone.Name = "克隆"
        Clone.BinType = 3
        Clone.Parent = game.Players.LocalPlayer.Backpack
        Grab = Instance.new("HopperBin")
        Grab.Name = "抓取"
        Grab.BinType = 2
        print("执行(建筑工具)")
    end
})

Tab:AddButton({
    Name = "wi指令",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
     end 
})
Tab:AddButton({
    Name = "爬墙",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
     end 
})

Tab:AddButton({
    Name = "替身",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
     end 
})

Tab:AddButton({
    Name = "甩飞1",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
     end 
})

Tab:AddButton({
    Name = "甩飞2",
    Callback = function()
     end 
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
local Tab = Window:MakeTab({
    Name = "俄亥俄州",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})

Tab:AddButton({
    Name = "皮",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pijiaobenMSJMleng/ehhdvdhd/refs/heads/main/xiaopi77xiaopi77mainQQ1002100032-Roblox-Pi-script.lua"))()
     end 
})
Tab:AddButton({
    Name = "监狱人生",
    Callback = function()

local Section = Tab:AddSection({
	Name = "脚本"
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

local Section = Tab:AddSection({
	Name = "功能"
})

Tab:AddButton({
	Name = "变车模型",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
  	end
})

Tab:AddButton({
	Name = "变死神（有惊喜仅自己可见）",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()    
  	end
})

Tab:AddButton({
	Name = "变钢铁侠（有惊喜别人能看见）",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
  	end
})

Tab:AddButton({
	Name = "手里剑（秒杀）",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/mSLiAZHk"))()
  	end
})

Tab:AddButton({
	Name = "杀死全部（新版重复杀）",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
  	end
})

Tab:AddButton({
	Name = "无敌模式（别人可见）",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
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
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "逮捕",
	Callback = function()
Player = game.Players.LocalPlayer
	Pcf = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v.Name ~= Player.Name then
	local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})

Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "🌚小黑子",
	Icon = "rbxassetid://93566402708060",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/malicious-dev/RobloxScripting/main/swordwarrior.lua'),true))()
  end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end
})

Tab:AddButton({
    Name = "3(需卡密)",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/SwordWarrior", true))()    
    end
})

Tab:AddButton({
  Name = "4",
  Callback = function()
   loadstring(game:HttpGet("https://scriptblox.com/raw/UPD-Sword-Warriors-Simulator-OP-EASY-UGC-SOON-AUTOFARM-8004"))()
  end
})

Tab:AddButton({
  Name = "5(需卡密)",
  Callback = function()
   loadstring(game:HttpGet("https://scriptblox.com/raw/Toilet!Event!Sword-Warriors!-NEW-OP-SCRIPT-7866"))()
  end
})

Tab:AddButton({
  Name = "6",
  Callback = function()
   loadstring(game:HttpGet("https://scriptblox.com/raw/ToiletTower!Sword-Warriors!-Instant-Sword-Swing-7653"))()
  end
})


local UITab7 = win:Tab("『画质光影』",'87437251671184')

local about = UITab7:section("『画质光影』",true)

about:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("光影滤镜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("超高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("光影V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("RTX高仿",function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

about:Button("光影深", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
about:Button("光影浅", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

local UITab8 = win:Tab("『无限Robux』",'87437251671184')

local about = UITab8:section("『无限Robux』",true)

about:Button("20Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("50Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("100Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("200Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("500Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("1000Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)
