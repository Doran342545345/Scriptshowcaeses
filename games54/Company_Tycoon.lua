local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Company Tycoon",
	LoadingTitle = "Company Tycoon",
	LoadingSubtitle = "by Doran#6880",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	}
})

local Farms = Window:CreateTab("Farm", 4483362458) -- Title, Image

local Section = Farms:CreateSection("Farms")

local Slider = Farms:CreateSlider({
	Name = "Walkspeed",
	Range = {16, 200},
	Increment = 1,
	Suffix = "Walkspeed",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Input = Farms:CreateInput({
	Name = "Rebirths ",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		game:GetService("Players").LocalPlayer.stats.rebirths.Value = Text
	end,
})

local Input = Farms:CreateInput({
	Name = "Cash",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		game:GetService("Players").LocalPlayer.stats.networth.Value = Text
		game:GetService("Players").LocalPlayer.stats.cash.Value = Text
	end,
})

local Input = Farms:CreateInput({
	Name = "Company XP ",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		game:GetService("Players").LocalPlayer.stats.companyxp.Value = Text
	end,
})

local Input = Farms:CreateInput({
	Name = "Fans",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		game:GetService("Players").LocalPlayer.stats.fans.Value = Text
	end,
})
