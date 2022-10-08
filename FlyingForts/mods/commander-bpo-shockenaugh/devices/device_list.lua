local barrel = FindDevice("barrel")
if barrel then
	barrel.MetalCost = barrel.MetalCost * 3
	barrel.EnergyCost = barrel.EnergyCost * 2
end