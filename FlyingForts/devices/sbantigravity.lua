-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = -3000.0
HitPoints = 100.0
EnergyProductionRate = -15.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 75
DeviceSplashDamageMaxRadius = 130
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = false
StructureSplashDamage = 150
StructureSplashDamageMaxRadius = 120
IncendiaryRadius = 130
IncendiaryRadiusHeated = 150
EMPRadius = 200
EMPDuration = 6
DestroyEffect = path .. "/effects/antigravity_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbantigravity-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbantigravity/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "sbantigravity-base",
}
