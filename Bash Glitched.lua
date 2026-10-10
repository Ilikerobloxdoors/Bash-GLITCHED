local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "MRXBASH-)MSIU", -- Custom name of your entity
    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Bash-GLITCHED/refs/heads/main/BASH%20FIXED.rbxm", -- GitHub model
    Speed = 265, -- Entity speed
    DelayTime = 2.5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,

    FlickerLights = {
        false, -- Enabled/Disabled
        1, -- Time (seconds)
    },

    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 0.7,
    },

    CamShake = {
        false, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values
        100, -- Shake start distance
    },

    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823",
            Image2 = "rbxassetid://10483999903",
            Shake = false,

            Sound1 = {
                10483790459,
                {Volume = 0.5},
            },

            Sound2 = {
                10483837590,
                {Volume = 0.5},
            },

            Flashing = {
                false,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                false,
                Min = 1,
                Max = 1,
            },
        },
    },

    CustomDialog = {
        "You died to MRXBASH-)MSIU...",
        "It moves extremely fast.",
        "Find a hiding spot!"
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("MRXBASH-)MSIU has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("MRXBASH-)MSIU has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("MRXBASH-)MSIU has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("MRXBASH-)MSIU has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("MRXBASH-)MSIU has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at MRXBASH-)MSIU:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("A player has died to MRXBASH-)MSIU!")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
