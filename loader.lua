-- 1. AUTO-COPY IMMÉDIAT (Même pas besoin de cliquer)
setclipboard("https://loot-link.com/s?kc5LObQK")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 2. CRÉATION DU BOUTON JAUNE (Indépendant de Rayfield)
local BananaGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
BananaGui.DisplayOrder = 999 -- Pour être au-dessus de TOUT

local CopyBtn = Instance.new("TextButton", BananaGui)
CopyBtn.Size = UDim2.new(0, 220, 0, 45)
CopyBtn.Position = UDim2.new(0.5, -110, 0.5, 90) -- Placé juste sous la fenêtre de clé
CopyBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 0) -- Jaune Banane
CopyBtn.Text = "🍌 COPY LOOTLABS LINK"
CopyBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyBtn.Font = Enum.Font.SourceSansBold
CopyBtn.TextSize = 16
CopyBtn.AutoButtonColor = true

local Corner = Instance.new("UICorner", CopyBtn)
Corner.CornerRadius = UDim.new(0, 10)

-- Effet au clic sur le bouton jaune
CopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://loot-link.com/s?kc5LObQK")
    CopyBtn.Text = "✅ LINK COPIED !"
    wait(2)
    CopyBtn.Text = "🍌 COPY LOOTLABS LINK"
end)

-- 3. SYSTÈME DE CLÉ RAYFIELD
local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | VERSION 72.5",
   LoadingTitle = "Banana Security Check...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Key System",
      Subtitle = "Link is already copied!", -- Message d'aide
      Note = "If not, use the Yellow Button below.",
      FileName = "BananaKey_Ultra_Reset_V5", -- Nom de fichier totalement nouveau
      SaveKey = false, 
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} 
   }
})

-- 4. NETTOYAGE UNE FOIS LA CLÉ VALIDÉE
-- Dès que la clé est correcte, on détruit le bouton jaune
BananaGui:Destroy()

Rayfield:Notify({Title = "Success", Content = "Launching V70 Black Menu...", Duration = 5})
task.wait(1)
Rayfield:Destroy() 

-- CHARGEMENT DU CODE V70 SUR GITHUB
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
