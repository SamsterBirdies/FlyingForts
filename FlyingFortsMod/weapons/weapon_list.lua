table.insert(Sprites, ButtonSprite("hud-group-sbpropeller", "groups/Group-sbpropeller", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbpropeller-icon", "HUD/HUD-propeller", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbpropeller", "sbpropeller", path))
table.insert(Weapons, IndexOfWeapon("machinegun"),
{
		Enabled = true,
		SaveName = "sbpropeller",
		FileName = path .. "/weapons/sbpropeller.lua",
		Icon = "hud-sbpropeller-icon",
		GroupButton = "hud-group-sbpropeller",
		Detail = "hud-detail-sbpropeller",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 15.0,
		ScrapPeriod = 3,
		MetalCost = 100,
		EnergyCost = 500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet"] =
			{
				Enabled = true,
				SaveName = "sbjet",
				MetalCost = 300,
				EnergyCost = 2000,
			},
		},
		CompatibleGroupTypes =
		{
			"sbjet",
			"sbrocket",
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbjet", "sbjet", path))
table.insert(Sprites, ButtonSprite("hud-group-sbjet", "groups/Group-sbjet", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("machinegun"),
{
		Enabled = false,
		SaveName = "sbjet",
		FileName = path .. "/weapons/sbjet.lua",
		Icon = "hud-sbpropeller-icon",
		GroupButton = "hud-group-sbjet",
		Detail = "hud-detail-sbjet",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 37.0,
		ScrapPeriod = 3,
		MetalCost = 400,
		EnergyCost = 2500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbrocket"] =
			{
				Enabled = true,
				SaveName = "sbrocket",
				MetalCost = 700,
				EnergyCost = 4000,
			},
		},
		CompatibleGroupTypes =
		{
			"sbpropeller",
			"sbrocket",
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbrocket", "sbrocket", path))
table.insert(Weapons, IndexOfWeapon("machinegun"),
{
		Enabled = false,
		SaveName = "sbrocket",
		FileName = path .. "/weapons/sbrocket.lua",
		Icon = "hud-sbpropeller-icon",
		GroupButton = "hud-group-sbjet",
		Detail = "hud-detail-sbrocket",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 37.0,
		ScrapPeriod = 3,
		MetalCost = 1100,
		EnergyCost = 6000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		CompatibleGroupTypes =
		{
			"sbpropeller",
			"sbjet",
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbbomb", "sbbomb", path))
table.insert(Sprites, ButtonSprite("hud-group-sbbomb", "groups/Group-sbbomb", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbbombbay-icon", "HUD/HUD-sbbombbay", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocket") + 1,
{
		Enabled = true,
		SaveName = "sbcarpetbomb",
		FileName = path .. "/weapons/sbbombbay/sbcarpetbomb.lua",
		Icon = "hud-sbbombbay-icon",
		GroupButton = "hud-group-sbbomb",
		Detail = "hud-detail-sbbomb",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 3,
		MetalCost = 300,
		EnergyCost = 2500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet"] =
			{
				Enabled = true,
				SaveName = "sbnukebomb",
				MetalCost = 400,
				EnergyCost = 3000,
			},
		},
		CompatibleGroupTypes =
		{
			"sbnukebomb",
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbnukebomb", "sbnuke", path))
table.insert(Weapons, IndexOfWeapon("sbcarpetbomb") + 1,
{
		Enabled = false,
		SaveName = "sbnukebomb",
		FileName = path .. "/weapons/sbbombbay/sbnukebomb.lua",
		Icon = "hud-sbbombbay-icon",
		GroupButton = "hud-group-sbbomb",
		Detail = "hud-detail-sbnukebomb",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 95.0,
		ScrapPeriod = 3,
		MetalCost = 700,
		EnergyCost = 5500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		CompatibleGroupTypes =
		{
			"sbcarpetbomb",
		},
})
table.insert(Sprites, DetailSprite("hud-detail-sbhangflak", "sbdownflak", path))
table.insert(Sprites, ButtonSprite("hud-sbhangflak-icon", "HUD/HUD-sbhangflak", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbnukebomb") + 1,
{
		Enabled = true,
		SaveName = "sbhangflak",
		FileName = path .. "/weapons/sbhangflak/sbhangflak.lua",
		Icon = "hud-sbhangflak-icon",
		GroupButton = "hud-group-flak",
		Detail = "hud-detail-sbhangflak",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 3,
		MetalCost = 225,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet"] =
			{
				Enabled = true,
				SaveName = "sbhangcannon",
				MetalCost = 600,
				EnergyCost = 3500,
			},
		},
		
})
table.insert(Sprites, DetailSprite("hud-detail-sbdowncannonflying", "sbdowncannonflying", path))
table.insert(Weapons, IndexOfWeapon("sbhangflak") + 1,
{
		Enabled = false,
		SaveName = "sbhangcannon",
		FileName = path .. "/weapons/sbhangflak/sbhangcannon.lua",
		Icon = "hud-sbhangflak-icon",
		GroupButton = "hud-group-cannon",
		Detail = "hud-detail-sbdowncannonflying",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 100.0,
		ScrapPeriod = 3,
		MetalCost = 825,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})
table.insert(Sprites, DetailSprite("hud-detail-sblightning", "sblightning", path))
table.insert(Sprites, ButtonSprite("hud-group-sblightning", "groups/Group-sblightning", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sblightning-icon", "HUD/HUD-sblightning", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons,
{
		Enabled = true,
		SaveName = "sblightning",
		FileName = path .. "/weapons/sblightning/sblightning.lua",
		Icon = "hud-sblightning-icon",
		GroupButton = "hud-group-sblightning",
		Detail = "hud-detail-sblightning",
		Prerequisite = "sbiontech",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 100.0,
		ScrapPeriod = 3,
		MetalCost = 750,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})
table.insert(Sprites, DetailSprite("hud-detail-sbthunder", "sbthunder", path))
table.insert(Sprites, ButtonSprite("hud-group-sbthunder", "groups/Group-sbthunder", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbthunder-icon", "HUD/HUD-sbthunder", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sblightning") + 1,
{
		Enabled = true,
		SaveName = "sbthunderbolt",
		FileName = path .. "/weapons/sblightning/sbthunderbolt.lua",
		Icon = "hud-sbthunder-icon",
		GroupButton = "hud-group-sbthunder",
		Detail = "hud-detail-sbthunder",
		Prerequisite = "sbiontech",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 120.0,
		ScrapPeriod = 3,
		MetalCost = 1000,
		EnergyCost = 6000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})