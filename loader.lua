-- [[ CONFIGURATION ]] --
local CorrectKey = "BANANA_V70_SECRET" -- TA CLÉ ICI
local LootLabsLink = "https://loot-link.com/s?kc5LObQK"
local GithubURL = "https://raw.githubusercontent.com/Bananashifty/v70_source.lua/main/v70_source.lua"

-- [[ INTERFACE DE LA CLÉ ]] --
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BananaAuth"
ScreenGui.Parent = game:GetService("CoreGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 300, 0, 200)
Main.Position = UDim2.new(0.5, -150, 0.5, -100)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

-- Titre
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "BANANA HUB V72 🍌"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = Main

-- Input Key
local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyBox.PlaceholderText = "Entrer la clé..."
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Text = ""
KeyBox.Font = Enum.Font.Gotham
KeyBox.Parent = Main

-- Bouton Verify
local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Size = UDim2.new(0.35, 0, 0, 40)
VerifyBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
VerifyBtn.Text = "VERIFY"
VerifyBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.Font = Enum.Font.GothamBold
VerifyBtn.Parent = Main

-- Bouton Get Key
local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0.35, 0, 0, 40)
GetKeyBtn.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyBtn.Text = "GET KEY"
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.Parent = Main

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, 0, 0, 20)
Status.Position = UDim2.new(0, 0, 0.9, 0)
Status.BackgroundTransparency = 1
Status.Text = "Waiting..."
Status.TextColor3 = Color3.fromRGB(150, 150, 150)
Status.TextSize = 12
Status.Parent = Main

-- [[ LOGIQUE ]] --

GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(LootLabsLink)
    Status.Text = "Lien copié ! (Paste in browser)"
    Status.TextColor3 = Color3.fromRGB(255, 255, 0)
end)

VerifyBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text == CorrectKey then
        Status.Text = "✅ Clé valide ! Chargement..."
        Status.TextColor3 = Color3.fromRGB(0, 255, 0)
        
        -- Récupération du script sur GitHub
        local success, code = pcall(function()
            return game:HttpGet(GithubURL)
        end)
        
        if success and code ~= "" then
            task.wait(0.5)
            ScreenGui:Destroy() -- On ferme l'interface de clé
            
            -- ON LANCE LE VRAI V72
            local func = loadstring(code)
            if func then
                func()
            else
                warn("Erreur de syntaxe sur GitHub")
            end
        else
            Status.Text = "❌ Erreur GitHub (Dépôt Privé ?)"
            Status.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    else
        Status.Text = "❌ Clé invalide !"
        Status.TextColor3 = Color3.fromRGB(255, 0, 0)
        KeyBox.Text = ""
    end
end)
