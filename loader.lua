local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍌 BANANA HUB | V70 CLASSIC",
   LoadingTitle = "Banana Hub V70",
   LoadingSubtitle = "by Bananashifty",
   ConfigurationSaving = { Enabled = false },
   KeySystem = true, -- On active le système de clé intégré
   KeySettings = {
      Title = "Key System",
      Subtitle = "Get key from Discord",
      Note = "Link: discord.gg/bananahub", -- TON LIEN ICI
      FileName = "BananaKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"BANANA_V70_SECRET"} -- TA CLÉ
   }
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateButton({
   Name = "🚀 LOAD V70 MENU (BLACK)",
   Callback = function()
       Rayfield:Notify({Title = "Loading...", Content = "Executing V70 Source from GitHub", Duration = 3})
       
       -- Correction de l'erreur Destroy : On ferme proprement Rayfield
       Rayfield:Destroy() 
       
       -- On force le chargement du menu noir
       local success, err = pcall(function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Bananashifty/v70_source.lua/refs/heads/main/v70_source.lua?t=" .. tick()))()
       end)
       
       if not success then
           warn("Erreur de chargement : " .. tostring(err))
       end
   end,
})

Tab:CreateButton({
   Name = "🔗 Copy Discord Link",
   Callback = function()
       setclipboard("https://discord.gg/bananahub")
       Rayfield:Notify({Title = "Copied!", Content = "Discord link copied to clipboard.", Duration = 3})
   end,
})
