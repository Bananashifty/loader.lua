local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 1. CRÉATION D'UN BOUTON DE COPIE FLOTTANT (HORS RAYFIELD)
local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local CopyBtn = Instance.new("TextButton", ScreenGui)

CopyBtn.Size = UDim2.new(0, 200, 0, 50)
CopyBtn.Position = UDim2.new(0.5, -100, 0.5, 80) -- Juste en dessous de la zone de clé
CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
CopyBtn.Text = "📋 CLICK TO COPY LOOTLABS"
CopyBtn.TextColor3 = Color3.new(1, 1, 1)
CopyBtn.Font = Enum.Font.SourceSansBold
CopyBtn.TextSize = 18
CopyBtn.ZIndex = 10000 -- Pour être au-dessus de TOUT

-- Bordure arrondie pour le style
local UICorner = Instance.new("UICorner", CopyBtn)
UICorner.CornerRadius = UDim.new(0, 8)

-- Fonction de copie au clic
CopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://loot-link.com/s?kc5LObQK")
    CopyBtn.Text = "✅ LINK COPIED !"
    task.wait(2)
    CopyBtn.Text = "📋 CLICK TO COPY LOOTLABS"
end)

-- 2. LA FENÊTRE DE CLÉ RAYFIELD
local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Verification...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true,
   KeySettings = {
      Title = "Access Key System",
      Subtitle = "Get key from LootLabs",
      Note = "Use the blue button below to copy link!",
      FileName = "BananaKey_New_Check_1", 
      SaveKey = false, 
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} 
   }
})

-- 3. NETTOYAGE ET LANCEMENT
-- Quand la clé est bonne, on supprime le bouton bleu et on lance le V70
ScreenGui:Destroy() 
Rayfield:Notify({Title = "Success", Content = "Opening V70...", Duration = 3})
task.wait(1)
Rayfield:Destroy() 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
