-- T3X Console v3.0 // THE DEFINITIVE EDITION
local player = game.Players.Teckuxa
local pgui = player:FindFirstChild("PlayerGui")
if not pgui then wait(1) pgui = player:FindFirstChild("PlayerGui") end

local sg = Instance.new("ScreenGui", pgui)
sg.Name = "c00l_Ultimate"

-- Toggle Button
local toggle = Instance.new("TextButton", sg)
toggle.Size = UDim2.new(0, 120, 0, 35)
toggle.Position = UDim2.new(0, 10, 0, 10)
toggle.Text = "[ OPEN T3X ]"
toggle.BackgroundColor3 = Color3.new(0, 0, 0)
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.BorderColor3 = Color3.new(1, 0, 0)
toggle.BorderSizePixel = 2

-- Main Frame
local mainFrame = Instance.new("Frame", sg)
mainFrame.Visible = false
mainFrame.Size = UDim2.new(0, 820, 0, 650) 
mainFrame.Position = UDim2.new(0.5, -400, 0.5, -250)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderColor3 = Color3.new(1, 0, 0)
mainFrame.BorderSizePixel = 5

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "T3X GUI"
title.TextColor3 = Color3.new(1, 0, 0)
title.BackgroundTransparency = 1
title.FontSize = "Size24"

toggle.MouseButton1Click:connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- --- CUSTOM ANNOUNCE BOX (Added for 2012) ---
local annBox = Instance.new("TextBox", mainFrame)
annBox.Size = UDim2.new(0, 380, 0, 40)
annBox.Position = UDim2.new(0, 20, 0, 600)
annBox.Text = "Type Custom Message Here..."
annBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
annBox.TextColor3 = Color3.new(1, 1, 1)
annBox.BorderColor3 = Color3.new(1, 0, 0)

local annBtn = Instance.new("TextButton", mainFrame)
annBtn.Size = UDim2.new(0, 100, 0, 40)
annBtn.Position = UDim2.new(0, 410, 0, 600)
annBtn.Text = "SEND"
annBtn.BackgroundColor3 = Color3.new(0, 0, 0)
annBtn.TextColor3 = Color3.new(1, 1, 1)
annBtn.BorderColor3 = Color3.new(1, 0, 0)

annBtn.MouseButton1Click:connect(function()
    local m = Instance.new("Message", workspace)
    m.Text = annBox.Text
    wait(3)
    m:Remove()
end)

local function addBtn(text, x, y, func)
    local b = Instance.new("TextButton", mainFrame)
    b.Size = UDim2.new(0, 180, 0, 40)
    b.Position = UDim2.new(0, x, 0, y)
    b.Text = text
    b.BackgroundColor3 = Color3.new(0, 0, 0)
    b.TextColor3 = Color3.new(1, 1, 1)
    b.BorderColor3 = Color3.new(1, 0, 0)
    b.BorderSizePixel = 2
    b.MouseButton1Click:connect(func)
end

local function addBtn(text, x, y, func)
    local b = Instance.new("TextButton", mainFrame)
    b.Size = UDim2.new(0, 180, 0, 40)
    b.Position = UDim2.new(0, x, 0, y)
    b.Text = text
    b.BackgroundColor3 = Color3.new(0, 0, 0)
    b.TextColor3 = Color3.new(1, 1, 1)
    b.BorderColor3 = Color3.new(1, 0, 0)
    b.BorderSizePixel = 2
    b.MouseButton1Click:connect(func)
end

-- COLUMN 1: UTILITY (X = 20)
addBtn("Damage Tester", 20, 70, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid:TakeDamage(5) end
end)
addBtn("Respawn", 20, 120, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid.Health = 0 end
end)
addBtn("Emergency Announce", 20, 170, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: EMERGENCY EMERGENCY!!!1!1!!1!"
    wait(2) m:Remove()
end)
addBtn("Joined Announce", 20, 220, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X HAS JOINED"
    wait(2) m:Remove()
end)
addBtn("SomethingFunny Announce", 20, 270, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: Yo bro wanna see smth funny?"
    wait(2) m:Remove()
end)
addBtn("Yes Announce", 20, 320, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: Yes"
    wait(2) m:Remove()
end)
addBtn("No Announce", 20, 370, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: No"
    wait(2) m:Remove()
end)
addBtn("What Announce", 20, 420, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: What"
    wait(2) m:Remove()
end)
addBtn("ANNOUNCE T3X", 20, 470, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3XT3X"
    wait(2) m:Remove()
end)
addBtn("ANNOUNCE T3X TEAM", 20, 520, function()
    local m = Instance.new("Message", workspace)
    m.Text = "TEAM T3X JOIN TODAY!"
    wait(2) m:Remove()
end)
addBtn("ANNOUNCE EPILEPSY WARNING", 20, 520, function()
    local m = Instance.new("Message", workspace)
    m.Text = "T3X SAYS: EPILEPSY WARNING"
    wait(2) m:Remove()
end)
-- COLUMN 2: PHYSICS (X = 220)
addBtn("Low Gravity (!!!NO WORK!!!)", 220, 70, function() workspace.Gravity = 50 end)
addBtn("Normal Gravity(!!!ALSO NO WORK!!!)", 220, 120, function() workspace.Gravity = 196.2 end)
addBtn("Midnight", 220, 170, function() game.Lighting.TimeOfDay = "00:00:00" end)
addBtn("Noon", 220, 220, function() game.Lighting.TimeOfDay = "12:00:00" end)
addBtn("BRIGHT LIGHTING", 220, 270, function() game.Lighting.Ambient = Color3.new(255/255, 255/255, 255/255) end)
addBtn("DARK LIGHTING", 220, 320, function() game.Lighting.Ambient = Color3.new(0/255, 0/255, 0/255) end)
addBtn("RED/T3X LIGHTING", 220, 370, function() game.Lighting.Ambient = Color3.new(255/255, 0/255, 0/255) end)
addBtn("GREEN LIGHTING", 220, 420, function() game.Lighting.Ambient = Color3.new(0/255, 255/255, 0/255) end)
addBtn("BLUE LIGHTING", 220, 470, function() game.Lighting.Ambient = Color3.new(0/255, 0/255, 255/255) end)
addBtn("FIX LIGHTING", 220, 520, function() game.Lighting.Ambient = Color3.new(144/255, 144/255, 144/255) end)
-- COLUMN 3: TOOLS (X = 420)
addBtn("Give Stamper Tools", 420, 70, function()
    for i=1,4 do 
        local h = Instance.new("HopperBin", player.Backpack)
        h.BinType = i 
    end
end)
addBtn("Disco Lights Switch", 420, 120, function()
    _G.Disco = not _G.Disco
    while _G.Disco do
        game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
        wait(0.1)
    end
end)
addBtn("Serv Flicker Switch", 420, 170, function()
    flickerOn = not flickerOn
    while flickerOn do
        game.Lighting.TimeOfDay=math.random(0,23)..":00:00"
        wait(0.1)
    end
    game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
end)
addBtn("Spawn SMOL cube", 420, 220, function()
local p = Instance.new("Part", workspace)
    p.Size = Vector3.new(4, 4, 4)
    if player.Character and player.Character:FindFirstChild("Torso") then
        p.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, -10)
    end
end)
addBtn("Spawn BIG cube", 420, 270, function()
    local p = Instance.new("Part", workspace)
    p.Size = Vector3.new(10, 10, 10)
    p.BrickColor = BrickColor.new("Bright red")
    if player.Character and player.Character:FindFirstChild("Torso") then
        p.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, -15)
    end
end)
addBtn("Clear Workspace", 420, 320, function()
    for _, v in pairs(workspace:GetChildren()) do
        -- Check if it's a Part, a Model, or a Script
        -- We make sure NOT to delete the Terrain, the Camera, or your Character
        if (v:IsA("BasePart") or v:IsA("Model") or v:IsA("Folder")) 
            and v.Name ~= "Terrain" 
            and v.Name ~= "Camera" 
            and v ~= player.Character then
            
            v:Remove()
        end
    end
end)
-- COLUMN 4: CHARACTER (X = 620)
addBtn("Super Speed", 620, 70, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid.WalkSpeed = 100 end
end)
addBtn("Reset Speed", 620, 120, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid.WalkSpeed = 16 end
end)
addBtn("Add Sparkles", 620, 170, function()
    if player.Character and player.Character:FindFirstChild("Torso") then
        Instance.new("Sparkles", player.Character.Torso)
    end
end)