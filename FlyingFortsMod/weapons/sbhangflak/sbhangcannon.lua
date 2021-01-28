Scale = 1
SelectionWidth = 65.0
SelectionHeight = 50.15
SelectionOffset = { -25.0, 57 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, 60 },
}

WeaponMass = 80.0
HitPoints = 200.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_quadcannon.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/flak_weapon_explode.lua"
ReloadEffect = path .. "/effects/quadcannonreload.lua"
FireEndEffect = "mods/weapon_pack/effects/cooldown_flak.lua"
ReloadEffectOffset = -1.5
RetriggerFireEffect = true
Projectile = "sbhangcannon"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 26
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1

MinFireRadius = 350.0
MaxFireRadius = 1200.0
MinFireSpread = 8
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -85
MaxFireAngle = 10
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.01
FireStdDevAuto = 0.012
Recoil = 20000
EnergyFireCost = 2333.0
MetalFireCost = 60
ShowFireAngle = true
RoundsEachBurst = 4
RoundPeriod = 0.5
BeamDuration = 0.0
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25



TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbhangcannon-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhangflak/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbhangcannon-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhangflak/cannonhead.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbhangcannon-flash-front",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbhangflak/cbarrel10.tga", duration = 0.025},
					{ texture = path .. "/weapons/sbhangflak/cbarrel2.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel3.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel4.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel5.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel4.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel3.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel10.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel2.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 0.15},
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 0.5},
					{ texture = path .. "/weapons/sbhangflak/cbarrel11.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel6.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel7.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel8.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel9.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel11.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 10},

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopExitState = "Null",
			},
		},
	},
	{
		Name = "sbhangcannon-flash-back",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 0.5},
					{ texture = path .. "/weapons/sbhangflak/cbarrel10.tga", duration = 0.025},
					{ texture = path .. "/weapons/sbhangflak/cbarrel2.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel3.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel4.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel5.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel4.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel3.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel10.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel2.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 0.15},
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 0.5},
					{ texture = path .. "/weapons/sbhangflak/cbarrel11.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel6.tga", duration = 0.025 },
					{ texture = path .. "/weapons/sbhangflak/cbarrel7.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel8.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel9.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel11.tga" },
					{ texture = path .. "/weapons/sbhangflak/cbarrel1.tga", duration = 10},
					
					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				
				LoopExitState = "Null",
			},
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "flak",
	Angle = 0,
	Pivot = { -0.115, 0.28 },
	PivotOffset = { 0, 0 },
	Sprite = "sbhangcannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.15, 0.25 },
			PivotOffset = { 0.05, 0.0 },
			Sprite = "sbhangcannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0.15, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.0, -0.00 },
					PivotOffset = { 0, 0 },
					Sprite = "sbhangcannon-flash-back",
					Visible = false,
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { -0.38, 0.47},
					PivotOffset = { 0, 0 },
				},
			},
			ChildrenInFront =
			{
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.0, -0.00 },
					PivotOffset = { 0, 0 },
					Sprite = "sbhangcannon-flash-front",
					Visible = false,
				},
			},
		},
	},
}
