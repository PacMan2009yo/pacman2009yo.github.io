-- ignore my messy code

assert(Drawing, 'Exploit not supported.')

if not syn and not PROTOSMASHER_LOADED then
    game.Players.LocalPlayer:Kick("Use Synapse X or ProtoSmasher!")
end
local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "PacMan#7499",
    Text = "drawing library is very cool"
})


local camera = workspace.CurrentCamera
for _,v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
        local vector,onScreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
        if v.Team ~= game.Players.LocalPlayer.Team then
            local Line = Drawing.new("Line")
            Line.Color = Color3.fromRGB(255,80,60)
        else
            local Line = Drawing.new("Line")
            Line.Color = Color3.fromRGB(0, 254, 11)
        Line.Thickness = 2
        Line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        Line.To = Vector2.new(vector.X, vector.Y)
        Line.Transparency = 1
        
        function tracers()
            game:GetService("RunService").RenderStepped:Connect(function(step)
                if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            local vector,onScreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                            if onScreen then
                            Line.To = Vector2.new(vector.X, vector.Y)
                            Line.Visible = true
                    else
                        Line.Visible = false
                        end
                    end
            end)
        end
        coroutine.wrap(tracers)()
    end
end
end
