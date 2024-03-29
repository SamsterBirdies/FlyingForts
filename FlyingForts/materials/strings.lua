Merge(Material,
{
	sbcardboard = L"Cardboard",
	sbcardboardTip2 = L"Extremely light material.",
	sbcardboardTip3 = L"Very weak and extremely prone to fire",
	
	sbcardboardbg = L"Background Cardboard",
	sbcardboardbgTip2 = L"Extremely light material, allows projectiles and wind to pass.",
	sbcardboardbgTip3 = L"Very weak and extremely prone to fire",
	
	sbtarp = L"Tarp",
	sbtarpTip2 = L"Works like a parachute. It slows down your aircraft.",
	sbtarpTip3 = L"Using tarps slows you down. Not great when trying to move around",
	
})
--[[
materialsToAppend =
{
	bracing = L"25",
	backbracing = L"25",
	camo = L"25",
	armour = L"50 (Armourdillo: 25)",
	door = L"50 (Armourdillo: 25)",
	solar = L"40",
	shield = L"5",
	portal = L"50",
	rope = L"0.1",
	fuse = L"0.1",
}
function FlyingFortsMassMaterialApplyMod()
	for k, v in pairs(materialsToAppend) do
		if Material[k .. 'Tip2'] and Material[k .. 'Tip2'] ~= L"" then
			Material[k .. 'Tip2'] = Material[k .. 'Tip2'] .. L'. Mass: ' .. v .. L' per 100 units (2 grid squares)'
		else
			Material[k .. 'Tip2'] = L'Mass: ' .. v .. L' per 100 units (2 grid squares)'
		end
	end
end
FlyingFortsMassMaterialApplyMod()
--RegisterApplyMod(FlyingFortsMassMaterialApplyMod)]]