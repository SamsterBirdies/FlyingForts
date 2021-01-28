Scale = 1
SelectionWidth = 60.0
SelectionHeight = 40.0
SelectionOffset = { -20.0, -40.5 }

WeaponMass = 40.0
HitPoints = 50.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = path .. "/effects/propellerwind.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
ReloadEffect = nil
ReloadEffectOffset = -.5
Projectile = "sbair"
BarrelLength = 60.0
MinFireClearance = 0
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 0.01
MinFireSpeed = 1000.0
MaxFireSpeed = 1000.1
MinFireRadius = 300.0
MaxFireRadius = 600.0
MinVisibility = 0.6
MaxVisibilityHeight = 600
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 5
KickbackStdDev = 2
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.02
FireStdDevAuto = 0.01
Recoil = 70000
EnergyFireCost = 0.0
MetalFireCost = 0
RoundsEachBurst = 18
RoundPeriod = 0.05
ShowFireAngle = true

--[[
-- sinusoid sweep
function ProjectileAngle(index)
	local angle = index*(2*3.1415/RoundsEachBurst)
	return 3*math.sin(angle)
end
]]

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
		Name = "sbpropeller-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpropeller/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbpropeller-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbpropeller/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbpropeller_anim",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/sbpropeller/propeller1" },
					{ texture = path .. "/weapons/sbpropeller/propeller2" },
					{ texture = path .. "/weapons/sbpropeller/propeller3" },
					{ texture = path .. "/weapons/sbpropeller/propeller4" },
					{ texture = path .. "/weapons/sbpropeller/propeller5" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				--RandomPlayLength = 2,
				LoopExitState = "Null",
			},
		},
	},
}

Root =
{
	Name = "Minigun",
	Angle = 0,
	Pivot = { 0, -0.28 },
	PivotOffset = { 0, 0 },
	Sprite = "sbpropeller-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.06, -0.14},
			PivotOffset = { 0.06, 0.14 },
			Sprite = "sbpropeller-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0.00, -0.2 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.0, 0.00 },
					PivotOffset = { 0, 0 },
					Sprite = "sbpropeller_anim",
					Visible = false,
				},
			},
		},
	},
--[[
	ChildrenInFront =
	{
		{
			Name = "Scaffold",
			Sprite = "under_construction",
			Visible = false,
		},
		{
			Name = "ScaffoldProgress",
			Sprite = "under_construction_progress",
			Visible = false,
		},
	},
]]
}
