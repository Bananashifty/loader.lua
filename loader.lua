-- 🔗 CONFIGURATION DES LIENS
local LootLabsLink = "https://loot-link.com/s?kc5LObQK"
local GitHubRawKeyURL = "https://raw.githubusercontent.com/Bananashifty/key.txt/refs/heads/main/key.txt"

-- 📥 RÉCUPÉRATION DE LA CLÉ EN TEMPS RÉEL
local success, CurrentKey = pcall(function()
    -- On ajoute un "?t=" .. tick() pour éviter que Roblox ne garde une ancienne clé en cache
    return game:HttpGet(GitHubRawKeyURL .. "?t=" .. tick()):gsub("%s+", "")
end)

if not success or not CurrentKey or CurrentKey == "" then
    warn("⚠️ Erreur de connexion au serveur de clés GitHub")
    CurrentKey = "MAINTENANCE" -- Clé de secours si GitHub est en panne
end

-- 📋 AUTO-COPY DU LIEN DÈS L'EXÉCUTION
setclipboard(LootLabsLink)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 🎨 BOUTON JAUNE FLOTTANT (COPIE EN 1 CLIC)
local BananaGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local CopyBtn = Instance.new("TextButton", BananaGui)
CopyBtn.Size = UDim2.new(0, 220, 0, 45)
CopyBtn.Position = UDim2.new(0.5, -110, 0.5, 95) -- Placé sous la box de clé
CopyBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 0)
CopyBtn.Text = "🍌 CLICK TO COPY LINK"
CopyBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyBtn.Font = Enum.Font.SourceSansBold
CopyBtn.TextSize = 16
local Corner = Instance.new("UICorner", CopyBtn)
Corner.CornerRadius = UDim.new(0, 10)

CopyBtn.MouseButton1Click:Connect(function()
    setclipboard(LootLabsLink)
    Rayfield:Notify({Title = "Banana Hub", Content = "LootLabs link copied!", Duration = 3})
end)

-- 🛡️ SYSTÈME DE VÉRIFICATION RAYFIELD
local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Checking Key...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Key System",
      Subtitle = "Get the daily key from LootLabs",
      Note = "Link is already in your clipboard!",
      FileName = "BananaKey_System_V1", 
      SaveKey = false, -- Oblige à repasser par LootLabs à chaque fois
      GrabKeyFromSite = false,
      Key = {CurrentKey} -- Vérifie avec la clé de ton GitHub !
   }
})

-- 🚀 NETTOYAGE ET LANCEMENT DU MENU NOIR
BananaGui:Destroy()
Rayfield:Notify({Title = "Access Granted", Content = "Welcome back!", Duration = 5})
task.wait(1)
Rayfield:Destroy() 

-- CHARGEMENT DE TA SOURCE V70
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
