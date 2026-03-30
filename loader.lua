local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | KEY SYSTEM",
   LoadingTitle = "Banana Hub V72",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Key Entry", 4483362458)

Tab:CreateInput({
   Name = "Enter Key",
   PlaceholderText = "Paste key here...",
   Callback = function(Text)
       if Text == "BANANA_V70_SECRET" then
           Rayfield:Notify({Title = "Access Granted!", Content = "FORCING V70 LOAD...", Duration = 5})
           
           -- ON FERME RAYFIELD POUR LAISSER PLACE AU MENU NOIR
           Window:Destroy() 
           
           -- CE LIEN EST LE SEUL QUI COMPTE :
           local latest_code = "https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. os.time()
           loadstring(game:HttpGet(latest_code))()
       else
           Rayfield:Notify({Title = "Invalid Key", Content = "Check your key.", Duration = 5})
       end
   end,
})
