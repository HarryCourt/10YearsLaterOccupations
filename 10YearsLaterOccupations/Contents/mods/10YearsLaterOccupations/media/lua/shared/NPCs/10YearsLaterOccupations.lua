ProfessionFramework.AlwaysUseStartingKits = false


local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- set this to true since we skip the vanilla definitions.
ProfessionFramework.RemoveDefaultProfessions = true


---------------------------------------------------------------
-- 10 Years Later Occupations
-- Originally created by Harry.
-- Additional help by ADD, NAME, HERE
---------------------------------------------------------------


addProfession('unemployed', {
    name = "UI_prof_norole",
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
        [Perks.Blunt] = 1,
        [Perks.Blade] = 1,
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
        [Perks.Aiming] = 5,
        [Perks.Reloading] = 2,
        [Perks.Blunt] = 3,
        [Perks.Blade] = 3,
    },
    traits = {"Desensitized"},
})


addProfession('medic', {
    name = "UI_prof_medic",
    icon = "prof_Knight",
    cost = 6,
    xp = {
        [Perks.Doctor] = 5,
        [Perks.SmallBlade] = 3,
    },
})


addProfession('vagabond', {
    name = "UI_prof_vaga",
    icon = "prof_Knight",
    cost = 0,
    xp = {
        [Perks.Survivalist] = 3,
        [Perks.Cooking] = 3,
        [Perks.Trapping] = 4,
        [Perks.Lightfoot] = 4,
        [Perks.Fishing] = 4,
    },
    traits = {"Herbalist"},
})

addProfession('builder', {
    name = "UI_prof_builder",
    icon = "profession_constructionworker2",
    cost = -4,
    xp = {
        [Perks.SmallBlunt] = 4,
        [Perks.Woodwork] = 5,
    }
    traits = {"Handy"},
})

addProfession('thief', {
    name = "UI_prof_thief",
    icon = "profession_burglar2",
    cost = -6,
    xp = {
        [Perks.Nimble] = 2,
        [Perks.Sneak] = 2,
        [Perks.Lightfoot] = 2,
        [Perks.Melee] = 2, 
        [Perks.SmallBlunt] = 1,
        [Perks.SmallBlade] = 3,
    },
    traits = {"Burglar"},
})

addProfession('scrapmech', {
    name = "UI_prof_scrapmech",
    icon = "profession_burglar2",
    cost = -6,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.Metalworking] = 4,
        [Perks.SmallBlunt] = 4,
        [Perks.Blunt] = 2,
    },
    traits = {"AmateurMechanic"},
})


-- Suggested Job Idea:
-- Psychotic Survivor
-- + Psychotic trait, causes random bursts of panic and giggling.
-- Currently a WiP, needs to be worked on.
--[[
addProfession('Psychotic', {
    name = "UI_prof_psychotic",
    icon = "prof_Knight",
    cost = -2,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.Metalworking] = 4,
        [Perks.SmallBlunt] = 4,
        [Perks.Blunt] = 2,
    },
    traits = {"Psychotic"},
})
]]--






---------- TRAITS ------------

--TODO: Finish this up.
ProfessionFramework.addTrait('Psychotic', {
    name = "UI_trait_psychotic",
    description = "UI_traitdesc_psychotic",
    exclude = {"Desensitized"},
    cost = 0, -- Might Change
    OnGameStart = function(trait)
        -- add a new event to trigger every ten minutes
        Events.EveryTenMinutes.Add(function()
            local p = getSpecificPlayer(0)
            
            -- If a 1/5 is rolled, then...
            if ZombRand(4) < 1 then
                -- TODO: Add character giggle, make sound radius
                p:getStats():setPanic(90)
            end
        end)
    end
})
