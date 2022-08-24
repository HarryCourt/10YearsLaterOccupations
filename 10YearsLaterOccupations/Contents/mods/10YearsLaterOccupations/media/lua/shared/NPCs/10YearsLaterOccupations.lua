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
        [Perks.Strength] = 1,
        [Perks.Fitness] = 1,
        [Perks.Aiming] = 2,
        [Perks.Reloading] = 2,
        [Perks.Sneak] = 2,
        [Perks.Nimble] = 2,

    },
})

addProfession('medic', {
    name = "UI_prof_medic",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Doctor] = 6,
        [Perks.Aiming] = 1,
    },
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


addProfession('Rogue', {
    name = "UI_prof_scav",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Sneak] = 5,
        [Perks.Nimble] = 4,
        
    },
})

addProfession('Vagabond', {
    name = "UI_prof_scav",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Sneak] = 5,
        [Perks.Nimble] = 4,
        
    },
})
--getProfession('common').xp[Perks.Axe] = 1


