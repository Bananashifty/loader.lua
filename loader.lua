local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "TEST SYSTEM",
   LoadingTitle = "Testing...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Test", 4483362458)

Tab:CreateInput({
   Name = "Enter Key",
   PlaceholderText = "Type: BANANA_V70_SECRET",
   Callback = function(Text)
       if Text == "BANANA_V70_SECRET" then
           Window:Destroy()
           -- TEST DIRECT SANS GITHUB :
           print("KEY VALID - TRYING TO LOAD SOURCE")
           local success, err = pcall(function()
               loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. os.time()))()
           end)
           if not success then
               warn("GITHUB ERROR: " .. tostring(err))
           end
       end
   end,
})
