
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	{
		Type = "trail",
		Texture = "mods/weapon_pack/effects/media/trail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 64, 64, 64, 255 },
		Additive = false,
		Width = 3,
		Length = 0.75,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
	}
}
