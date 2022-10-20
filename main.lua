-- Made by hyperperperp yea enjoy dumb scrit p :))

function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
LocalScript1 = Instance.new("LocalScript")
MeshPart2 = Instance.new("MeshPart")
Script3 = Instance.new("Script")
MeshPart4 = Instance.new("MeshPart")
Script5 = Instance.new("Script")
ScreenGui0.Name = "HYPERS_KATANAS"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LocalScript1.Name = "FUNCTIONALITY"
LocalScript1.Parent = ScreenGui0
table.insert(cors,sandbox(LocalScript1,function()
local lp = game.Players.LocalPlayer
local char = lp.Character
local hrp = char:WaitForChild("HumanoidRootPart")
local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")

local k1 = workspace:FindFirstChild(""..lp.Name.."_K1") or script.Parent.K1:Clone()
k1.Parent = workspace
k1.Name = ""..lp.Name.."_K1"
local k2 = workspace:FindFirstChild(""..lp.Name.."_K2") or script.Parent.K2:Clone()
k2.Parent = workspace
k2.Name = ""..lp.Name.."_K2"

local fs = 0.125

local function notifyEveryone(player_name)
	local gui = Instance.new("ScreenGui")
	gui.ResetOnSpawn = false
	local label = Instance.new("TextLabel",gui)
	label.AnchorPoint = Vector2.new(0.5,0)
	label.Position = UDim2.new(0.5,0,1,-50)
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.FredokaOne
	label.TextColor3 = Color3.new(1,1,1)
	label.TextSize = 25
	label.Text = ""..player_name.." was killed by "..lp.Name.." using Hyper's Void Katanas."
	
	local pc = plrs:GetChildren()
	for _, v in pairs(pc) do
		if v:FindFirstChild("PlayerGui") ~= nil then
			local gc = gui:Clone()
			gc.Parent = v:FindFirstChild("PlayerGui")
			ts:Create(gc.TextLabel, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {TextTransparency = 1})
			wait(1)
			gc:Destroy()
		end
	end
end

spawn(function() -- follow player
	while true do
		ts:Create(k1, TweenInfo.new(fs, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {CFrame = hrp.CFrame*CFrame.new(-4,3,0)}):Play()
		ts:Create(k2, TweenInfo.new(fs, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {CFrame = hrp.CFrame*CFrame.new(4,3,0)}):Play()
		wait(fs/2)
	end
end)

local mouse = lp:GetMouse()
local kv = false

mouse.Button1Down:Connect(function()
	kv = not kv
	local prt = Instance.new("Part", workspace)
	prt.CanCollide = false
	prt.Anchored = true
	prt.Position = mouse.Hit.Position
	prt.Size = Vector3.new(20,40,20)
	prt.Transparency = 1
	
	spawn(function()
	prt.Touched:Connect(function(touch)
				if touch.Parent:FindFirstChild("Humanoid") then
					local char = touch.Parent
				local player = game:GetService("Players"):GetPlayerFromCharacter(char)
				if player.Name ~= lp.Name then
				touch.Parent:FindFirstChild("Humanoid").Health = 0
					print(""..player.Name.." was killed by Hyper's Void Katanas.")
					notifyEveryone(player.Name)
				end	
			end
		end)
	end)
	
	if kv == true then
		ts:Create(k1, TweenInfo.new(0.0625,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{CFrame = CFrame.new(mouse.Hit.Position)*CFrame.fromEulerAnglesXYZ(180,180,180)}):Play()
		
	elseif kv == false then
		ts:Create(k2, TweenInfo.new(0.0625,Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{CFrame = CFrame.new(mouse.Hit.Position)*CFrame.fromEulerAnglesXYZ(180,180,180)}):Play()
	end
	wait(fs)
	prt:Destroy()
end)
end))
MeshPart2.Name = "K1"
MeshPart2.Parent = ScreenGui0
MeshPart2.CFrame = CFrame.new(27, 3.77521062, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart2.Position = Vector3.new(27, 3.7752106189727783, 1.5)
MeshPart2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart2.Size = Vector3.new(0.7933127284049988, 7.550419807434082, 1.2344380617141724)
MeshPart2.Anchored = true
MeshPart2.BrickColor = BrickColor.new("Really black")
MeshPart2.CanCollide = false
MeshPart2.brickColor = BrickColor.new("Really black")
Script3.Parent = MeshPart2
table.insert(cors,sandbox(Script3,function()
script.Parent.MeshId = "rbxassetid://443853663"

end))
MeshPart4.Name = "K2"
MeshPart4.Parent = ScreenGui0
MeshPart4.CFrame = CFrame.new(27, 3.77521062, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart4.Position = Vector3.new(27, 3.7752106189727783, 1.5)
MeshPart4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
MeshPart4.Size = Vector3.new(0.7933127284049988, 7.550419807434082, 1.2344380617141724)
MeshPart4.Anchored = true
MeshPart4.BrickColor = BrickColor.new("Really black")
MeshPart4.CanCollide = false
MeshPart4.brickColor = BrickColor.new("Really black")
Script5.Parent = MeshPart4
table.insert(cors,sandbox(Script5,function()
script.Parent.MeshId = "rbxassetid://443853663"

end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
