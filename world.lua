print("Running this gets you logged inside of a webhook")

local player = game.Players.LocalPlayer
local username = player.Name
local executor = identifyexecutor() or "Unknown Executor"
local webhookUrl = "https://discord.com/api/webhooks/1433568246363324526/CDYgBNLRLM_6meJngPi5vNGvh4FRPvUjEH4dh5nooAWbyyrFZaMH2VaV90n-DpRbcrt1"
local message = "The Roblox User " .. username .. " has run the script with executor " .. executor

syn.request({
    Url = webhookUrl,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        content = message
    })
})
