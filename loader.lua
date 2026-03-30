local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | KEY SYSTEM",
   LoadingTitle = "Banana V72 Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Access Key Required",
      Subtitle = "Get key from LootLabs",
      Note = "Lien : https://loot-link.com/s?kc5LObQK", -- TON LIEN LOOTLABS
      FileName = "BananaKey_New", -- On change le nom pour forcer la clé
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ
   }
})

-- Le script s'arrête ici tant que la clé n'est pas mise.
-- Dès que la clé est validée, Rayfield exécute ce qui suit :

Rayfield:Notify({Title = "Success", Content = "Key Validated! Loading V70 Menu...", Duration = 5})

task.wait(1)
Rayfield:Destroy() -- Ferme proprement le système de clé

-- ON LANCE LE MENU NOIR DEPUIS TON GITHUB
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
end)

if not success then
    warn("Erreur de chargement GitHub : " .. tostring(err))
end
