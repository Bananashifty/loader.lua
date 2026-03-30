local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | KEY SYSTEM",
   LoadingTitle = "Banana Hub V72",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false }
})

local KeySettings = {
   Title = "Banana Hub | Access Key",
   Subtitle = "Get your key from LootLabs",
   Note = "Link: https://loot-link.com/s?kc5LObQK",
   SaveKey = true,
   Key = {"BANANA_V70_SECRET"}
}

local Tab = Window:CreateTab("Key Entry", 4483362458)

Tab:CreateInput({
   Name = "Enter Key",
   PlaceholderText = "Paste key here...",
   Callback = function(Text)
       if Text == KeySettings.Key[1] then
           Rayfield:Notify({Title = "Access Granted!", Content = "Loading V72...", Duration = 5})
           task.wait(1)
           -- LE LIEN AVEC FORCE UPDATE (os.time)
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. os.time()))()
       else
           Rayfield:Notify({Title = "Invalid Key", Content = "Check your key.", Duration = 5})
       end
   end,
})

Tab:CreateButton({
   Name = "Get Key (Copy Link)",
   Callback = function() setclipboard("https://loot-link.com/s?kc5LObQK") end,
})
