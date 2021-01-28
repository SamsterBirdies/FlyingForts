if active then	
	local thunderbolt = FindProjectile("sbthunder")
	if thunderbolt then 
	thunderbolt.ProjectileIncendiary = true
	thunderbolt.IncendiaryRadius = 80
	thunderbolt.IncendiaryRadiusHeated = 120
	thunderbolt.AlwaysIncendiary = true
	end
	local thunderbolt = FindProjectile("sblightning1")
	if thunderbolt then 
	thunderbolt.ProjectileIncendiary = true
	thunderbolt.IncendiaryRadius = 80
	thunderbolt.IncendiaryRadiusHeated = 120
	thunderbolt.AlwaysIncendiary = true
	end
	local thunderbolt = FindProjectile("sbhangcannon")
	if thunderbolt then 
	thunderbolt.ProjectileIncendiary = true
	thunderbolt.IncendiaryRadius = 80
	thunderbolt.IncendiaryRadiusHeated = 120
	thunderbolt.AlwaysIncendiary = true
	end
	local thunderbolt = FindProjectile("sbnukebomb")
	if thunderbolt then 
	thunderbolt.ProjectileIncendiary = true
	thunderbolt.IncendiaryRadius = 180
	thunderbolt.IncendiaryRadiusHeated = 240
	thunderbolt.AlwaysIncendiary = true
	end
end