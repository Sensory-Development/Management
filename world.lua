print("Running this gets you logged inside of a webhook")

local player = game.Players.LocalPlayer
local username = player.Name  -- Gets the Roblox username

local executor = identifyexecutor() or "Unknown Executor"  -- Gets the executor name, fallback if not available

-- Placeholder for your Discord webhook URL. Replace with your actual webhook URL.
local webhookUrl = "https://discord.com/api/webhooks/YOUR_WEBHOOK_ID/YOUR_WEBHOOK_TOKEN"

-- Construct the message to send to the webhook
local message = "The Roblox User " .. username .. " has run the script with executor " .. executor

-- Use Synapse's request function to send the data
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
