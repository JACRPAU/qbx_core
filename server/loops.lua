local config = require 'config.server'

local function removeHungerAndThirst(src, player)
    local playerState = Player(src).state
    if not playerState.isLoggedIn then return end
    local newHunger = playerState.hunger - config.player.hungerRate
    local newThirst = playerState.thirst - config.player.thirstRate

    player.Functions.SetMetaData('thirst', math.max(0, newThirst))
    player.Functions.SetMetaData('hunger', math.max(0, newHunger))

    player.Functions.Save()
end

CreateThread(function()
    local interval = 60000 * config.updateInterval
    while true do
        Wait(interval)
        for src, player in pairs(QBX.Players) do
            removeHungerAndThirst(src, player)
        end
    end
end)

local function pay(player)
    local job = player.PlayerData.job
    local payment = GetJob(job.name).grades[job.grade.level].payment or job.payment
    if payment <= 0 then return end
    if not GetJob(job.name).offDutyPay and not job.onduty then return end
    if not config.money.paycheckSociety then
        config.sendPaycheck(player, payment)
        return
    end
    local account = config.getSocietyAccount(job.name)
    if not account then -- Checks if player is employed by a society
        config.sendPaycheck(player, payment)
        return
    end
    if account < payment then -- Checks if company has enough money to pay society
        Notify(player.PlayerData.source, locale('error.company_too_poor'), 'error')
        return
    end
    config.removeSocietyMoney(job.name, payment, 'Wage Payment', player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname)
    --exports['Renewed-Banking']:handleTransaction(job.name, 'Payroll', payment, 'Wage Payment', player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname, job.label, 'withdraw')
    config.sendPaycheck(player, payment, job.label .. '<!>' .. job.grade.name .. ' wage payment')
    --exports['Renewed-Banking']:handleTransaction(player.PlayerData.citizenid, 'Payroll', payment, 'Wage Payment for ' .. job.grade.name, player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname, job.label, 'deposit')


    
    exports["lb-phone"]:SendNotification(player.PlayerData.source, {
        app = "Wallet", -- the app to send the notification to (optional)
        title = job.label .. " Payroll Dept", -- the title of the notification
        content = "Payroll deposited at the bank: $".. payment .. ' for ' ..job.grade.name, -- the description of the notification
        icon = "./img/icons/apps/Wallet.jpg", -- the icon of the notification (optional)
    })

end

CreateThread(function()
    local interval = 60000 * config.money.paycheckTimeout
    while true do
        Wait(interval)
        for _, player in pairs(QBX.Players) do
            pay(player)
        end
    end
end)
