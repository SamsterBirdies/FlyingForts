Merge(Weapon,
{
	sbpropeller = L"Propeller",
	sbpropellerTip2 = L"Use: Moving your aircraft around",
	sbpropellerTip3 = L"Also can push others around",
	
	sbpropellerinfinite = L"Propeller Infinite",
	sbpropellerinfiniteTip2 = L"Pros: Never stops thrusting",
	sbpropellerinfiniteTip3 = L"Cons: Never stops thrusting",
	
	sbjet = L"Jet",
	sbjetTip2 = L"Use: Moving your aircraft with a powerful thruster.",
	--sbjetTip3 = L"Requires: Upgrade Centre + Propeller",
	
	sbrocket = L"Rocket",
	sbrocketTip2 = L"Use: Moving your aircraft with a very powerful thruster. It blows away enemy ships, and rips apart cardboard.",
	--sbrocketTip3 = L"Requires: Upgrade Centre + Jet",
	
	sbcarpetbomb = L"Carpet Bomb",
	sbcarpetbombTip2 = L"Use: Carpet bombing the enemy aircraft",
	--sbcarpetbombTip3 = L"Requires: Aviation Facility",
	
	sbnukebomb = L"Nuke",
	sbnukebombTip2 = L"Use: Dropping a nuclear bomb ontop the enemy aircraft",
	--sbnukebombTip3 = L"Requires: Carpet Bomb + Upgrade Centre",
	
	sbhangflak = L"Hanging Flak",
	sbhangflakTip2 = L"Use: Fires a burst of 2 long range flak rounds",
	--sbhangflakTip3 = L"Requires: Aviation Facility",
	
	sbhangcannon = L"Hanging Quadbarrel Cannon",
	sbhangcannonTip2 = L"Use: Swisscheesing the front of their base",
	--sbhangcannonTip3 = L"Requires: Hanging Flak + Upgrade Centre",
	
	sblightning = L"Lightning Shower",
	sblightningTip2 = L"Use: Blasting away the front of their base with 500 zillion volts",
	--sblightningTip3 = L"Requires: Ionospheric Lab",
	
	sbthunderbolt = L"Thunderbolt 4",
	sbthunderboltTip2 = L"Use: Penetrating deep into their base with 900 zillion volts",
	--sbthunderboltTip3 = L"Requires: Ionospheric Lab",
})
--add device mass to all devices
--[[
weaponsToAppend =
{
	--vanilla
	machinegun = L"40",
	minigun = L"40",
	sniper = L"40",
	sniper2 = L"40",
	mortar = L"60",
	mortar2 = L"60",
	missile = L"100",
	missile2 = L"100",
	cannon = L"120",
	laser = L"100",
	--tog
	cannon20mm = L"100",
	firebeam = L"90",
	flak = L"80",
	shotgun = L"80",
	rocketemp = L"80",
	rocket = L"80",
	--ms
	buzzsaw = L"70",
	smokebomb = L"80",
	howitzer = L"180",
	magnabeam = L"100",
}
for k, v in pairs(weaponsToAppend) do
	if Weapon[k .. 'Tip3'] and Weapon[k .. 'Tip3'] ~= L"" then
		Weapon[k .. 'Tip3'] = Weapon[k .. 'Tip3'] .. L'. Mass: ' .. v
	else
		Weapon[k .. 'Tip3'] = L'Mass: ' .. v 
	end
end
]]













