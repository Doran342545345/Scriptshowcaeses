
spawn(function()
    while wait(1) do
        if textKeybind == true then
            local random = text[math.random(1, #text)]
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(random, "All")
        end
    end 
end)
local lol = textKeybind
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == lol and toggle == false then
		toggle = true 
        textKeybind = true
    else 
        toggle = false
        textKeybind = false
    end
end)
