local player = game.Players.Teckuxa
local pgui = player:FindFirstChild("PlayerGui")
if not pgui then wait(1) pgui = player:FindFirstChild("PlayerGui") end

-- 1. Create the ScreenGui
local sg = Instance.new("ScreenGui")
sg.Name = "C00lDevMenu"
sg.Parent = pgui

-- 2. The Main Centered Frame
local mainFrame = Instance.new("Frame")
mainFrame.Visible = false -- Hidden by default
mainFrame.Size = UDim2.new(0, 400, 0, 300) -- Large size
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150) -- Perfect center
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderColor3 = Color3.new(1, 0, 0) -- Bright Red
mainFrame.BorderSizePixel = 8
mainFrame.Parent = sg

-- 3. The Toggle Button
local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0, 100, 0, 30)
toggle.Position = UDim2.new(0, 10, 0, 10)
toggle.Text = "OPEN MENU"
toggle.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.BorderColor3 = Color3.new(1, 0, 0)
toggle.Parent = sg -- Parented to ScreenGui, not the frame!

toggle.MouseButton1Click:connect(function()
    mainFrame.Visible = not mainFrame.Visible
    if mainFrame.Visible then
        toggle.Text = "CLOSE"
    else
        toggle.Text = "OPEN MENU"
    end
end)

-- Helper function
local function addBigBtn(text, yPos, color, func)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -40, 0, 50) -- Big chunky buttons
    b.Position = UDim2.new(0, 20, 0, yPos)
    b.Text = text
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.new(1, 1, 1)
    b.FontSize = "Size18"
    b.Parent = mainFrame
    b.MouseButton1Click:connect(func)
end

-- 4. Adding the functions
addBigBtn("DEAL 1 DAMAGE", 20, Color3.new(0.4, 0, 0), function()
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.Health = player.Character.Humanoid.Health - 1
    end
end)

addBigBtn("EMERGENCY ANNOUNCE", 90, Color3.new(0, 0, 0.5), function()
    local m = Instance.new("Message", workspace)
    m.Text = "Emergency announce has been activated, EMERGENCY EMERGENCY!!1!!!11!1!1!"
    wait(2)
    m:Remove()
end)

addBigBtn("SPAWN TEST PART", 160, Color3.new(0.2, 0.2, 0.2), function()
    local p = Instance.new("Part", workspace)
    p.Size = Vector3.new(4, 4, 4)
    if player.Character and player.Character:FindFirstChild("Torso") then
        p.CFrame = player.Character.Torso.CFrame * CFrame.new(0, 0, -10)
    end
end)