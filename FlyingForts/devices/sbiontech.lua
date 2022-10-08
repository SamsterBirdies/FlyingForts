ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 45.0
SelectionHeight = 84.75
SelectionOffset = { 0.0, -85.25 }
Mass = 120.0
HitPoints = 400.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbion-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbtech/ionbase.png" }, mipmap = true, }, },
		},
	},
}



Root =
{
	Name = "munitions",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "sbion-base",
}
