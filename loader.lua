local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | KEY SYSTEM",
   LoadingTitle = "Loading Banana V70...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Key Entry", 4483362458)

Tab:CreateInput({
   Name = "Enter Key",
   PlaceholderText = "Paste key here...",
   Callback = function(Text)
       if Text == "BANANA_V70_SECRET" then
           Rayfield:Notify({Title = "Success", Content = "Loading your V70 Code...", Duration = 5})
           Window:Destroy()
           -- CECI CHARGE TON CODE SUR GITHUB :
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. os.time()))()
       else
           Rayfield:Notify({Title = "Error", Content = "Wrong Key!", Duration = 5})
       end
   end,
})
