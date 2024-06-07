--data.lua
require("defines")

local function makeStrong(entity) 

	entity.max_health = entity.max_health * get_health_multiplier()
	entity.max_health = entity.max_health + get_health_addition()

	entity.healing_per_tick = entity.healing_per_tick * get_health_regeneration_multiplier()
	entity.healing_per_tick = entity.healing_per_tick + get_health_regeneration_addition()
	entity.healing_per_tick = entity.healing_per_tick + (entity.max_health * get_health_regeneration_percent_addition())

--	entity.resistances = {}
--	for damageType, _ in pairs(data.raw["damage-type"]) do
--		entity.resistances[damageType] = {
--			type = damageType,
--			decrease = get_flat_resistance_addition(),
--			percent = get_percent_resistance_addition()
--		}
--	end

	for i, resistance in pairs(entity.resistances) do
		if resistance.decrease then
			resistance.decrease = resistance.decrease * get_flat_resistance_multiplier()
			resistance.decrease = resistance.decrease + get_flat_resistance_addition()
		end
		if resistance.percent then
			resistance.percent = resistance.percent * get_percent_resistance_multiplier()
			resistance.percent = resistance.percent + get_percent_resistance_addition()
			local r = 100 - resistance.percent;
			resistance.percent = resistance.percent + (r * get_percent_resistance_reverse_multiplier())
		end
		--table.insert(foundTypes, resistance.type)
	end
	local overrides = deepcopy(entity.resistances)
	for damageType, _ in pairs(data.raw["damage-type"]) do
		for i, resistance in pairs(entity.resistances) do
			if resistance.type == damageType then
				goto continue
			end
		end
		table.insert(entity.resistances, {type = damageType, decrease = get_new_flat_resistance(), percent = get_new_percent_resistance()})
		::continue::
	end
	for i, resistance in pairs(overrides) do
		table.insert(entity.resistances, resistance)
	end
end
	

for k,spawner in pairs(data.raw["unit-spawner"]) do
	makeStrong(spawner)
end
for k,worm in pairs(data.raw["turret"]) do
	makeStrong(worm)
end
