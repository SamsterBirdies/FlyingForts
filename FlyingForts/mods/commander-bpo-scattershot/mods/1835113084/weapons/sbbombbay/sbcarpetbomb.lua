dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")
RoundsEachBurst = RoundsEachBurst + 3

sprite = FindSpriteComponent(Root, "Mortar")
if sprite then
	sprite.Sprite = path .. "/weapons/bombbay.png"
end
