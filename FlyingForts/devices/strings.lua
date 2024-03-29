Merge(Device,
{
	sbweight = L"Weight",
	sbweightTip2 = L"Use: Weighing down your aircraft",
	--sbweightTip3 = L"Mass: 300",
	
	sbballoon = L"Balloon",
	sbballoonTip2 = L"Use: Providing a small but substantial amount of lift",
	--sbballoonTip3 = L"Mass: -300",
	
	sbbomb = L"Bomb",
	sbbombTip2 = L"Use: Punishing those on the ground",
	--sbbombTip3 = L"Mass: 30",
	
	sbminicore = L"Mini Reactor",
	sbminicoreTip2 = L"Use: Generates some metal and energy",
	sbminicoreTip3 = L"Cannot control forts. If desired, use the 'Enable Explosive Barrel' mod",
	
	sbminicoreupg = L"Mini Miner Reactor",
	sbminicoreupgTip2 = L"Generates more metal but does not generate energy",
	--sbminicoreupgTip3 = L"Requires: Upgrade Centre + Mini Reactor. Mass: 30",
	
	sbantigravity = L"Antigravity Device",
	sbantigravityTip2 = L"Use: Your aircrafts main source(s) of lift",
	--sbantigravityTip3 = L"Mass: -3000",
	
	sbaviation = L"Aviation Facility",
	sbaviationTip2 = L"Unlocks: Carpet Bomb, Hanging Flak",
	--sbaviationTip3 = L"Mass: 100",
	
	sbiontech = L"Ionospheric Lab",
	sbiontechTip2 = L"Unlocks: Lightning Shower, Thunderbolt 4",
	--sbiontechTip3 = L"Requires: Aviation Facility",
	
	sbffdiscord = L"Flying Forts Discord",
	sbffdiscordTip2 = L"For flying help, tournaments, and being part of the flying community.",
	sbffdiscordTip3 = L"https://discord.gg/v5PG4Bk The link is also in the workshop page.",
	
})
--[[
devicesToAppend =
{
	reactor = L"40",
	mine = L"40",
	mine2 = L"40",
	derrick = L"40",
	turbine = L"70",
	turbine2 = L"80",
	store = L"60",
	battery = L"40",
	target = L"40",
	barrel = L"40",
	sandbags = L"45",
	workshop = L"100",
	armoury = L"100",
	upgrade = L"100",
	munitions = L"120",
	factory = L"120",
	repairstation = L"40",
}
for k, v in pairs(devicesToAppend) do
	if Device[k .. 'Tip3'] and Device[k .. 'Tip3'] ~= L"" then
		Device[k .. 'Tip3'] = Device[k .. 'Tip3'] .. L'. Mass: ' .. v
	else
		Device[k .. 'Tip3'] = L'Mass: ' .. v 
	end
end]]