Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 30.0
SelectionOffset = { 0.0, 30.5 }
--[[
RecessionBox =
{
	Size = { 200, 10 },
	Offset = { -230, -5 },
}
]]

WeaponMass = 40.0
HitPoints = 70.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
--DeviceSplashDamage = 125
--DeviceSplashDamageMaxRadius = 250
--DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/bayopen.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/mortar_explode.lua"
ReloadEffect = "effects/mortar_heavy_reload.lua"
ReloadEffectOffset = -1.5
Projectile = "sbcarpetbomb"
BarrelLength = 50.0
MinFireClearance = 200
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 14
MinFireSpeed = 49.0
MaxFireSpeed = 50.0
MaxFireClamp = 0.8
MinFireRadius = 200.0
MaxFireRadius = 500.0
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = -110
MaxFireAngle = -70
DefaultFireAngle = -90
KickbackMean = 12
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0 -- 0.03
FireStdDevAuto = 0.012
Recoil = 0
EnergyFireCost = 1200.0
MetalFireCost = 30
RoundPeriod = 0.1
RoundsEachBurst = 9
ShowAimingGizmo = true
ShowFireAngle = false
ShowFireSpeed = false

ParachuteDelayMean = 200
ParachuteDelayStdDev = 0.15
ParachuteDrag = 10.0

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

Sprites =
{
	{
		Name = "sbcarpetbomb",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbbombbay/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Mortar",
	Angle = 0,
	Pivot = { 0, 0.40 },
	PivotOffset = { 0, 0 },
	Sprite = "sbcarpetbomb",
	UserData = 0,
--	AllowMirror = false,
	
	ChildrenBehind =
	{
				{
					Name = "Hardpoint0",
					Angle = 180,
--					Pivot = { 0.5, 0 },
					Pivot = { -0.0, 0.0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
	},
}
