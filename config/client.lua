return {
    statusIntervalSeconds = 5, -- how often to check hunger/thirst status to remove health if 0.
    loadingModelsTimeout = 30000, -- Waiting time for ox_lib to load the models before throws an error, for low specs pc

    pauseMapText = 'JACRP', -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear

    characters = {
        useExternalCharacters = false, -- Whether you have an external character management resource. (If true, disables the character management inside the core)
        enableDeleteButton = true, -- Whether players should be able to delete characters themselves.
        startingApartment = true, -- If set to false, skips apartment choice in the beginning (requires qbx_spawn if true)

        dateFormat = 'YYYY-MM-DD',
        dateMin = '1900-01-01', -- Has to be in the same format as the dateFormat config
        dateMax = '2006-12-31', -- Has to be in the same format as the dateFormat config

        limitNationalities = true, -- Setting this to false will allow people to enter whatever they want in the nationality field (To edit the list of nationalities, head to data/nationalities.lua)

        profanityWords = {
            ['bad word'] = true
        },

        locations = { -- Spawn locations for multichar, these are chosen randomly
            {
                pedCoords = vec4(-1004.5, -478.51, 50.03, 28.19),
                camCoords = vec4(-1006.36, -476.19, 50.50, 210.38),
            }
        },
    },

    discord = {
        enabled = true, -- This will enable or disable the built in discord rich presence.

        appId = '1053537101154635787', -- This is the Application ID (Replace this with you own)

        largeIcon = { -- To set this up, visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
            icon = 'justanothercityrp', -- Here you will have to put the image name for the 'large' icon.
            text = 'Just Another City RP', -- Here you can add hover text for the 'large' icon.
        },

        smallIcon = {
            icon = 'justanothercityrp', -- Here you will have to put the image name for the 'small' icon.
            text = 'Just Another City RP', -- Here you can add hover text for the 'small' icon.
        },

        firstButton = {
            text = 'Join Discord',
            link = 'https://discord.gg/justanothercityrp',
        },

        secondButton = {
            text = 'Visit Website',
            link = 'https://justanothercity.net',
        }
    },

    --- Only used by QB bridge
    hasKeys = function(plate, vehicle)
        exports['Renewed-Vehiclekeys']:hasKey(plate)
    end,
}
