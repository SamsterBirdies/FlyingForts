-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 27.5
SelectionHeight = 40.0
SelectionOffset = { 0.0, 40.5 }
Mass = 30.0
HitPoints = 20.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IncendiaryRadius = 130
IncendiaryRadiusHeated = 150
StructureSplashDamage = 130
StructureSplashDamageMaxRadius = 130
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 150
DeviceSplashDamageDelay = 0.3
IgnitePlatformOnDestruct = false
DestroyEffect = "effects/barrel_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbbomb-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbbomb/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, 0.25 },
	PivotOffset = { 0, 0 },
	Sprite = "sbbomb-base",
}
