settings = {
    { 
        name = "max-health-addition",
        type = "int-setting",
        order = "aa",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000000,
        setting_type = "startup"
    },
    { 
        name = "max-health-multiplier",
        type = "double-setting",
        order = "ab",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 10000,
        setting_type = "startup"
    },
    { 
        name = "flat-resistance-addition",
        type = "double-setting",
        order = "ba",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000000,
        setting_type = "startup"
    },
    { 
        name = "flat-resistance-multiplier",
        type = "double-setting",
        order = "bb",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 10000,
        setting_type = "startup"
    },
    { 
        name = "percent-resistance-addition",
        type = "double-setting",
        order = "ca",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000000,
        setting_type = "startup"
    },
    { 
        name = "percent-resistance-multiplier",
        type = "double-setting",
        order = "cb",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 10000,
        setting_type = "startup"
    },
    { 
        name = "percent-resistance-reverse-multiplier",
        type = "double-setting",
        order = "cb",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1,
        setting_type = "startup"
    },
    { 
        name = "new-flat-resistance",
        type = "double-setting",
        order = "da",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000000,
        setting_type = "startup"
    },
    { 
        name = "new-percent-resistance",
        type = "double-setting",
        order = "da",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 100,
        setting_type = "startup"
    },
    { 
        name = "health-regeneration-addition",
        type = "int-setting",
        order = "ea",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 1000000,
        setting_type = "startup"
    },
    { 
        name = "health-regeneration-multiplier",
        type = "double-setting",
        order = "eb",
        default_value = 1,
        minimum_value = 0,
        maximum_value = 10000,
        setting_type = "startup"
    },
    { 
        name = "health-regeneration-percentage-addition",
        type = "double-setting",
        order = "ec",
        default_value = 0,
        minimum_value = 0,
        maximum_value = 100,
        setting_type = "startup"
    },
    { 
        name = "only-vanilla-entities",
        type = "bool-setting",
        order = "fa",
        default_value = false,
        setting_type = "startup"
    },
}
data:extend(settings)