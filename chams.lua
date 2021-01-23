-- sorry for the most messy code ever, I used protosmasher to make this which does not have auto indent.

local gplrs = game.Players:GetPlayers()
local plr = game.Players.LocalPlayer
local TorsoEsp = Instance.new("Part")
TorsoEsp.Anchored = true
TorsoEsp.BottomSurface = Enum.SurfaceType.Smooth
TorsoEsp.CFrame = CFrame.new(-153.01, 3, -34.152)
TorsoEsp.Name = "TorsoEsp"
TorsoEsp.Reflectance = 1
TorsoEsp.Size = Vector3.new(0.05, 1.66, 0.05)
TorsoEsp.TopSurface = Enum.SurfaceType.Smooth
TorsoEsp.Transparency = 1
TorsoEsp.Parent = game:GetService("Workspace")
TorsoEsp.CanCollide = false

local BoxHandleAdornment = Instance.new("BoxHandleAdornment")
BoxHandleAdornment.Adornee = nil
BoxHandleAdornment.AlwaysOnTop = true
BoxHandleAdornment.Color3 = Color3.fromRGB(255, 255, 255)
BoxHandleAdornment.Size = Vector3.new(2, 2, 1)
BoxHandleAdornment.Transparency = 0.5
BoxHandleAdornment.ZIndex = 2
BoxHandleAdornment.Parent = TorsoEsp



game.Players.PlayerAdded:Connect(function(plr)
	TorsoEsp:Clone()
	TorsoEsp.Parent = game.Workspace:WaitForChild(plr.Name)
	TorsoEsp.BoxHandleAdornment.Adornee = game.Workspace:WaitForChild(plr.Name).HumanoidRootPart
end)

while wait() do
for i, v in pairs(gplrs) do
local BoxHandleAdornment = Instance.new("BoxHandleAdornment")
BoxHandleAdornment.Adornee = v.Character.HumanoidRootPart
BoxHandleAdornment.AlwaysOnTop = true
BoxHandleAdornment.Color3 = Color3.fromRGB(255, 0, 0)
BoxHandleAdornment.Size = Vector3.new(2, 2, 1)
BoxHandleAdornment.Transparency = 0.5
BoxHandleAdornment.ZIndex = 2
BoxHandleAdornment.Parent = v.Character
local head = BoxHandleAdornment:Clone()
local rarm = BoxHandleAdornment:Clone()
local larm = BoxHandleAdornment:Clone()
local rleg = BoxHandleAdornment:Clone()
local lleg = BoxHandleAdornment:Clone()
head.Adornee = v.Character.Head
head.Parent = v.Character.Head
rarm.Adornee = v.Character["Right Arm"]
rarm.Parent = v.Character["Right Arm"]
larm.Adornee = v.Character["Left Arm"]
larm.Parent = v.Character["Left Arm"]
rleg.Adornee = v.Character["Right Leg"]
rleg.Parent = v.Character["Right Leg"]
lleg.Adornee = v.Character["Left Leg"]
lleg.Parent = v.Character["Left Leg"]
end
end

wait()
local plr = game.Players.LocalPlayer
game.Workspace:WaitForChild(plr.Name).BoxHandleAdornment:Destroy()
