ProfessionFramework.AlwaysUseStartingKits = false


local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- set this to true since we skip the vanilla definitions.
ProfessionFramework.RemoveDefaultProfessions = true

addProfession('unemployed', {
    name = "Unemployed",
    icon = "",
    cost = 8,
})

addProfession('common', {
    name = "UI_prof_common",
    icon = "prof_Knight",
    cost = 0,
    xp = {
        [Perks.Sprinting] = 1,
        [Perks.Strength] = 2,
        [Perks.Fitness] = 2,
        [Perks.Aiming] = 2,
        [Perks.Blunt] = 2,
        [Perks.Blade] = 2,
    },
    traits = {"Brave"},
})

addProfession('hardened', {
    name = "UI_prof_hardened",
    icon = "prof_Knight",
    cost = -8,
    xp = {
        [Perks.Sprinting] = 2,
        [Perks.Strength] = 3,
        [Perks.Fitness] = 3,
        [Perks.Aiming] = 4,
        [Perks.Reloading] = 2,
        [Perks.Blunt] = 3,
        [Perks.Blade] = 3,

    },
})


addProfession('medic', {
    name = "UI_prof_medic",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Doctor] = 5,
    },
    traits = {"FirstAider"},
})

addProfession('scavenger', {
    name = "UI_prof_scav",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Sneak] = 5,
        [Perks.Nimble] = 4,
        
    },
})

addProfession('vagabond', {
    name = "UI_prof_vagabond",
    icon = "prof_Knight",
    cost = 0,
    xp = {
        -- TODO: Add outdoor perks and benefits, add claustrophobia
        [Perks.Fishing] = 4,
        [Perks.Survival] = 3,
        [Perks.Cooking] = 2,
        [Perks.Trapping] = 4,
        [Perks.Lightfoot] = 4,
    },
    traits = {"NightOwl", "Herbalist", "Claustrophobic"},
})
--getProfession('common').xp[Perks.Axe] = 1


