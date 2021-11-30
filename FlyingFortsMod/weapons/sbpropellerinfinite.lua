dofile(path .. "/weapons/sbpropeller.lua")
dofile("scripts/device_utility.lua")
Sprites = {}
RoundsEachBurst = 2^30
local sprite = FindSpriteComponent(Root, "Head")
if sprite then
	sprite.Sprite = path .. "/weapons/sbpropeller/infinitehead.png"
end
FireEffect = path .. "/effects/propellerwindinfinite.lua"
ConstructEffect = "effects/device_upgrade.lua"
