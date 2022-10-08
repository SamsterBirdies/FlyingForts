--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 4.0

Sprites =
{

}
SoundEvent = "mods/sbFFsoundbank/effects/nukebombtrail"
Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0.5,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/bombfalling.ogg",
		Volume = 0.12,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]

}

--this is an empty blank effect. Projectiles with no effects must have a this effect or else the game will break.