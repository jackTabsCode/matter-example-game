local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Matter = require(ReplicatedStorage.Packages.matter)
local Components = require(ReplicatedStorage.Shared.components)

local function spawnRoombas(world: Matter.World)
	for id, _ in world:query(Components.Transform, Components.Roomba):without(Components.Model) do
		local model = ReplicatedStorage.Assets.KillerRoomba:Clone()
		model.Parent = workspace
		model.PrimaryPart:SetNetworkOwner(nil)

		world:insert(
			id,
			Components.Model({
				model = model,
			})
		)
	end
end

return spawnRoombas
