local Players = game:GetService("Players")
local player = Players.LocalPlayer

if player.Name == "666" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiak27/637/refs/heads/main/small%20empty%20script.lua"))()
else
    player:Kick("有白名单吗就执行")
    wait(2)
end