local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- ASTUCE : On récupère le jour actuel (ex: "30_03_2024")
-- Cela crée un nouveau fichier de sauvegarde chaque jour !
local DateKey = os.date("%d_%m_%y")

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | DAILY KEY",
   LoadingTitle = "Checking Daily Access...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Banana Hub | Access Key",
      Subtitle = "La clé expire toutes les 24h",
      Note = "Lien LootLabs : https://loot-link.com/s?kc5LObQK",
      FileName = "BananaKey_" .. DateKey, -- LE NOM CHANGE CHAQUE JOUR
      SaveKey = true, 
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ (Change-la ici si tu veux)
   }
})

-- LANCEMENT AUTOMATIQUE APRÈS VALIDATION
Rayfield:Notify({Title = "Accès Validé", Content = "Chargement du menu V70...", Duration = 5})

task.wait(1)
Rayfield:Destroy() 

-- CHARGE TON CODE NOIR V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
