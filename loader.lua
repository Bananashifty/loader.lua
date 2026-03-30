local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V72",
   LoadingTitle = "Banana Hub Loading...",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false }
})

-- ON CRÉE L'ONGLET DE SÉCURITÉ
local Tab = Window:CreateTab("🔑 Key System", 4483362458)

Tab:CreateSection("Get your access key")

-- BOUTON POUR LE LIEN LOOTLABS
Tab:CreateButton({
   Name = "🔗 Get Key (LootLabs Link)",
   Callback = function()
       setclipboard("https://loot-link.com/s?kc5LObQK")
       Rayfield:Notify({Title = "Lien Copié !", Content = "Le lien LootLabs est dans ton presse-papier.", Duration = 5})
   end,
})

Tab:CreateSection("Enter access key")

-- ZONE POUR ENTRER LA CLÉ
Tab:CreateInput({
   Name = "Access Key",
   PlaceholderText = "Entrez la clé ici...",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
       if Text == "BANANA_V70_SECRET" then -- TA CLÉ
           Rayfield:Notify({Title = "Accès Autorisé !", Content = "Chargement du menu noir V70...", Duration = 5})
           
           task.wait(1)
           Rayfield:Destroy() -- On ferme proprement le loader Rayfield
           
           -- ON CHARGE TON CODE V70 (LE MENU NOIR)
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
       else
           Rayfield:Notify({Title = "Clé Invalide", Content = "Veuillez vérifier votre clé LootLabs.", Duration = 5})
       end
   end,
})

Tab:CreateSection("Discord")
Tab:CreateButton({
   Name = "Join Discord",
   Callback = function()
       setclipboard("discord.gg/bananahub")
   end,
})
