local Players = game:GetService("Players")
local player = Players.LocalPlayer

local antiSpyFlag = "ANTI_SPY_FLAG_"..tostring(math.random(10000,99999))

local function detectSpyTool()
    if _G.HTTP_Spy_v2 then
        return true
    end
    
    local spyDetected = false
    local originalLoadstring = loadstring
    local originalHttpGet = game.HttpGet
    
    getfenv().loadstring = function(code)
        if type(code) == "string" and code:find("HTTP_Spy_v2_Tool") then
            spyDetected = true
        end
        return originalLoadstring(code)
    end
    
    function game:HttpGet(url, ...)
        if type(url) == "string" and url:find("HTTP_Spy_v2_Tool") then
            spyDetected = true
        end
        return originalHttpGet(game, url, ...)
    end
    
    return spyDetected
end

if detectSpyTool() then
    player:Kick("抓你妈")
    wait(2)
elseif player.Name == "666" then
    _G[antiSpyFlag] = true
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
    
    spawn(function()
        while wait(1) do
            if detectSpyTool() then
                player:Kick("抓你妈")
                wait(2)
                break
            end
        end
    end)
else
    player:Kick("有白名单吗就执行")
    wait(2)
end