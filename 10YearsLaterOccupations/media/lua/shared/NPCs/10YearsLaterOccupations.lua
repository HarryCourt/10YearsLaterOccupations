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
-- TODO:
-- 1. We should make a seperate lua file for traits and how they work to keep this lua file clean and tidy.
-- 2. Add more clothing options.

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
    clothing = {
        Hat = {"Base.Hat_Cowboy", "Base.Hat_Beany"},
        Mask = {"Base.Hat_BandanaMask", "Base.Hat_BandanaMaskTINT"},
        TorsoExtra = {"Base.Vest_BulletCivilian"},
        FullHat = {"Base.Hat_CrashHelmetFULL", "Base.Hat_Army"},
        Back = {"Base.Bag_Schoolbag"},
        Jacket = {"Base.Jacket_WhiteTINT"},
    },
})

addProfession('hardened', {
    name = "UI_prof_hardened",
    icon = "prof_hardened",
    cost = -12,
    xp = {
        [Perks.Sprinting] = 2,
        [Perks.Strength] = 3,
        [Perks.Fitness] = 4,
        [Perks.Aiming] = 5,
        [Perks.Reloading] = 2,
        [Perks.Blunt] = 3,
        [Perks.Blade] = 3,
    },
    clothing = {
        Hat = {"Base.Hat_Cowboy", "Base.Hat_Beany"},
        Mask = {"Base.Hat_BandanaMask", "Base.Hat_BandanaMaskTINT"},
        TorsoExtra = {"Base.Vest_BulletArmy"},
        FullHat = {"Base.Hat_CrashHelmetFULL", "Base.Hat_Army"},
        Back = {"Base.Bag_DuffelBagTINT"},
        Jacket = {"Base.Jacket_WhiteTINT"},
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
})

addProfession('medic', {
    name = "UI_prof_medic",
    icon = "prof_medic",
    cost = -2,
    xp = {
        [Perks.Doctor] = 7,
        [Perks.SmallBlade] = 3,
    },
    clothing = {
        Mask = {"Base.Hat_SurgicalMask_Blue", "Base.Hat_SurgicalMask_Green"},  
    },
})


addProfession('nimrod', {
    name = "UI_prof_wanderer",
    icon = "prof_wanderer",
    cost = -8,
    xp = {
        [Perks.PlantScavenging] = 3,
        [Perks.Cooking] = 3,
        [Perks.Trapping] = 4,
        [Perks.Lightfoot] = 4,
        [Perks.Fishing] = 4,
        [Perks.SmallBlade] = 2,
        [Perks.Blade] = 2,
        [Perks.Spear] = 2,
    },
    recipes = {"Make Stick Trap", "Make Snare Trap", "Make Wooden Cage Trap", "Make Trap Box", "Make Cage Trap"},
    clothing = {
        Hat = {"Base.Hat_Raccoon", "Base.Hat_WinterHat"},
        TorsoExtra = {"Base.Vest_Hunting_CamoGreen", "Base.Vest_Hunting_Camo"},
        Pants = {"Base.Trousers_CamoGreen"},
        Shoes = {"Base.Shoes_Wellies"},
    },
})

addProfession('builder', {
    name = "UI_prof_builder",
    icon = "prof_builder",
    cost = -4,
    xp = {
        [Perks.SmallBlunt] = 3,
        [Perks.Woodwork] = 5,
        [Perks.Strength] = 1,
    },
    --traits = {"Handy"},
})


addProfession('thief', {
    name = "UI_prof_thief",
    icon = "prof_thief",
    cost = -8,
    xp = {
        [Perks.Nimble] = 2,
        [Perks.Sneak] = 2,
        [Perks.Lightfoot] = 2,
        --[Perks.Melee] = 2, 
        [Perks.SmallBlunt] = 2,
        [Perks.SmallBlade] = 4,
    },
    traits = {"Burglar"},
    clothing = {
        Mask = {"Base.Hat_BalaclavaFull", "Base.Hat_BalaclavaFace", "Base.Hat_BandanaMask", "Base.Hat_BandanaMaskTINT"},
        Back = {"Base.Bag_DuffelBagTINT"},
        Jacket = {"Base.HoodieDOWN_WhiteTINT", "Base.HoodieUP_WhiteTINT"},
    },
})

--[[
addProfession('cultist', {
    name = "UI_prof_cultist",
    icon = "prof_thief",
    cost = 0,
    xp = {
        [Perks.Nimble] = 2,
        [Perks.Sneak] = 2,
        [Perks.Lightfoot] = 2,
        [Perks.SmallBlade] = 3,
    },
    traits = {"Cultist"},
    clothing = {
        Hat = {"Base.Hat_TinFoilHat"}
        Mask = {"Base.HockeyMask"},
        Back = {"Base.Bag_DuffelBagTINT"},
        Jacket = {"Base.JacketLong_Random"},
    },
})
]]
addProfession('scrapmech', {
    name = "UI_prof_scrapmech",
    icon = "prof_scrapmech",
    cost = -4,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.MetalWelding] = 4,
        [Perks.SmallBlunt] = 4,
        [Perks.Blunt] = 2,
        [Perks.Mechanics] = 4,
    },
    clothing = {
        Mask = {"Base.WeldingMask"},
        FullSuit = {"Base.Boilersuit", "Base.Boilersuit_BlueRed"},
    },
    traits = {"Mechanics2"},
    recipes = { "Basic Mechanics", "Intermediate Mechanics" },
})

-------------------------------------------
-- Roleplay Professions
-- These professions are currently a work in progress, and shouldn't be enabled.
-------------------------------------------

if getActivatedMods():contains("10YearsLaterOccupationsRP") == true then
    -- Hero
    addProfession('hero', {
        name = "UI_prof_hero",
        icon = "prof_common",
        cost = 0,
        xp = {
        },
        -- TODO: Clothing contains rare/unique, but heroic item
        clothing = {
            Hat = {"Base.Hat_Cowboy", "Base.Hat_Beany"},
            Mask = {"Base.Hat_BandanaMask", "Base.Hat_BandanaMaskTINT"},
            TorsoExtra = {"Base.Vest_BulletCivilian"},
            FullHat = {"Base.Hat_CrashHelmetFULL", "Base.Hat_Army"},
            Back = {"Base.Bag_DuffelBagTINT"},
            Jacket = {"Base.Jacket_WhiteTINT"},
        },
        traits = {},
    })

    -- Bandit Role
    addProfession('bandit', {
        name = "UI_prof_bandit",
        icon = "prof_common",
        cost = -2,
        xp = {
        },
        traits = {},
    })
end

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
 

--[[
function CultistAttack(_player)
    local player = _player;
    -- If the player is a cultist.
    if player:HasTrait("Cultist") then
        if player:getPrimaryHandItem() ~= nil then
            local wpnInHand = player:getPrimaryHandItem():getType()
            local wpn = player:getPrimaryHandItem();
            
            -- Note: Some of these weapons are using different values than their vanilla counterparts. Just ignore for now :)
            if wpnInHand == "KitchenKnife" or wpnInHand == "Screwdriver" or wpnInHand == "Stake" then
                wpn:setMinDamage(0.3 * 3.0);
                wpn:setMaxDamage(0.7 * 3.0);
                wpn:setCriticalChance(75);
            elseif wpnInHand == "HandScythe" or wpnInHand == "HuntingKnife" then
                wpn:setMinDamage(0.6 * 3.0);
                wpn:setMaxDamage(1.2 * 3.0);
                wpn:setCriticalChance(75);
            elseif wpnInHand == "FlintKnife" or wpnInHand == "MeatCleaver" then
                wpn:setMinDamage(0.4 * 3.0);
                wpn:setMaxDamage(0.8 * 3.0);
                wpn:setCriticalChance(75);
            end
        end
    -- If not, revert values back!
    else
        if player:getPrimaryHandItem() ~= nil then
            local wpnInHand = player:getPrimaryHandItem():getType()
            local wpn = player:getPrimaryHandItem();

            -- Note: Some of these weapons are using different values than their vanilla counterparts. Just ignore for now :)
            if wpnInHand == "KitchenKnife" or wpnInHand == "Screwdriver" or wpnInHand == "Stake" then
                wpn:setMinDamage(0.3);
                wpn:setMaxDamage(0.7);
                wpn:setCriticalChance(12);

            elseif wpnInHand == "HandScythe" or wpnInHand == "HuntingKnife" then
                wpn:setMinDamage(0.6);
                wpn:setMaxDamage(1.2);

                if wpnInHand == "HuntingKnife"
                    wpn:setCriticalChance(50)
                else
                    wpn:setCriticalChance(15)
                end

            elseif wpnInHand == "FlintKnife" or wpnInHand == "MeatCleaver" then
                wpn:setMinDamage(0.4);
                wpn:setMaxDamage(0.8);
                wpn:setCriticalChance(15);
            end
        end
    end
end
]]


ProfessionFramework.addTrait('Cultist', {
    name = "UI_trait_cultist",
    description = "Knives, Meat Cleavers, Stakes, and Hand Scythes deal 3x damage, and have higher chances to critical hit.",
    cost = 0,
    OnGameStart = function(trait)
    end
})
 
Events.OnWeaponHitCharacter.Add(CultistAttack)
 