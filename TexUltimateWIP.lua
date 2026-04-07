-- Console v4.0 // 2012 STABILITY + CUSTOM ANNOUNCES
local player = game.Players.Teckuxa -- Changed to LocalPlayer for universal use
local pgui = player:FindFirstChild("PlayerGui")
if not pgui then wait(1) pgui = player:FindFirstChild("PlayerGui") end

local sg = Instance.new("ScreenGui", pgui)
sg.Name = "c00l_Ultimate"

-- Toggle Button
local toggle = Instance.new("TextButton", sg)
toggle.Size = UDim2.new(0, 120, 0, 35)
toggle.Position = UDim2.new(0, 10, 0, 10)
toggle.Text = "[ OPEN CONSOLE ]"
toggle.BackgroundColor3 = Color3.new(0, 0, 0)
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.BorderColor3 = Color3.new(1, 0, 0)
toggle.BorderSizePixel = 2

-- Main Frame
local mainFrame = Instance.new("Frame", sg)
mainFrame.Visible = false
mainFrame.Size = UDim2.new(0, 820, 0, 600) 
mainFrame.Position = UDim2.new(0.5, -410, 0.5, -300)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderColor3 = Color3.new(1, 0, 0)
mainFrame.BorderSizePixel = 5

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "C00L CONSOLE v4.0"
title.TextColor3 = Color3.new(1, 0, 0)
title.BackgroundTransparency = 1
title.FontSize = "Size24"

toggle.MouseButton1Click:connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- --- CUSTOM ANNOUNCE BOX (Added for 2012) ---
local annBox = Instance.new("TextBox", mainFrame)
annBox.Size = UDim2.new(0, 380, 0, 40)
annBox.Position = UDim2.new(0, 20, 0, 540)
annBox.Text = "Type Custom Message Here..."
annBox.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
annBox.TextColor3 = Color3.new(1, 1, 1)
annBox.BorderColor3 = Color3.new(1, 0, 0)

local annBtn = Instance.new("TextButton", mainFrame)
annBtn.Size = UDim2.new(0, 100, 0, 40)
annBtn.Position = UDim2.new(0, 410, 0, 540)
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

-- --- COLUMN 1: UTILITY ---
addBtn("Damage Tester", 20, 70, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid:TakeDamage(5) end
end)
addBtn("Respawn", 20, 120, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid.Health = 0 end
end)
addBtn("Emergency Announce", 20, 170, function()
    local m = Instance.new("Message", workspace)
    m.Text = "EMERGENCY EMERGENCY!!!1!1!!1!"
    wait(2) m:Remove()
end)

-- --- COLUMN 2: LIGHTING/PHYSICS ---
addBtn("Midnight", 220, 70, function() game.Lighting.TimeOfDay = "00:00:00" end)
addBtn("Noon", 220, 120, function() game.Lighting.TimeOfDay = "12:00:00" end)
addBtn("Fix Lighting", 220, 170, function() 
    game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5) 
    game.Lighting.Brightness = 1
end)

-- --- COLUMN 3: TOOLS & GEARS (Enhanced for 2012) ---
addBtn("Stamper Tools", 420, 70, function()
    for i=1,4 do Instance.new("HopperBin", player.Backpack).BinType = i end
end)

addBtn("Classic Rocket", 420, 120, function()
    -- Some 2012 clients allow inserting by ID, but manual creation is safer
    local t = Instance.new("Tool")
    t.Name = "RocketLauncher"
    -- Note: This requires the RocketLauncher script to exist in your game files
    t.Parent = player.Backpack
end)

addBtn("Clear Workspace", 420, 170, function()
    for _, v in pairs(workspace:GetChildren()) do
        if (v:IsA("BasePart") or v:IsA("Model")) and v.Name ~= "Terrain" and v.Name ~= "Camera" and v ~= player.Character then
            v:Remove()
        end
    end
end)

-- --- COLUMN 4: CHARACTER ---
addBtn("Super Speed", 620, 70, function()
    if player.Character and player.Character.Humanoid then player.Character.Humanoid.WalkSpeed = 100 end
end)
addBtn("Reset Character", 620, 120, function()
    if player.Character then
        player.Character.Humanoid.WalkSpeed = 16
        if player.Character:FindFirstChild("Sparkles") then player.Character.Sparkles:Remove() end
    end
end)