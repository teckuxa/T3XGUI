local player = game.Players.Teckuxa
local pgui = player:FindFirstChild("PlayerGui")
if not pgui then wait(1) pgui = player:FindFirstChild("PlayerGui") end

-- 1. Create the ScreenGui
local sg = Instance.new("ScreenGui")
sg.Name = "c00l_Dev_Logic"
sg.Parent = pgui

-- 2. The Toggle Button
local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0, 120, 0, 35)
toggle.Position = UDim2.new(0, 10, 0, 10)
toggle.Text = "[ SHOW MENU ]"
toggle.BackgroundColor3 = Color3.new(0, 0, 0)
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.BorderColor3 = Color3.new(1, 0, 0)
toggle.BorderSizePixel = 2
toggle.Parent = sg

-- 3. The Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Visible = false
mainFrame.Size = UDim2.new(0, 600, 0, 450) -- Massive size
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -225)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderColor3 = Color3.new(1, 0, 0)
mainFrame.BorderSizePixel = 5
mainFrame.Parent = sg

-- Title Label
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "TEXGUI CONSOLE v1.0"
title.TextColor3 = Color3.new(1, 0, 0)
title.BackgroundTransparency = 1
title.FontSize = "Size24"
title.Parent = mainFrame

-- Toggle Script
toggle.MouseButton1Click:connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- Helper to make styled buttons
local function addC00lBtn(text, pos, func)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0, 170, 0, 40)
    b.Position = pos
    b.Text = text
    b.BackgroundColor3 = Color3.new(0, 0, 0)
    b.TextColor3 = Color3.new(1, 1, 1) -- White font
    b.BorderColor3 = Color3.new(1, 0, 0) -- Red outline
    b.BorderSizePixel = 2
    b.FontSize = "Size14"
    b.Parent = mainFrame
    b.MouseButton1Click:connect(func)
end

-- --- COMMANDS ---

-- 1. Damage (Column 1)
addC00lBtn("Self Damage", UDim2.new(0, 20, 0, 60), function()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid:TakeDamage(1)
    end
end)

-- 2. Announce (Column 1)
addC00lBtn("Emergency Ann", UDim2.new(0, 20, 0, 110), function()
    local m = Instance.new("Message", workspace)
    m.Text = "TECKUXA SAYS: EMERGENCY EMERGENCY!!!!"
    wait(2)
    m:Remove()
end)

-- 3. Spawn Part (Column 1)
addC00lBtn("Spawn Cube", UDim2.new(0, 20, 0, 160), function()
    local p = Instance.new("Part", workspace)
    p.Size = Vector3.new(10, 10, 10)
    p.BrickColor = BrickColor.new("Bright red")
    if player.Character and player.Character:FindFirstChild("Torso") then
        p.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, -15)
    end
end)

-- 4. DISCO MODE (Column 2)
local discoOn = false
addC00lBtn("Disco Mode", UDim2.new(0, 210, 0, 60), function()
    discoOn = not discoOn
    while discoOn do
        game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
        wait(0.1) -- Slightly slower so it doesn't crash the 2010 client
    end
    game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5) -- Reset
end)

-- 5. KILL ALL
addC00lBtn("Clear Workspace", UDim2.new(0, 210, 0, 110), function()
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Terrain" then
            v:Remove()
        end
    end
end)
