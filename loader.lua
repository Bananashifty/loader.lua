local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | NO SAVE",
   LoadingTitle = "Checking Access...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Banana Hub | Access Key",
      Subtitle = "Clé requise à chaque lancement",
      Note = "Lien LootLabs : https://loot-link.com/s?kc5LObQK",
      FileName = "NoSaveKey", -- Ce nom n'aura plus d'importance
      SaveKey = false, -- <--- ICI : On met FALSE pour ne rien enregistrer
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ
   }
})

-- Le reste du code ne change pas
Rayfield:Notify({Title = "Accès Validé", Content = "Chargement du menu V70...", Duration = 5})

task.wait(1)
Rayfield:Destroy() 

-- CHARGE TON CODE NOIR V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
