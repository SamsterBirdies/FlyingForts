local solar = FindMaterial("solar")
if 	solar then
	solar.Enabled = true
	solar.BuildEffect = "effects/build_bracing.lua"
end
local sbbracingscrap = FindMaterial("bracing")
if sbbracingscrap then
	sbbracingscrap.ScrapTime = 1.0
end
local sbbracingbgscrap = FindMaterial("backbracing")
if sbbracingbgscrap then
	sbbracingbgscrap.ScrapTime = 1.0
end
table.insert(Sprites, DetailSprite("hud-detail-sbcardboard", "sbcardboard", path))
table.insert(Sprites, ButtonSprite("hud-sbcardboard-icon", "HUD/Materials-cardboard", nil, 0.664, nil, nil, path))
table.insert(Materials,

{
	SaveName = "sbcardboard",
	Icon = "hud-sbcardboard-icon",
	Detail = "hud-detail-sbcardboard",
	Sprite = "sbcardboard",
	KeySpriteByDamage = true,
	Stiffness = 100000,
	MaxCompression = 0.95,
	MaxExpansion = 1.15,
	MinLength = StandardMinLength,
	MaxLength = StandardMaxLength,
	MaxLinkLength = StandardMaxLinkLength,
	Mass = 0.06,
	AirDrag = 6.8,
	HitPoints = 20,
	AbsorptionMomentumThreshold = 15,
	ReflectionMomentumThreshold = 20,
	PenetrationMomentumThreshold = 100,
	RicochetVariationFactor = 0.01,
	SpeedLossFactor = 1,
	MetalBuildCost = 0.03,
	MetalRepairCost = 0.0,
	MetalReclaim = 0.0,
	EnergyBuildCost = 0.3,
	EnergyRepairCost = 0.0,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.0,
	BuildTime = 1.5,
	ScrapTime = 0.5,
	RepairRateMultiplier = 0.3,
	CatchesFire = true,
	SupportsDevices = false,
	ReflectsBeams = false,
	Node = StandardNode,
	IsBehindDevices = false,
	AttachesCladding = true,
	BuildEffect = "effects/build_bracing.lua",
	DestroyEffect = "effects/bracing_destroy.lua",
	IsFogOfWarArmour = true,
	FogOfWarTargetSaveName = "bracing",
	FireDestroyEffect = "effects/destroy_fire.lua",
	FullExtrusion = true,
	RecessionTargetSaveName = "sbcardboardbg",
	ForegroundTargetSaveName = "bracing",
	DoorTargetSaveName = "door",
	SelectEffect = "ui/hud/materials/ui_materials",
	NodeImpacts =
	{
		["foundations"] = "effects/bounce_wood.lua",
		["rocks01"] = "effects/bounce_wood.lua",
		["default"] = "effects/bounce_wood.lua",
	},
})
table.insert(Sprites,

{
    Name = "sbcardboard",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/cardboard.png", duration = 0.1 },
                { texture = path .. "/materials/cardboard-1.png", duration = 0.5 },
				{ texture = path .. "/materials/cardboard-2.png", duration = 0.4 },
                mipmap = true,
                repeatS = true,
            },
        },
    },
})
table.insert(Sprites, DetailSprite("hud-detail-sbcardboardbg", "sbcardboardbg", path))
table.insert(Sprites, ButtonSprite("hud-sbcardboardbg-icon", "HUD/Materials-cardboardbg", nil, 0.664, nil, nil, path))
table.insert(Materials,

{
	SaveName = "sbcardboardbg",
	Icon = "hud-sbcardboardbg-icon",
	Detail = "hud-detail-sbcardboardbg",
	Sprite = "sbcardboardbg",
	KeySpriteByDamage = true,
	Stiffness = 100000,
	MaxCompression = 0.95,
	MaxExpansion = 1.15,
	MinLength = StandardMinLength,
	MaxLength = StandardMaxLength,
	MaxLinkLength = StandardMaxLinkLength,
	Mass = 0.06,
	AirDrag = 3.8,
	HitPoints = 15,
	ForegroundTargetSaveName = "bracing",
	RenderOrder = 0,
	AbsorptionMomentumThreshold = 15,
	ReflectionMomentumThreshold = 20,
	PenetrationMomentumThreshold = 100,
	RicochetVariationFactor = 0.01,
	SpeedLossFactor = 1,
	MetalBuildCost = 0.03,
	MetalRepairCost = 0.0,
	MetalReclaim = 0.0,
	EnergyBuildCost = 0.3,
	EnergyRepairCost = 0.0,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.0,
	BuildTime = 1.5,
	ScrapTime = 0.5,
	RepairRateMultiplier = 0.3,
	CatchesFire = true,
	SupportsDevices = false,
	ReflectsBeams = false,
	Node = StandardNode,
	IsBehindDevices = true,
	AttachesCladding = true,
	BackgroundCladding = true,
	CollidesWithWind = false,
	BuildEffect = "effects/build_bracing.lua",
	DestroyEffect = "effects/bracing_destroy.lua",
	IsFogOfWarArmour = true,
	FogOfWarTargetSaveName = "bracing",
	FireDestroyEffect = "effects/destroy_fire.lua",
	FullExtrusion = true,
	PoweredByDeviceOverlap = true,
	CollidesWithFriendlyProjectiles = false,
	CollidesWithEnemyProjectiles = false,
	CollidesWithFriendlyBeams = false,
	CollidesWithEnemyBeams = true,
	SelectEffect = "ui/hud/materials/ui_materials",
	NodeImpacts =
	{
		["foundations"] = "effects/bounce_wood.lua",
		["rocks01"] = "effects/bounce_wood.lua",
		["default"] = "effects/bounce_wood.lua",
	},
})
table.insert(Sprites,

{
    Name = "sbcardboardbg",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/cardboardbg.png", duration = 0.1 },
                { texture = path .. "/materials/cardboardbg-1.png", duration = 0.5 },
				{ texture = path .. "/materials/cardboardbg-2.png", duration = 0.4 },
                mipmap = true,
                repeatS = true,
            },
        },
    },
})
table.insert(Sprites, DetailSprite("hud-detail-sbtarp", "sbtarp", path))
table.insert(Sprites, ButtonSprite("hud-sbtarp-icon", "HUD/Materials-tarp", nil, 0.664, nil, nil, path))
table.insert(Materials,
{
		SaveName = "sbtarp",
		Icon = "hud-sbtarp-icon",
		Detail = "hud-detail-sbtarp",
		Sprite = "sbtarp",
		Enabled = true,
		RenderOrder = 7,
		Stiffness = 80000,
		SpringDamping = 5,
		AirDrag = 75.0,
		MaxCompression = 0.6,
		MaxExpansion = 1.5,
		Pretension = 0.0,
		MinLength = 70,
		MaxLength = 700,
		MaxSegmentLength = 25,
		Mass = 0.01,
		HitPoints = 20,
		ReflectionMomentumThreshold = 30,
		RicochetVariationFactor = 0,
		SpeedLossFactor = 1,
		MetalBuildCost = 0.35,
		MetalRepairCost = 0.2,
		MetalReclaim = 0.05,
		EnergyBuildCost = 2.0,
		EnergyRepairCost = 1.2,
		EnergyReclaim = 0.0,
		EnergyRunCost = 0.0,
		BuildTime = 0,
		ScrapTime = 0,
		RequiresFoundationSupport = false,
		AttachesCladding = false,
		SupportsDevices = false,
		AlignedLinksAllowed = true,
		CanBeTempBraced = false,
		ReflectsBeams = false,
		CatchesFire = true,
		ShowEndFireSegments = true,
		DegreesPerSecondMin = 100,
		DegreesPerSecondMax = 400,
		FireLateralOffsetStdDev = 3,
		CollidesWithFriendlyProjectiles = true,
		CollidesWithEnemyProjectiles = true,
		CollidesWithFriendlyBeams = true,
		CollidesWithEnemyBeams = true,
		AngleStressPrimaryThreshold = 360, -- no breakage
		AngleStressSecondaryThreshold = 360,
		Node = CableNode,
		IsBehindDevices = false,
		CollidesWithWind = true,
		ConductsPower = false,
		BuildEffect = "effects/build_cable.lua",
		KeySpriteByDamage = true,
		SelectEffect = "ui/hud/materials/ui_materials",
		NodeImpacts =
		{
			["foundations"] = "",
			["rocks01"] = "",
			["default"] = "",
		},
})
table.insert(Sprites,

{
    Name = "sbtarp",
    States =
    {
        Normal =
        {
            Frames =
            {
                -- durations must add up to 1 for the damage keying to work properly
                -- anything beyond 1 will never show
                { texture = path .. "/materials/tarp.png", duration = 0.1 },
                { texture = path .. "/materials/tarp-1.png", duration = 0.5 },
				{ texture = path .. "/materials/tarp-2.png", duration = 0.4 },
                mipmap = true,
                repeatS = true,
            },
        },
    },
})