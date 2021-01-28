--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3.0

Sprites =
{
}

Effects =
{
	--[[{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/baydoorsopenlarge.ogg",
		Volume = 0.30,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},]]
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "fire_machinegun",
		Volume = 0.5,
		Priority = 192,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		KillParticleOnEffectCancel = true,
		LocalPosition = { x = 0, y = 20, z = -1 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "mg_flash",
		Additive = false,
		TimeToLive = 10,
		InitialSize = 1,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
]]
}
SoundEvent = "mods/sbFFsoundbank/effects/bayopenlarge"