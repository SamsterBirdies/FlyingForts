function sbffDUsupport(savename, maxage)
	local DU_check = FindProjectile("uraniumcannon")
	if DU_check then
	modDUprojectile = DeepCopy(DU_check)
	modDUprojectile.SaveName = ("uranium"..savename)
	modDUprojectile.MaxAge = ((maxage or 720)/DU_speed)
	table.insert(Projectiles, modDUprojectile)
	table.insert(ProjectilesToUranium, savename)
	ProjectileEffects[savename] = 
	{
		Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
		Impact =
		{
			["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
		},
	}
end
end

sbffDUsupport("sbnukebomb")
sbffDUsupport("sbhangcannon", 500)
