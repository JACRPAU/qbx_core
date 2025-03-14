return {

    admincitizens = {      -- citizenIDs for Admin Tasks
    'AZI7FA70',            -- Huey Lawrie
    
    },
    updateInterval = 5, -- how often to update player data in minutes

    money = {
        ---@alias MoneyType 'cash' | 'bank' | 'crypto'
        ---@alias Money {cash: number, bank: number, crypto: number}
        ---@type Money
        moneyTypes = { cash = 1000, bank = 25000, crypto = 0 }, -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
        dontAllowMinus = { 'cash', 'crypto' }, -- Money that is not allowed going in minus
        paycheckTimeout = 10, -- The time in minutes that it will give the paycheck
        paycheckSociety = true -- If true paycheck will come from the society account that the player is employed at
    },

    player = {
        hungerRate = 2.2, -- Rate at which hunger goes down.
        thirstRate = 2.8, -- Rate at which thirst goes down.

        ---@enum BloodType
        bloodTypes = {
            'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-',
        },

        ---@alias UniqueIdType 'citizenid' | 'AccountNumber' | 'PhoneNumber' | 'FingerId' | 'WalletId' | 'SerialNumber'
        ---@type table<UniqueIdType, {valueFunction: function}>
        identifierTypes = {
            citizenid = {
                valueFunction = function()
                    return lib.string.random('A.......')
                end,
            },
            AccountNumber = {
                valueFunction = function()
                    return 'US0' .. math.random(1, 9) .. math.random(1111, 9999) .. math.random(1111, 9999) .. math.random(11, 99)
                end,
            },
            PhoneNumber = {
                valueFunction = function()
                    return math.random(100,999) .. math.random(1000000,9999999)
                end,
            },
            FingerId = {
                valueFunction = function()
                    return lib.string.random('...............')
                end,
            },
            WalletId = {
                valueFunction = function()
                    return 'WAL' .. math.random(11111111, 99999999)
                end,
            },
            SerialNumber = {
                valueFunction = function()
                    return math.random(11111111, 99999999)
                end,
            },
        }
    },

    ---@alias TableName string
    ---@alias ColumnName string
    ---@type [TableName, ColumnName][]
    characterDataTables = {
        {'properties', 'owner'},
        {'bank_accounts_new', 'id'},
        {'playerskins', 'citizenid'},
        {'player_mails', 'citizenid'},
        {'player_outfits', 'citizenid'},
        {'player_vehicles', 'citizenid'},
        {'player_groups', 'citizenid'},
        {'players', 'citizenid'},
        {'mdfishing', 'citizenid'},
        {'mechanic_employees', 'identifier'},
        {'phone_backups', 'id'},
        {'fd_advanced_banking_accounts_members', 'identifier'},
        {'flight_skills', 'identifier'},
        {'kub_truckingcontracts', 'citizenid'},
        {'kub_truckingplayervehicles', 'citizenid'},
        {'kub_truckingprofile', 'citizenid'},
        {'lation_chopshop', 'player_identifier'},
        {'lation_detecting', 'identifier'},
        {'lation_laundering', 'player_identifier'},
        {'lation_meth_players', 'identifier'},
        {'lation_meth_warehouses', 'owner'},
        {'lation_mining', 'identifier'},
        {'lation_selling', 'identifier'},
        {'lation_weed', 'owner'},
        {'lation_weed_players', 'identifier'},
        {'ra_boosting_contracts', 'owner_identifier'},
        {'ra_boosting_user_settings', 'player_identifier'},
        {'ra_drifting_events', 'player_identifier'},
        {'ra_drifting_results', 'player_identifier'},
        {'ra_drifting_user_settings', 'player_identifier'},
        {'ra_racing_results', 'player_identifier'},
        {'ra_racing_user_settings', 'player_identifier'},


    }, -- Rows to be deleted when the character is deleted

    server = {
        pvp = true, -- Enable or disable pvp on the server (Ability to shoot other players)
        closed = false, -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
        closedReason = 'Server Closed', -- Reason message to display when people can't join the server
        whitelist = false, -- Enable or disable whitelist on the server
        whitelistPermission = 'admin', -- Permission that's able to enter the server when the whitelist is on
        discord = '', -- Discord invite link
        checkDuplicateLicense = false, -- Check for duplicate rockstar license on join
        ---@deprecated use cfg ACE system instead
        permissions = { 'god', 'admin', 'mod' }, -- Add as many groups as you want here after creating them in your server.cfg
    },

    characters = {
        playersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
            ['license:2a4e5fa84d9cc2f27882dfc6631422882d7ba224'] = 10,
            ['license:fc1ffc22f34472b411e0f82d31597316e2abbd94'] = 10,
        },

        defaultNumberOfCharacters = 3, -- Define maximum amount of default characters (maximum 3 characters defined by default)
    },

    -- this configuration is for core events only. putting other webhooks here will have no effect
    logging = {
        webhook = {
            ['default'] = nil, -- default
            ['joinleave'] = nil, -- default
            ['ooc'] = nil, -- default
            ['anticheat'] = nil, -- default
            ['playermoney'] = nil, -- default
        },
        role = {} -- Role to tag for high priority logs. Roles use <@%roleid> and users/channels are <@userid/channelid>
    },

    giveVehicleKeys = function(src, plate, vehicle)
        return exports.qbx_vehiclekeys:GiveKeys(src, vehicle)
    end,

    getSocietyAccount = function(accountName)
        return exports.fd_banking:GetAccount(accountName)
    end,

    removeSocietyMoney = function(accountName, payment, reason)
        local nobby = reason
        if nobby == nil then reason = "No Description" end
        return exports.fd_banking:RemoveMoney(accountName, payment, reason)
    end,

    ---Paycheck function
    ---@param player Player Player object
    ---@param payment number Payment amount
    ---@param reason string Its a fukn string

    sendPaycheck = function(player, payment, reason)
        if reason == nil then reason = "No Description" end
        player.Functions.AddMoney('bank', payment, reason)
        --Notify(player.PlayerData.source, locale('info.received_paycheck', payment))
    end,
}
