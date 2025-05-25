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

Tab:AddButton({

	Name = "变成蛇",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()

	end

})

	Name = "让别让别人控制自己",

	Callback = function()

loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()

	end

})

Tab:AddButton({
	Name = "子弹追踪",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
  	end    
})

Tab:AddButton({

	Name = "点击传送工具",

	Callback = function()

mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

	end

})

Tab:AddButton({

	Name = "无敌",

	Callback = function()

local lp = game:GetService "Players".LocalPlayer

if lp.Character:FindFirstChild "Head" then

    local char = lp.Character

    char.Archivable = true

    local new = char:Clone()

    new.Parent = workspace

    lp.Character = new

    wait(2)

    local oldhum = char:FindFirstChildWhichIsA "Humanoid"

    local newhum = oldhum:Clone()

    newhum.Parent = char

    newhum.RequiresNeck = false

    oldhum.Parent = nil

    wait(2)

    lp.Character = char

    new:Destroy()

    wait(1)

    newhum:GetPropertyChangedSignal("Health"):Connect(

        function()

            if newhum.Health <= 0 then

                oldhum.Parent = lp.Character

                wait(1)

                oldhum:Destroy()

            end

        end)

    workspace.CurrentCamera.CameraSubject = char

    if char:FindFirstChild "Animate" then

        char.Animate.Disabled = true

        wait(.1)

        char.Animate.Disabled = false

    end

    lp.Character:FindFirstChild "Head":Destroy()

end

end

})

Tab:AddButton({

	Name = "死亡笔记",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/1_1.txt_2024-08-08_153358.OTed.lua"))()

  	end    

})

Tab:AddButton({

	Name = "透视",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()

  	end    

})

Tab:AddButton({

	Name = "吸人",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()

  	end    

})

Tab:AddButton({

	Name = "人物无敌（不适用）",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()

	end    

})

Tab:AddButton({
	Name = "踢人脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/c8320f69b6aa4f5d.txt_2024-08-08_214628.OTed.lua"))()
  	end    
})

Tab:AddButton({

	Name = "隐身(E)",

	Callback = function()

	 loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()

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
	Name = "俄亥俄州脚本",	
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
  	end
})

Tab:AddButton({
	Name = "俄亥俄州指令王",	
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
  	end				
})

Tab:AddButton({
 Name = "俄亥俄州推荐脚本",
 Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
    end
})

Tab:AddButton({
	Name = "物品tp自动拾取",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Mstir16/legocheats/main/archive/Ohio./script.lua"))()
    end
})	