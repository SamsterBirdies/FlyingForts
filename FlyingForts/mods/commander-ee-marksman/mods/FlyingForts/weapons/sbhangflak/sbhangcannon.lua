dofile("scripts/device_utility.lua")

HasLaserSight = true

barrel = FindSpriteComponent(Root, "Head")
if barrel then
	barrel.Sprite = path .. "/weapons/hangcannon.png"
end
