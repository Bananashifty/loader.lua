local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Banana Hub Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true, -- On garde le système de clé bloquant
   KeySettings = {
      Title = "Banana Hub | Access Key",
      Subtitle = "Get your key from LootLabs",
      Note = "Click 'Copy Link' button below!", -- Indication pour l'utilisateur
      FileName = "BananaKey_NoSave", 
      SaveKey = false, -- Pas de sauvegarde, clé à chaque fois
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} 
   }
})

-- CET ONGLET EST VISIBLE MÊME PENDANT LA DEMANDE DE CLÉ
local TabKey = Window:CreateTab("🔑 Get Key", 4483362458)

TabKey:CreateSection("Instructions")

TabKey:CreateButton({
   Name = "📋 COPY LOOTLABS LINK (CLICK ME)",
   Info = "Copies the link to your clipboard",
   Interact = 'Click',
   Callback = function()
       -- FONCTION DE COPIE AUTOMATIQUE
       setclipboard("https://loot-link.com/s?kc5LObQK")
       
       -- Notification pour confirmer la copie
       Rayfield:Notify({
          Title = "Link Copied!",
          Content = "Paste it into your browser to get the key.",
          Duration = 5,
          Image = 4483362458,
       })
   end,
})

-- LE RESTE DU CODE (LANCEMENT DU V70)
-- S'exécute uniquement si la clé entrée est correcte
Rayfield:Notify({Title = "Welcome", Content = "Key Validated! Opening V70...", Duration = 3})
task.wait(1)
Rayfield:Destroy() 

-- CHARGE TON CODE V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
