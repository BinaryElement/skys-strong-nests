local health_addition = settings.startup["max-health-addition"].value
local health_multiplier = settings.startup["max-health-multiplier"].value
local flat_resistance_addition = settings.startup["flat-resistance-addition"].value
local flat_resistance_multiplier = settings.startup["flat-resistance-multiplier"].value
local percent_resistance_addition = settings.startup["percent-resistance-addition"].value
local percent_resistance_multiplier = settings.startup["percent-resistance-multiplier"].value
local percent_resistance__reverse_multiplier = settings.startup["percent-resistance-reverse-multiplier"].value
local new_flat_resistance = settings.startup["new-flat-resistance"].value
local new_percent_resistance = settings.startup["new-percent-resistance"].value
local health_regeneration_addition = settings.startup["health-regeneration-addition"].value
local health_regeneration_multiplier = settings.startup["health-regeneration-multiplier"].value
local health_regeneration_percent_addition = settings.startup["health-regeneration-percentage-addition"].value
local only_vanilla_entities = settings.startup["only-vanilla-entities"].value

function get_health_addition()
	return health_addition
end

function get_health_multiplier()
	return health_multiplier
end

function get_flat_resistance_addition()
	return flat_resistance_addition
end

function get_flat_resistance_multiplier()
	return flat_resistance_multiplier
end

function get_percent_resistance_addition()
	return percent_resistance_addition
end

function get_percent_resistance_multiplier()
	return percent_resistance_multiplier
end

function get_percent_resistance_reverse_multiplier()
	return percent_resistance__reverse_multiplier
end

function get_percent_resistance__reverse_multiplier()
	return percent_resistance__reverse_multiplier
end

function get_percent_resistance__reverse_multiplier()
	return percent_resistance__reverse_multiplier
end

function get_new_flat_resistance()
	return new_flat_resistance
end

function get_new_percent_resistance()
	return new_percent_resistance
end

function get_health_regeneration_addition()
	return health_regeneration_addition
end

function get_health_regeneration_multiplier()
	return health_regeneration_multiplier
end

function get_health_regeneration_percent_addition()
	return health_regeneration_percent_addition
end

function get_only_vanilla_entities()
	return only_vanilla_entities
end

function tableContains(table, value) 
	for i = 1, #table do
		if (table[i] == value) then
			return true
		end
	end
	return false
end

-- Save copied tables in `copies`, indexed by original table.
function deepcopy(orig, copies)
    copies = copies or {}
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        if copies[orig] then
            copy = copies[orig]
        else
            copy = {}
            copies[orig] = copy
            for orig_key, orig_value in next, orig, nil do
                copy[deepcopy(orig_key, copies)] = deepcopy(orig_value, copies)
            end
            setmetatable(copy, deepcopy(getmetatable(orig), copies))
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end