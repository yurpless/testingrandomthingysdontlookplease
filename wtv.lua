task.wait(1) -- Small delay to ensure game is loaded

local args = {
    [1] = "Eth",
    [2] = "Buy",
    [3] = -999e9
}

game:GetService("ReplicatedStorage")
    :WaitForChild("RemoteEvents")
    :WaitForChild("ToServer")
    :WaitForChild("Crypto_Event")
    :FireServer(unpack(args))
