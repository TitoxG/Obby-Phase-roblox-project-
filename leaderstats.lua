local DataStore = game:GetService("DataStoreService")
local Ranura = DataStore:GetDataStore("Ranura")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Parent = player
	leaderstats.Name = "leaderstats"

	local Phase = Instance.new("IntValue")
	Phase.Parent = leaderstats
	Phase.Name = "Phase"
	
	local playerID = player.UserId
	Phase.Value = Ranura:GetAsync(playerID)
end)

game.Players.PlayerRemoving:Connect(function(player)
	local playerID = player.UserId
	Ranura:SetAsync(playerID, player.leaderstats.Phase.Value)
end)
