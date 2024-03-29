--vanilla modifiers
local sandbagfastscrap = FindDevice("sandbags")
if sandbagfastscrap then
sandbagfastscrap.ScrapPeriod = 1.5
end
local barrel = FindDevice("barrel")
if barrel then
	barrel.MetalCost = 200
	barrel.EnergyCost = 2000
	barrel.NoReclaim = nil
end
local platformAngle = FindDevice("turbine").MaxUpAngle
if platformAngle < 30 then platformAngle = 30 end
table.insert(Sprites, DetailSprite("hud-detail-sbbombdevice", "sbbombdevice", path))
table.insert(Sprites, ButtonSprite("hud-sbbomb-icon", "HUD/HUD-bomb", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = true,
		SaveName = "sbbomb",
		FileName = path .. "/devices/sbbomb.lua",
		Icon = "hud-sbbomb-icon",
		Detail = "hud-detail-sbbombdevice",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.5,
		ScrapPeriod = 0.5,
		MetalCost = 150,
		EnergyCost = 1000,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Sprites, DetailSprite("hud-detail-sbminicore", "sbminicore", path))
table.insert(Sprites, ButtonSprite("hud-sbminicore-icon", "HUD/HUD-minicore", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = true,
		SaveName = "sbminicore",
		FileName = path .. "/devices/sbminicore.lua",
		Icon = "hud-sbminicore-icon",
		Detail = "hud-detail-sbminicore",
		BuildTimeIntermediate = 5,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 1.5,
		MetalCost = 300,
		EnergyCost = 2500,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		Upgrades =
		{
			["sbminicoreupg"] =
			{
				Enabled = true,
				SaveName = "sbminicoreupg",
				MetalCost = 75,
				EnergyCost = 1000,
			},
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbminicore2", "sbminicore2", path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = false,
		SaveName = "sbminicoreupg",
		FileName = path .. "/devices/sbminicore2.lua",
		Icon = "hud-sbminicore-icon",
		Detail = "hud-detail-sbminicore2",
		BuildTimeIntermediate = 5,
		BuildTimeComplete = 18.0,
		ScrapPeriod = 1.5,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Sprites, DetailSprite("hud-detail-sbantigravity", "sbantigravity", path))
table.insert(Sprites, ButtonSprite("hud-sbantigravity-icon", "HUD/HUD-gravity", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = true,
		SaveName = "sbantigravity",
		FileName = path .. "/devices/sbantigravity.lua",
		Icon = "hud-sbantigravity-icon",
		Detail = "hud-detail-sbantigravity",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.5,
		ScrapPeriod = 0.5,
		MetalCost = 200,
		EnergyCost = 1500,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		HasDummy = false,
		ObserverBuildEvent = true,
})
table.insert(Sprites, DetailSprite("hud-detail-sbballoon", "sbballoon", path))
table.insert(Sprites, ButtonSprite("hud-sbballoon-icon", "HUD/HUD-balloon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = true,
		SaveName = "sbballoon",
		FileName = path .. "/devices/sbballoon.lua",
		Icon = "hud-sbballoon-icon",
		Detail = "hud-detail-sbballoon",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.5,
		ScrapPeriod = 0.5,
		MetalCost = 10,
		EnergyCost = 300,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Sprites, DetailSprite("hud-detail-sbweight", "sbweight", path))
table.insert(Sprites, ButtonSprite("hud-sbweight-icon", "HUD/HUD-sbweight", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
		Enabled = true,
		SaveName = "sbweight",
		FileName = path .. "/devices/sbweight.lua",
		Icon = "hud-sbweight-icon",
		Detail = "hud-detail-sbweight",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.5,
		ScrapPeriod = 0.5,
		MetalCost = 10,
		EnergyCost = 300,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Sprites, DetailSprite("hud-detail-sbaviation", "sbaviation", path))
table.insert(Sprites, ButtonSprite("hud-sbaviation-icon", "HUD/HUD-sbaviation", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("upgrade"),
{
	SaveName = "sbaviation",
	FileName = path .. "/devices/sbaviationtech.lua",
	Icon = "hud-sbaviation-icon",
	Detail = "hud-detail-sbaviation",
	BuildTimeComplete = 60,
	ScrapPeriod = 8,
	MetalCost = 400,
	EnergyCost = 2000,
	MetalRepairCost = 300,
	EnergyRepairCost = 1500,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = platformAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	Tech = true,
	ObserverBuildEvent = true,
})
table.insert(Sprites, DetailSprite("hud-detail-sbiontech", "sbiontech", path))
table.insert(Sprites, ButtonSprite("hud-sbiontech-icon", "HUD/HUD-sbiontech", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("factory") + 1,
{
	SaveName = "sbiontech",
	FileName = path .. "/devices/sbiontech.lua",
	Icon = "hud-sbiontech-icon",
	Detail = "hud-detail-sbiontech",
	Prerequisite = "sbaviation",
	BuildTimeComplete = 90,
	ScrapPeriod = 8,
	MetalCost = 800,
	EnergyCost = 5000,
	MetalRepairCost = 600,
	EnergyRepairCost = 4000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = platformAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	Tech = true,
	ObserverBuildEvent = true,
})
table.insert(Sprites, ButtonSprite("hud-sbffdcballoon-icon", "HUD/HUD-ffdcballoon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices,
{
		Enabled = true,
		SaveName = "sbffdiscord",
		FileName = path .. "/devices/sbffdiscord.lua",
		Icon = "hud-sbffdcballoon-icon",
		Detail = "hud-detail-sbballoon",
		BuildTimeIntermediate = 0.1,
		BuildTimeComplete = 0.5,
		ScrapPeriod = 0.5,
		MetalCost = 10,
		EnergyCost = 300,
		MetalRepairCost = 0,
		EnergyRepairCost = 0,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxUpAngle = platformAngle,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/devices/ui_devices",
		Tech = true,
})