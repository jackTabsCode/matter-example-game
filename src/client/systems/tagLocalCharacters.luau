local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Matter = require(ReplicatedStorage.Packages.matter)
local Components = require(ReplicatedStorage.Shared.components)

local function tagLocalCharacters(world: Matter.World)
	for entity, character in world:queryChanged(Components.Character) do
		if not character.new or character.old then
			continue
		end

		if character.new.player == Players.LocalPlayer then
			world:insert(entity, Components.LocalCharacter())
		end
	end
end

return tagLocalCharacters
