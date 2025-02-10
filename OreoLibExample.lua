local OreoLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TempUserIdk18/OreoLib/refs/heads/main/OreoLibSource.lua'))()

local Window = OreoLib:MakeWindow({Name = "Oreo Library", HidePremium = false, SaveConfig = true, ConfigFolder = "OreoTest", IntroText = "Oreo Library"})
local Tab = Window:MakeTab({
	Name = "Oreo Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Destroy UI",
	Callback = function()
      		OreoLib:Destroy()
  	end    
})
Tab:AddButton({
	Name = "Set Neon Theme",
	Callback = function()
		Window:SetTheme("Neon")
	end    
})
Tab:AddButton({
	Name = "Set Default Theme",
	Callback = function()
		Window:SetTheme("Default")
	end    
})
Tab:AddButton({
	Name = "Set Ocean Theme",
	Callback = function()
		Window:SetTheme("Ocean")
	end    
})
Tab:AddButton({
	Name = "Set Cyberpunk Theme",
	Callback = function()
		Window:SetTheme("Cyberpunk")
	end    
})
Tab:AddButton({
	Name = "Set Midnight Theme",
	Callback = function()
		Window:SetTheme("Midnight")
	end    
})
Tab:AddButton({
	Name = "Set Sunset Theme",
	Callback = function()
		Window:SetTheme("Sunset")
	end    
})
Tab:AddButton({
	Name = "Make notification",
	Callback = function()
	   OreoLib:MakeNotification({
	        Name = "Title!",
	        Content = "Notification content... what will it say??",
	        Image = "rbxassetid://4483345998",
	        Time = 5
           })
	end    
})
