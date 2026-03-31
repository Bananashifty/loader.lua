local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 1. NOTIFICATION INTERACTIVE (Bouton de copie immédiat)
Rayfield:Notify({
   Title = "🔑 CLÉ REQUISE",
   Content = "Clique sur le bouton 'COPIER' pour le lien LootLabs",
   Duration = 20,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "COPIER LE LIEN",
         Callback = function()
            setclipboard("https://loot-link.com/s?kc5LObQK")
            Rayfield:Notify({Title = "Succès", Content = "Lien copié ! Colle-le dans ton navigateur.", Duration = 5})
         end
      },
   },
})

-- 2. SYSTÈME DE CLÉ (NOM CHANGÉ POUR FORCER LE REFRESH)
local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB V72 - NEW", -- Nom changé pour forcer le refresh
   LoadingTitle = "Verification...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Access Key System",
      Subtitle = "Entre la clé LootLabs ci-dessous",
      Note = "Regarde la notification à droite pour copier le lien !", 
      FileName = "BananaKey_ForceUpdate_99", -- Nouveau nom unique
      SaveKey = false, -- Désactive la sauvegarde (Clé à chaque fois)
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} 
   }
})

-- 3. LANCEMENT DU MENU NOIR (UNIQUEMENT SI CLÉ OK)
Rayfield:Notify({Title = "Accès Autorisé", Content = "Chargement de V70 Source...", Duration = 3})
task.wait(1)
Rayfield:Destroy() 

-- CHARGE TON CODE V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
