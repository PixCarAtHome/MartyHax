getgenv().Debuff = false
getgenv().Judgement = false
getgenv().Roundhouse = false
getgenv().Uppercut = false
getgenv().Bonk = false
getgenv().Throw = false
getgenv().DoubleStrike = false
getgenv().DownwardStrike = false
getgenv().CrushingStrike = false
getgenv().FrontThrust = false
getgenv().Shatter = false
getgenv().Dodge = false

local remoteFolder = game:GetService("ReplicatedStorage").Events

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Martyhax V1 for Lore Game", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Remotes", 9771733052)
local section1 = page:addSection("Axe")
local section2 = page:addSection("Mace")
local section3 = page:addSection("Sword")
local section4 = page:addSection("Zweihander")
local section5 = page:addSection("Universal")

section1:addToggle(
    "Shaman",
    nil,
    function(bool)
        getgenv().Debuff = bool
        if bool == true then
            Shaman()
        end
    end
)

section1:addToggle(
    "Judgement",
    nil,
    function(bool)
        getgenv().Judgement = bool
        if bool == true then
            Jdgmnt()
        end
    end
)

section1:addToggle(
    "Roundhouse",
    nil,
    function(bool)
        getgenv().Roundhouse = bool
        if bool == true then
            Rndhse()
        end
    end
)

section1:addToggle(
    "Uppercut",
    nil,
    function(bool)
        getgenv().Uppercut = bool
        if bool == true then
            Uprcut()
        end
    end
)

section2:addToggle(
    "Bonk",
    nil,
    function(bool)
        getgenv().Bonk = bool
        if bool == true then
            Bnk()
        end
    end
)

section2:addToggle(
    "Shield Throw",
    nil,
    function(bool)
        getgenv().Throw = bool
        if bool == true then
            MOHThrow()
        end
    end
)

section3:addToggle(
    "Double Strike",
    nil,
    function(bool)
        getgenv().DoubleStrike = bool
        if bool == true then
            DStk()
        end
    end
)

section3:addToggle(
    "Downward Strike",
    nil,
    function(bool)
        getgenv().DownwardStrike = bool
        if bool == true then
            DWStk()
        end
    end
)

section4:addToggle(
    "Crushing Strike",
    nil,
    function(bool)
        getgenv().CrushingStrike = bool
        if bool == true then
            CrStk()
        end
    end
)

section4:addToggle(
    "Front Thrust",
    nil,
    function(bool)
        getgenv().FrontThrust = bool
        if bool == true then
            FrThrust()
        end
    end
)

section4:addToggle(
    "Shatter",
    nil,
    function(bool)
        getgenv().Shatter = bool
        if bool == true then
            Shtr()
        end
    end
)

section5:addToggle(
    "I-Frame",
    nil,
    function(bool)
        getgenv().Dodge = bool
        if bool == true then
            iFrame()
        end
    end
)

local setting = venyx:addPage("Settings", 9771733052)
local colors = setting:addSection("Colors")
local stngs = setting:addSection("Settings")

for setting, color in pairs(themes) do -- all in one theme changer, i know, im cool
    colors:addColorPicker(
        setting,
        color,
        function(color3)
            venyx:setTheme(setting, color3)
        end
    )
end

stngs:addKeybind(
    "Toggle GUI",
    Enum.KeyCode.LeftBracket,
    function()
        venyx:toggle()
    end,
    function()
    end
)

-- load
venyx:SelectPage(venyx.pages[1], true)

function Shaman()
    spawn(
        function()
            while Debuff == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "Judgement",
                    [4] = CFrame.new(),
                    [5] = 2
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function Jdgmnt()
    spawn(
        function()
            while Judgement == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "Judgement",
                    [4] = CFrame.new(),
                    [5] = 1
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function Rndhse()
    spawn(
        function()
            while Roundhouse == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "LowRoundhouse",
                    [4] = CFrame.new()
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function Uprcut()
    spawn(
        function()
            while Uppercut == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "Uppercut",
                    [4] = CFrame.new()
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function Bnk()
    spawn(
        function()
            while Bonk == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "Bonk",
                    [4] = CFrame.new(),
                    [5] = true
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function MOHThrow()
    spawn(
        function()
            while Throw == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "HeavyAttack2",
                    [4] = CFrame.new(),
                    [5] = 0.5
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function DStk()
    spawn(
        function()
            while DoubleStrike == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "DoubleStrike",
                    [4] = CFrame.new(),
                    [5] = true
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function DWStk()
    spawn(
        function()
            while DownwardStrike == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "DownwardStrike",
                    [4] = CFrame.new()
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function CrStk()
    spawn(
        function()
            while CrushingStrike == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "CrushingStrike",
                    [4] = CFrame.new()
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function FrThrust()
    spawn(
        function()
            while FrontThrust == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "FrontThrust",
                    [4] = CFrame.new()
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function Shtr()
    spawn(
        function()
            while Shatter == true do
                local args = {
                    [1] = "custom",
                    [2] = "server2",
                    [3] = "Shatter",
                    [4] = CFrame.new(),
                    [5] = 1
                }

                remoteFolder.ClientRequest:FireServer(unpack(args))
                wait(0.5)
            end
        end
    )
end

function iFrame()
    spawn(
        function()
            while Dodge == true do
                local args = {
                    [1] = "DodgeSound"
                }

                game:GetService("Players").LocalPlayer.Character.StarterCharacter.Character.Function:FireServer(
                    unpack(args)
                )
                wait(0.01)
            end
        end
    )
end
