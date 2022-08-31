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
    icon = "prof_common",
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
    icon = "prof_hardened",
    cost = -8,
    xp = {
        [Perks.Sprinting] = 2,
        [Perks.Strength] = 4,
        [Perks.Fitness] = 4,
        [Perks.Aiming] = 5,
        [Perks.Reloading] = 2,
        [Perks.Blunt] = 3,
        [Perks.Blade] = 3,
    },
    traits = {"Desensitized"},
})


addProfession('sharpshooter', {
    name = "UI_prof_sharpshooter",
    icon = "prof_sharpshooter",
    cost = -4,
    xp = {
        [Perks.Strength] = 2,
        [Perks.Aiming] = 7,
        [Perks.Reloading] = 5,
        [Perks.Blunt] = 2,
        [Perks.SmallBlunt] = 2,
    },
    traits = {"Brave"},
})

addProfession('medic', {
    name = "UI_prof_medic",
    icon = "prof_medic",
    cost = -2,
    xp = {
        [Perks.Doctor] = 6,
        [Perks.SmallBlade] = 3,
    },
})


addProfession('wanderer', {
    name = "UI_prof_vaga",
    icon = "prof_outsider",
    cost = 0,
    xp = {
        [Perks.Survivalist] = 3,
        [Perks.Cooking] = 3,
        [Perks.Trapping] = 4,
        [Perks.Lightfoot] = 4,
        [Perks.Fishing] = 4,
        [Perks.SmallBlade] = 2,
        [Perks.Spear] = 2,
    },
    traits = {"Herbalist"},
})

addProfession('builder', {
    name = "UI_prof_builder",
    icon = "prof_builder",
    cost = -4,
    xp = {
        [Perks.SmallBlunt] = 4,
        [Perks.Woodwork] = 5,
    },
    traits = {"Handy"},
})

addProfession('thief', {
    name = "UI_prof_thief",
    icon = "prof_thief",
    cost = -6,
    xp = {
        [Perks.Nimble] = 2,
        [Perks.Sneak] = 2,
        [Perks.Lightfoot] = 2,
        --[Perks.Melee] = 2, 
        [Perks.SmallBlunt] = 1,
        [Perks.SmallBlade] = 3,
    },
    traits = {"Burglar"},
})

addProfession('scrapmech', {
    name = "UI_prof_scrapmech",
    icon = "prof_scrapmech",
    cost = -6,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.MetalWelding] = 4,
        [Perks.SmallBlunt] = 4,
        [Perks.Blunt] = 2,
    },
    traits = {"Mechanics2"},
})


-- Suggested Job Idea:
-- Psychotic Survivor
-- + Psychotic trait, causes random bursts of panic and giggling.
--[[ Currently a WiP, needs to be worked on.
addProfession('Psychotic', {
    name = "UI_prof_psychotic",
    icon = "prof_Knight",
    cost = -2,
    xp = {
        --TODO: Add Traits here, probably something a serial killer would be good at.
    },
    traits = {"Psychotic"},
})
]]


---------- TRAITS ------------

--[[TODO: Finish this up.
ProfessionFramework.addTrait('Psychotic', {
    name = "UI_trait_psychotic",
    description = "UI_traitdesc_psychotic",
    exclude = {"Desensitized"},
    cost = 0, -- Might Change
    OnGameStart = function(trait)
        -- add a new event to trigger every ten minutes
        Events.EveryTenMinutes.Add(function()
            local player = getSpecificPlayer(0)
            
            -- If a 1/4 is rolled, then...
            if ZombRand(3) < 1 then
                -- TODO: Add noise to attract zombies
                local noiseToMake = ZombRand(3)

                if noiseToMake == 0 then 
                    player:Say("Heheh...")
                    addSound(player, player.getLastPos().x, 0, player.getLastPos().z, 20, 10);
                end
                if noiseToMake == 1 then player:Say("*Giggles*") end
                if noiseToMake == 2 then player:Say("Haha!") end
                if noiseToMake == 3 then player:Say("*Snicker*") end
            end
        end)
    end
})
--]]
