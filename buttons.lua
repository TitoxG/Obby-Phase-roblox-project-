local buttons = game.Workspace.Buttons:GetChildren()
local numeros = 0

local function spawn_romper(numero, numero2)
	local spawns = game.Workspace.Spawns["Spawn"..numero]
	spawns:Destroy()
	local spawnsS = game.Workspace.Spawns["Spawn"..numero2]
	spawnsS.Enabled = true
	local click = game.Workspace.buttons["Button"..numero]
	click:Destroy()
	local red = game.Workspace.Reds["Red"..numero]
	red.Color = Color3.new(0, 1, 0)
	red.CanCollide = false
	local guide = game.Workspace.Guides["Guide"..numero]
	guide:Destroy()
end

game.Players.PlayerAdded:Connect(function(Player)
	local leaderstats = Player:WaitForChild("leaderstats")
	local phases = leaderstats:WaitForChild("Phase", 2)
	for i, v in pairs(buttoms) do
		local clickdetector = v.ClickDetector
		clickdetector.MaxActivationDistance = 7
		clickdetector.MouseClick:Connect(function()
			phases.Value += 1    
			numeros += 1
			spawn_romper(numeros - 1, numeros)
		end)
	end
end)
