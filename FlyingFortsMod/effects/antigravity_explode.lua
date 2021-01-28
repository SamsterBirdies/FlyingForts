dofile("effects/device_explode_util.lua")
LifeSpan = 10.0

Sprites =
{
}

Effects =
{
	DeviceExplodeSprite(),
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 500,
		FalloffEnd = 2000,
		TimeToTrigger = 0,
		TimeToLive = 1.5,
		Magnitude = 25,
	},
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/gravityexplode.ogg",
		Volume = 0.65,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
}
SoundEvent = "mods/sbFFsoundbank/effects/antigravity_explode"