ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 90.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -46.0 }
Mass = 100.0
HitPoints = 300.0
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
		Name = "sbaviation-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbtech/base.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Armoury",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "sbaviation-base",
}