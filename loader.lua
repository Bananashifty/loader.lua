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
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
       if Text == KeySettings.Key[1] then
           Rayfield:Notify({
               Title = "Access Granted!",
               Content = "Fetching the source... Please wait.",
               Duration = 5,
               Image = 4483362458,
           })
           
           -- On ferme proprement la fenêtre de clé
           task.wait(1)
           Window:Destroy()
           
           -- LA LIGNE CRUCIALE : On force l'exécution de la source
           local success, err = pcall(function()
               loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/main/v70_source.lua"))()
           end)

           if not success then
               warn("Error loading script: " .. tostring(err))
           end
       else
           Rayfield:Notify({
               Title = "Invalid Key",
               Content = "Please check your key or get a new one.",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

Tab:CreateButton({
   Name = "Get Key (Copy Link)",
   Callback = function()
       setclipboard("https://loot-link.com/s?kc5LObQK")
       Rayfield:Notify({
           Title = "Link Copied!",
           Content = "Paste the link in your browser to get the key.",
           Duration = 5,
           Image = 4483362458,
       })
   end,
})
