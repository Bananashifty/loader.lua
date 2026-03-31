local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 1. NOTIFICATION DE COPIE (Apparaît direct au milieu)
Rayfield:Notify({
   Title = "🔑 KEY REQUIRED",
   Content = "Click 'COPY' to get your LootLabs link!",
   Duration = 15,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "COPY LINK",
         Callback = function()
            setclipboard("https://loot-link.com/s?kc5LObQK")
            Rayfield:Notify({Title = "Copied!", Content = "Link is in your clipboard.", Duration = 3})
         end
      },
   },
})

-- 2. FENÊTRE DE CLÉ SANS SAUVEGARDE
local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Banana Hub Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Access Key",
      Subtitle = "Paste the key from LootLabs below",
      Note = "Use the notification to copy the link!", 
      FileName = "BananaKey_Immediate", 
      SaveKey = false, -- Oblige à remettre la clé à chaque fois
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} 
   }
})

-- LANCEMENT AUTO APRÈS VALIDATION
Rayfield:Notify({Title = "Success", Content = "Opening V70...", Duration = 3})
task.wait(1)
Rayfield:Destroy() 

-- CHARGE TON CODE V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
