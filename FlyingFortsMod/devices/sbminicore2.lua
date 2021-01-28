-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 30.0
HitPoints = 80.0
EnergyProductionRate = 0.0
MetalProductionRate = 4.5
EnergyStorageCapacity = 250.0
MetalStorageCapacity = 20.0
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
DestroyEffect = "effects/battery_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbminicore-baseupg",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbminicore/baseupg.tga" }, mipmap = true, }, },
		},
	},
	{
		Name = "sbminicore_animupg",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/sbminicore/upgreactor_core01.tga" },
					{ texture = path .. "/devices/sbminicore/upgreactor_core02.tga" },
					{ texture = path .. "/devices/sbminicore/upgreactor_core03.tga" },
					{ texture = path .. "/devices/sbminicore/upgreactor_core04.tga" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "sbminicore-baseupg",
	ChildrenInFront =
	{
		{
			Name = "Core",
			Angle = 0,
			Pivot = { 0, 0.06},
			PivotOffset = { 0, 0 },
			Sprite = "sbminicore_animupg",
		},
	},
}
