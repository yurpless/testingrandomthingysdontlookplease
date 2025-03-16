if not identifyexecutor or identifyexecutor() ~= "Solara" then
    warn("This script is optimized for Solara.")
end

task.wait(1) -- Short delay to ensure execution

local args = {
    "Eth",  -- Cryptocurrency type
    "Buy",  -- Action type
    -999e9  -- Amount (negative for potential exploit)
}

local success, err = pcall(function()
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents")
        :WaitForChild("ToServer")
        :WaitForChild("Crypto_Event")
        :FireServer(unpack(args))
end)

if not success then
    warn("Failed to execute on Solara:", err)
else
    print("Script executed successfully on Solara!")
end
