local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Matter = require(ReplicatedStorage.Packages.matter)

export type ComponentInstance<T> = T
export type Component<T> = (initialData: T?) -> ComponentInstance<T>

-- local COMPONENTS = {
-- 	"Roomba",
-- 	"Model",
-- 	"Charge",
-- 	"Health",
-- 	"Target",
-- 	"Transform",
-- 	"Mothership",
-- 	"Lasering",
-- 	"DebugLabel",
-- 	"Spinner",
-- }

-- local components = {}

-- for _, name in ipairs(COMPONENTS) do
-- 	components[name] = Matter.component(name)
-- end

return {
	Roomba = Matter.component("Roomba") :: Component<{}>,
	Model = Matter.component("Model") :: Component<{
		model: Model,
	}>,
	Charge = Matter.component("Charge") :: Component<{
		charge: number,
	}>,
	Health = Matter.component("Health") :: Component<{
		health: number,
	}>,
	Target = Matter.component("Target") :: Component<{}>,
	Transform = Matter.component("Transform") :: Component<{
		cframe: CFrame,
	}>,
	Mothership = Matter.component("Mothership") :: Component<{}>,
	Lasering = Matter.component("Lasering") :: Component<{}>,
	DebugLabel = Matter.component("DebugLabel") :: Component<{
		label: string,
	}>,
	Spinner = Matter.component("Spinner") :: Component<{}>,
}
