local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "欠脚本",
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
local Window = OrionLib:MakeWindow({Name = "欠脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用欠脚本", ConfigFolder = "欢迎使用欠脚本"})
local about = Window:MakeTab({
    Name = "欠脚本",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")


local Tab = Window:MakeTab({
    Name = "所有功能",
    Icon = "rbxassetid://93566402708060",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "你看你妈呢啥比玩意，要你妈的脚本👎👎👎",
    Callback = function()
       end
})