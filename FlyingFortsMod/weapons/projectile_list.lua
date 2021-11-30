dofile("scripts/type.lua")
local debugAir = false
table.insert(Projectiles,
{
	
	SaveName = "sbair",

	ProjectileType = "bullet",
	ProjectileSprite = path .. "/effects/media/blank.png",
	ProjectileSpriteMipMap = false,
	ExpiresOnFreeFall = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 14,
	Impact = 70000,
	ProjectileDamage = 0.0,
	WeaponDamageBonus = 0.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	MaxAge = 1.4,
	Gravity = 0,
	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Deflect =
		{
			["default"] = path .. "/effects/empty.lua",
		},
	},
	
})
sbspawnair = {Projectile = { Count = 1, Type = "sbair", Speed = 1000, StdDev = 0.3 }, Terminate = true, }
table.insert(Projectiles,
{
	
	SaveName = "sbjetair",

	ProjectileType = "bullet",
	ProjectileSprite = path .. "/effects/media/blank.png",
	ProjectileSpriteMipMap = false,
	ExpiresOnFreeFall = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 14,
	Impact = 250000,
	ProjectileDamage = 0.0,
	WeaponDamageBonus = 0.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	Gravity = 0,
	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Deflect =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Age =
		{
			t1200 = sbspawnair,
		},
	},
	
})
sbspawnjetair = {Projectile = { Count = 1, Type = "sbjetair", Speed = 1500, StdDev = 0.1 }, Terminate = true, }
table.insert(Projectiles,
{
	
	SaveName = "sbrocketair",

	ProjectileType = "bullet",
	ProjectileSprite = path .. "/effects/media/blank.png",
	ProjectileSpriteMipMap = false,
	ExpiresOnFreeFall = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 14,
	Impact = 1250000,
	ProjectileDamage = 0.0,
	WeaponDamageBonus = 0.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	Gravity = 0,
	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Deflect =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Age =
		{
			t850 = sbspawnjetair,
		},
	},
	
})
sbspawnrocketair = {Projectile = { Count = 1, Type = "sbrocketair",  StdDev = 0.05 }, Terminate = true, }
local rocketairinc = DeepCopy(FindProjectile("sbrocketair"))
if rocketairinc then
	rocketairinc.ProjectileIncendiary = true
	rocketairinc.IncendiaryRadius = 50
	rocketairinc.ProjectileDamage = 1
	rocketairinc.IgnitesBackgroundMaterials = true
	rocketairinc.IgnitesBackgroundMaterialsPassing = true
	rocketairinc.IgnitesBackgroundMaterialsPassingSource = false
	rocketairinc.DamageMultiplier = {{ SaveName = "sbcardboard", Direct = 10, Splash = 1 },{ SaveName = "sbrocket", Direct = 0, Splash = 1 }}
	rocketairinc.SaveName = "sbrocketairinc"
	rocketairinc.Effects.Age = { t150 = sbspawnrocketair}
	table.insert(Projectiles, rocketairinc)
end
if debugAir then
	local air = FindProjectile("sbair")
	if air then air.ProjectileSprite = path .. "/effects/media/testP.png" end
	local jetair = FindProjectile("sbjetair")
	if jetair then jetair.ProjectileSprite = path .. "/effects/media/testJ.png" end
	local rocketair = FindProjectile("sbrocketair")
	if rocketair then rocketair.ProjectileSprite = path .. "/effects/media/testR.png" end
	if rocketairinc then rocketairinc.ProjectileSprite = path .. "/effects/media/testRI.png" end
end
table.insert(Projectiles,
{
		SaveName = "sbcarpetbomb",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0.1,
		ProjectileIncendiary = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 15,
		Impact = 200000,
		DisableShields = true,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 40.0,
		ProjectileSplashDamage = 15,
		ProjectileSplashDamageMaxRadius = 50.0,
		SpeedIndicatorFactor = 0.05,
		Gravity = 400,

		TrailEffect = path .. "/effects/carpetbombtrail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbbombbay/carpet.png",
			
			},
		},
		Effects =
		{
			Impact =
			{
				["shield"] = "effects/energy_shield_ricochet.lua",
				["default"] = "effects/mortar_air_burst.lua",
			},
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "sandbags", Direct = 0.8, Splash = 0.8 },
		},
})
table.insert(Projectiles,
{
		SaveName = "sbnukebomb",

		ProjectileType = "mortar",
		DrawBlurredProjectile = false,
		ProjectileMass = 20.0,
		ProjectileDrag = 0.1,
		ProjectileIncendiary = false,
		DeflectedByShields = false,
		ExplodeOnTouch = true,
		ProjectileThickness = 4.0,
		ProjectileShootDownRadius = 15,
		Impact = 200000,
		DisableShields = true,
		BeamTileRate = 0.02,
		BeamScrollRate = 0.0,
		ProjectileDamage = 400.0,
		ProjectileSplashDamage = 100,
		ProjectileSplashDamageMaxRadius = 360.0,
		SpeedIndicatorFactor = 0.05,
		Gravity = 400,

		TrailEffect = path .. "/effects/nukebombtrail.lua",

		Projectile =
		{
			Root =
			{
				Name = "Root",
				Angle = -90,
				Sprite = path .. "/weapons/sbbombbay/nuke.png",
			
			},
		},
		Effects =
		{
			Impact =
			{
				["device"] = "effects/missile_structure_hit.lua",
				["antiair"] = "effects/missile_structure_hit.lua",
				["foundations"] = "effects/missile_ground_hit.lua",
				["rocks01"] = "effects/missile_ground_hit.lua",
				["shield"] = "effects/missile_structure_hit.lua",
				["default"] = "effects/missile_structure_hit.lua",
			},
			Deflect =
			{
				["armour"] = "effects/armor_ricochet.lua",
				["door"] = "effects/armor_ricochet.lua",
			},
		},
		DamageMultiplier =
		{
			{ SaveName = "sandbags", Direct = 0.8, Splash = 0.8 },
			{ SaveName = "sbantigravity", Direct = 1.45, Splash = 1.45 },
		},
})
sbHangFlakDetonation = { Effect = "mods/weapon_pack/effects/flak_explode.lua", Projectile = { Count = 12, Type = "machinegun", Speed = 8000, StdDev = 0.8 }, Offset = -120, Terminate = true, }
table.insert(Projectiles,
{
	SaveName = "sbhangflak",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.2,
	ProjectileDrag = 0,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 150,
	CollisionLookaheadDist = 120,
	Impact = 10000,
	ProjectileDamage = 6.0,
	AntiAirDamage = 0,
	WeaponDamageBonus = 6.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	Effects =
	{
		Impact =
		{
			["default"] = sbHangFlakDetonation,
		},
		Deflect =
		{
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_ricochet.lua",
			["door"] = "effects/bullet_armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/bullet_bracing_hit.lua",
		},
		Age =
		{
			t200 = sbHangFlakDetonation,
		},
	},
})
table.insert(Projectiles,
{
	SaveName = "sbhangcannon",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 20000,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 100.0,
	ProjectileSplashDamage = 50.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 100.0,
	ProjectileSplashMaxForce = 10000, -- moderate shockwave
	AntiAirHitpoints = 40,
	SpeedIndicatorFactor = 0.25,
	

	TrailEffect = "mods/weapon_pack/effects/20mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["shield"] = "effects/impact_shield.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
})
table.insert(Sprites,
{
				Name = "sbthunderprojectile",
						
				States =
				{
					Normal =  
					{  
						Frames =
						{
							{ texture = path .. "/weapons/sblightning/thunder1.tga" },
							{ texture = path .. "/weapons/sblightning/thunder2.tga" },
							{ texture = path .. "/weapons/sblightning/thunder3.tga" },
							duration = 0.03,
							mipmap = true,
						},
						NextState = "Normal",
					},
					
				},
})
table.insert(Projectiles,
{
	SaveName = "sbthunder",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 900.0,
	AntiAirHitpoints = 900,
	SpeedIndicatorFactor = 0.25,
	ProjectileIncendiary = true,
	IncendiaryRadius = 35,
	IncendiaryRaduisHeated = 70,
	PassesEnemyPortals = false,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	Gravity = 0,
	
	TrailEffect = path .. "/effects/thundertrail.lua",

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/thunderimpact.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "portal", Direct = 0.045, Splash = 1 },
	},
})

--sblightning section
sbspawnlightning2 = { Projectile = { Count = 3, Type = "sblightning2", Speed = 9000, StdDev = 0.05 }, Terminate = true, }
sbspawnlightning3 = { Projectile = { Count = 3, Type = "sblightning3", Speed = 10500, StdDev = 0.04 }, Terminate = false, }
table.insert(Projectiles,
{
	SaveName = "sblightning1",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 700.0,
	AntiAirHitpoints = 900,
	SpeedIndicatorFactor = 0.25,
	ProjectileIncendiary = true,
	IncendiaryRadius = 35,
	IncendiaryRaduisHeated = 70,
	PassesEnemyPortals = false,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	Gravity = 0,
	
	TrailEffect = path .. "/effects/thundertrail.lua",

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/lightningimpact.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
		Age =
		{
			t150 = sbspawnlightning2
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "portal", Direct = 0.045, Splash = 1 },
	},
})
table.insert(Projectiles,
{
	SaveName = "sblightning2",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 4.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 200.0,
	AntiAirHitpoints = 900,
	SpeedIndicatorFactor = 0.25,
	ProjectileIncendiary = true,
	IncendiaryRadius = 35,
	IncendiaryRaduisHeated = 70,
	PassesEnemyPortals = false,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	Gravity = 0,
	
	TrailEffect = path .. "/effects/thundertrail.lua",

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/lightningimpact.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
		Age =
		{
			t70 = sbspawnlightning3
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "portal", Direct = 0.045, Splash = 1 },
	},
})
table.insert(Projectiles,
{
	SaveName = "sblightning3",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 75.0,
	AntiAirHitpoints = 900,
	SpeedIndicatorFactor = 0.25,
	IncendiaryRadius = 35,
	IncendiaryRaduisHeated = 70,
	PassesEnemyPortals = false,
	Gravity = 0,
	
	TrailEffect = path .. "/effects/thundertrail.lua",

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/blank.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "portal", Direct = 0.045, Splash = 1 },
	},
})

function sbffMakeFlamingVersion(saveName, damageBoost, maxAge, trailEffect, incendiaryRadius, flareEffect, expireEffect)
	local projectile = FindProjectile(saveName)
	if not projectile then Log("Error: MakeFlamingVersion unable to find " .. saveName) return end

	projectile.CollidesWithBeams = true
	projectile.Effects.Impact["firebeam"] = { Effect = flareEffect, Projectile = { Count = 1, Type = "flaming" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, KeepLifespan = true, PosT = 1, Offset = 0 }

	local flamingProjectile = DeepCopy(projectile)
	flamingProjectile.SaveName = "flaming" .. saveName
	if projectile.ProjectileType == "bullet" then
		flamingProjectile.ProjectileType = "mortar"
	end

	incendiaryRadius = incendiaryRadius or 0

	flamingProjectile.TrailEffect = path .. "/effects/" .. trailEffect .. ".lua"
	flamingProjectile.ProjectileIncendiary = true
	flamingProjectile.AlwaysIncendiary = true
	flamingProjectile.IncendiaryRadius = incendiaryRadius
	flamingProjectile.IncendiaryRadiusHeated = incendiaryRadius
	flamingProjectile.IncendiaryOffset = 0.5*incendiaryRadius
	flamingProjectile.MaxAge = maxAge
	flamingProjectile.Effects.Impact["firebeam"] = { Splash = false, Terminate = false, }

	if flamingProjectile.ProjectileSplashDamage then
		flamingProjectile.ProjectileSplashDamage = damageBoost*flamingProjectile.ProjectileSplashDamage
	else
		flamingProjectile.ProjectileDamage = damageBoost*flamingProjectile.ProjectileDamage
		flamingProjectile.WeaponDamageBonus = damageBoost*(flamingProjectile.WeaponDamageBonus or 0)
	end

	if expireEffect then
		flamingProjectile.Effects.Age = {}
		flamingProjectile.Effects.Age["t1000000"] = { Effect = expireEffect, Terminate = true, }
	end
	table.insert(Projectiles, flamingProjectile)
end

sbffMakeFlamingVersion("sbhangflak", 1.0, 0.05, "flaming_sniper_trail", nil, smallArmsFlare, nil)
sbffMakeFlamingVersion("sbhangcannon", 1.25, 0.4, "flaming_trail", 80, nil, nil)
sbffMakeFlamingVersion("sbcarpetbomb", 1.33, 1.5, "flaming_swarm_trail", 85, nil, genericFlamingExpire)
sbffMakeFlamingVersion("sbnukebomb", 1.25, 2, "flaming_trail", 150, nil, missileStructureHit)

--tanya geminibeam support
local tanyageminicheck = FindProjectile("geminibeam")
if tanyageminicheck then
	MakeGeminiVersion("sbcarpetbomb", 1.0)
	MakeGeminiVersion("sbnukebomb", 1.0)
	MakeGeminiVersion("sbhangcannon", 1.0)
	MakeGeminiVersion("sbhangflak", 1.0)
	MakeGeminiVersion("sbthunder", 0.85)
	end
--endos empbeam support
local endosempbeamcheck = FindProjectile("empbeam")
if endosempbeamcheck then
	MakeEMPVersion("sbcarpetbomb", 1.25, "blue_trail", 150, 5, EAModPath)
	MakeEMPVersion("sbnukebomb", 1.25, "blue_trail", 400, 8, EAModPath)
	MakeEMPVersion("sbhangcannon", 1.25, "blue_trail", 100, 4, EAModPath)
	end
--KineticBeam support will be handled within Birdies GUNS

--[[
	Feel free to use this file or it's contents in your mods (regardless of what the Readme file says), but leave this comment in when you do.
	Use this file with dofile(path .. "/path/to/this/file.lua") in any script you need it for.
	Note: These functions are not fully bugtested.
	~ Endo
--]]

-- ty endo ~Birdies

--[[
	The code below is used to fix the metallic sounds custom materials give off when they get hit by projectiles.
	I updated it so you can also specify the material to fix, aswell as from which material group to inherit the effects from.
	
	Example: InheritMaterialEffect("bracingdoor", "bracing")
--]]
function InheritMaterialEffect(materialSaveName, effectInheritance)
	for k, v in ipairs(Projectiles) do
		if v.Effects then
			-- Impact
			if v.Effects.Impact then
				if v.Effects.Impact[effectInheritance] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact[effectInheritance]
				elseif v.Effects.Impact["default"] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact["default"]
				else
					v.Effects.Impact[materialSaveName] = "effects/impact_light.lua"
				end
			end
			
			-- Deflect
			if v.Effects.Deflect then
				if v.Effects.Deflect[effectInheritance] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect[effectInheritance]
				elseif v.Effects.Deflect["default"] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Deflect[materialSaveName] = "effects/armor_bullet_ricochet.lua"
				end
			end
			
			-- Penetrate
			if v.Effects.Penetrate then
				if v.Effects.Penetrate[effectInheritance] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate[effectInheritance]
				elseif v.Effects.Penetrate["default"] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Penetrate[materialSaveName] = "effects/armor_bullet_hit.lua"
				end
			end
		end
	end
	
	-- -- For correct node hit sounds
	if NodeImpacts[effectInheritance] then
		NodeImpacts[materialSaveName] = NodeImpacts[effectInheritance]
	else
		NodeImpacts[materialSaveName] = NodeImpacts["default"]
	end
end

sbFFapplyMod = function()
    if sbff_oldApplyMod then sbff_oldApplyMod() end
	
	InheritMaterialEffect("sbcardboard", "bracing")	
	
	local sbsawvscardboard = FindProjectile("buzzsaw")
	if sbsawvscardboard then
	table.insert(sbsawvscardboard.DamageMultiplier, { SaveName = "sbcardboard", Direct = 999,})
	table.insert(sbsawvscardboard.DamageMultiplier, { SaveName = "sbcardboardbg", Direct = 999,})
	end
end
RegisterApplyMod(sbFFapplyMod)