local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Banana Hub Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true, -- ACTIVE LA FENÊTRE DE CLÉ IMMÉDIATE
   KeySettings = {
      Title = "Banana Hub | Access Key",
      Subtitle = "Get your key from LootLabs",
      Note = "Link: https://loot-link.com/s?kc5LObQK", -- TON LIEN LOOTLABS
      FileName = "BananaKey", 
      SaveKey = true, -- Sauvegarde la clé pour ne pas la retaper
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ ICI
   }
})

-- CET ONGLET APPARAÎTRA SEULEMENT APRÈS AVOIR ENTRÉ LA CLÉ
local Tab = Window:CreateTab("Home", 4483362458)

Tab:CreateSection("Key Validated !")

Tab:CreateButton({
   Name = "🚀 LAUNCH V70 (BLACK MENU)",
   Callback = function()
       Rayfield:Notify({Title = "Success", Content = "Loading Black Menu...", Duration = 3})
       Rayfield:Destroy() -- Ferme Rayfield proprement
       task.wait(0.5)
       -- CHARGE TON CODE V70 SUR GITHUB
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
   end,
})

-- LANCEMENT AUTO APRÈS VALIDATION DE LA CLÉ
Rayfield:Notify({Title = "Welcome", Content = "Opening V70...", Duration = 3})
task.wait(1)
Rayfield:Destroy() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
