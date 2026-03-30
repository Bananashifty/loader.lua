local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V70 CLASSIC",
   LoadingTitle = "Banana Hub Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true, -- Système de clé activé
   KeySettings = {
      Title = "Banana Hub | Key System",
      Subtitle = "Get your key from LootLabs",
      Note = "Link: https://loot-link.com/s?kc5LObQK", -- TON LIEN LOOTLABS
      FileName = "BananaKey", -- Sauvegarde la clé sur le PC
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ
   }
})

-- On crée un onglet au cas où l'utilisateur est déjà loggé
local Tab = Window:CreateTab("Main Menu", 4483362458)

-- BOUTON POUR COPIER LE LIEN SI BESOIN
Tab:CreateButton({
   Name = "🔗 Copy LootLabs Link",
   Callback = function()
       setclipboard("https://loot-link.com/s?kc5LObQK")
       Rayfield:Notify({Title = "Success", Content = "Link copied to clipboard!", Duration = 5})
   end,
})

-- BOUTON POUR LANCER LE V70 (S'il ne se lance pas seul)
Tab:CreateButton({
   Name = "🚀 Force Load V70 Menu",
   Callback = function()
       Rayfield:Destroy() -- Ferme proprement le loader
       task.wait(0.5)
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
   end,
})

-- LANCEMENT AUTOMATIQUE APRÈS LA CLÉ
-- (Rayfield exécute ce qui suit uniquement si la clé est correcte)
Rayfield:Notify({Title = "Access Granted", Content = "Launching V70 Black Menu...", Duration = 5})
task.wait(1)
Rayfield:Destroy() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
