--T6stKidd's Vault Zero

if VaultZeroLoaded and VaultZeroLoaded == true then
    warn("Vault Zero is already running.")
    return
end
pcall(function() getgenv().VaultZeroLoaded = true end)
local VaultZero = Instance.new("ScreenGui")
VaultZero.Name = "VaultZero"
--//Type\\
local Type = Instance.new("Frame")
local Type_TextBox = Instance.new("TextBox")
local Type_Suggestions = Instance.new("TextLabel")
local Type_UICorner = Instance.new("UICorner")
local Type_UIStroke = Instance.new("UIStroke")
local Type_TextBox_Padding = Instance.new("UIPadding")
local Type_Suggestions_Padding = Instance.new("UIPadding")
--//Console\\
local Console = Instance.new("Frame")
local Console_UICorner = Instance.new("UICorner")
local Console_UIStroke = Instance.new("UIStroke")
local Console_ScrollingFrame = Instance.new("ScrollingFrame")
local Console_ScrollingFrame_Template = Instance.new("TextLabel")
local Console_ScrollingFrame_UIListLayout = Instance.new("UIListLayout")

--//Type Properties\\
Type.Size = UDim2.new(0.382, 0,0.052, 0)
Type.Position = UDim2.new(0.613, 0,0.94, 0)
Type.BackgroundTransparency = 0.4
Type.BackgroundColor3 = Color3.new(0,0,0)
Type.Name = "Type"
Type.ZIndex = 2
Type.Parent = VaultZero
--
Type_TextBox.Name = "TextBox"
Type_TextBox.Position = UDim2.new(0, 0,0.233, 0)
Type_TextBox.Size = UDim2.new(1, 0,0.513, 0)
Type_TextBox.Font = Enum.Font.RobotoMono
Type_TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Type_TextBox.PlaceholderText = "> Vault Zero"
Type_TextBox.TextColor3 = Color3.new(1,1,1)
Type_TextBox.TextScaled = true
Type_TextBox.Text = ""
Type_TextBox.TextSize = 14
Type_TextBox.TextStrokeTransparency = 1
Type_TextBox.BackgroundTransparency = 1
Type_TextBox.TextXAlignment = Enum.TextXAlignment.Left
Type_TextBox.TextWrapped = true
Type_TextBox.ZIndex = 2
Type_TextBox.Parent = Type
--
Type_Suggestions.Name = "Suggestions"
Type_Suggestions.Text = ""
Type_Suggestions.Font = Enum.Font.RobotoMono
Type_Suggestions.TextColor3 = Color3.new(1,1,1)
Type_Suggestions.BackgroundTransparency = 1
Type_Suggestions.TextStrokeTransparency = 1
Type_Suggestions.TextScaled = true
Type_Suggestions.TextWrapped = true
Type_Suggestions.Position = UDim2.new(0, 0,0.233, 0)
Type_Suggestions.Size = UDim2.new(1, 0,0.513, 0)
Type_Suggestions.ZIndex = 2
Type_Suggestions.Parent = Type
--
Type_UICorner.CornerRadius = UDim.new(0,4)
Type_UICorner.Parent = Type
--
Type_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Type_UIStroke.Color = Color3.fromRGB(159, 159, 159)
Type_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
Type_UIStroke.Thickness = 1
Type_UIStroke.Enabled = true
Type_UIStroke.Parent = Type
--
Type_TextBox_Padding.PaddingLeft = UDim.new(0.03,0)
Type_TextBox_Padding.PaddingBottom = UDim.new(0,0)
Type_TextBox_Padding.PaddingRight = UDim.new(0,0)
Type_TextBox_Padding.PaddingTop = UDim.new(0,0)
Type_TextBox_Padding.Parent = Type_TextBox
--
Type_Suggestions_Padding = Type_TextBox_Padding:Clone()
Type_Suggestions_Padding.Parent = Type_Suggestions

--//Console Properties\\
Console.Name = "Console"
Console.Size = UDim2.new(0.382, 0,0.368, 0)
Console.Position = UDim2.new(0.613, 0,0.562, 0)
Console.ZIndex = 2
Console.BackgroundColor3 = Color3.new(0,0,0)
Console.BackgroundTransparency = 0.4
Console.BackgroundColor3 = Color3.new(0,0,0)
Console.Parent = VaultZero
--
Console_UICorner.CornerRadius = UDim.new(0,4)
Console_UICorner.Parent = Console
--
Console_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Console_UIStroke.Color = Color3.fromRGB(159,159,159)
Console_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
Console_UIStroke.Thickness = 1
Console_UIStroke.Enabled = true
Console_UIStroke.Parent = Console
--
Console_ScrollingFrame.BackgroundTransparency = 1
Console_ScrollingFrame.Position = UDim2.new(0.015, 0,0.033, 0)
Console_ScrollingFrame.Size = UDim2.new(0.974, 0,0.934, 0)
Console_ScrollingFrame.CanvasSize = UDim2.new(0,0,2,0)
Console_ScrollingFrame.Parent = Console
--
Console_ScrollingFrame_UIListLayout.Padding = UDim.new(0.01,0)
Console_ScrollingFrame_UIListLayout.FillDirection = Enum.FillDirection.Vertical
Console_ScrollingFrame_UIListLayout.Parent = Console_ScrollingFrame
--
Console_ScrollingFrame_Template.Name = "Template"
Console_ScrollingFrame_Template.BackgroundTransparency = 1
Console_ScrollingFrame_Template.Size = UDim2.new(0.98, 0,0.033, 0)
Console_ScrollingFrame_Template.TextColor3 = Color3.new(1, 1, 1)
Console_ScrollingFrame_Template.ZIndex = 2
Console_ScrollingFrame_Template.TextXAlignment = Enum.TextXAlignment.Left
Console_ScrollingFrame_Template.TextStrokeTransparency = 1
Console_ScrollingFrame_Template.TextScaled = true
Console_ScrollingFrame_Template.Font = Enum.Font.RobotoMono
Console_ScrollingFrame_Template.TextWrapped = true
Console_ScrollingFrame_Template.Visible = false
Console_ScrollingFrame_Template.Parent = Console_ScrollingFrame
--
VaultZero.Parent = game.CoreGui

function ShowLine(Text)
    local Line = Console_ScrollingFrame_Template:Clone()
    Line.Text = Text
    Line.Parent = Console_ScrollingFrame
    Line.Visible = true
end

-- Type_TextBox.Changed:Connect(function()
-- 	Type_TextBox.Text = "> "..Type_TextBox.Text:sub(3,#Type_TextBox.Text)
-- 	if Type_TextBox.CursorPosition <= 2 then
-- 		Type_TextBox.CursorPosition = 3
-- 	end
-- end)

Type_TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed == true then
        ExecuteCommand(Type_TextBox.Text)
        Type_TextBox.Text = ""
    end
end)

---==//INFO\\==---
--[[
Command Arguments
PLAYER -- Player Name
BOOL - BOOLEAN
NUMBER - number
INT - integer number (a number without decimals)
STRING - a string
]]
CommandArgTypes = {
    ["PLAYER"] = function(Text)
        if typeof(Text) == "Instance" and Text:IsA("Player") then
            return Text
        end
        if tonumber(Text) ~= nil then
            return nil
        end
        if typeof(Text) == "string" then
            local names = {}
            for _,plr in Players:GetPlayers() do
                local data = {}
                data.name = plr.name
                data.display = plr.DisplayName
                data.obj = plr
                table.insert(names,data)
                if data.name:lower() == Text:lower() then -- check if text matches username
                    return data.obj
                elseif data.display:lower() == Text:lower() then -- check if text matches display name
                    return data.obj
                end
            end
            -- if it reaches here then its probably a shortened name
            for _,data in names do
                local subName = data.name:sub(1,#Text)
                local subDisplay = data.display:sub(1,#Text)
                if Text:lower() == subName:lower() or Text:lower() == subDisplay:lower() then
                    return data.obj
                end
            end
        end
        return nil
    end,
    ["BOOL"] = function(Value)
        if typeof(Value) == "string" then
            if Value:lower() == "true" then
                return true
            elseif Value:lower() == "false" then
                return false
            end 
        end
        return nil
    end,
    ["NUMBER"] = function(Value)
        if tonumber(Value) then
            return Value
        else
            return nil
        end
    end,
    ["STRING"] = function(Text)
        if tostring(Text) then
            return tostring(Text)
        else
            return nil
        end
    end
}

---==//Settings\\==---
MenuKeybind = Enum.KeyCode.Backquote
---==//Globals\\==---
local uis = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
PlaceId, JobId = game.PlaceId, game.JobId
local plr = Players.LocalPlayer
local CMDIDs = {}
local CMDDictionary = {}
local CommandsVariables = {}
---==//Code\\==---
local CommandsRuntime = {}
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)

function GetCommand(Text)
    for _,Command in CMDDictionary do
        if Command.Id == Text then
            return Command
        elseif table.find(Command.Alternatives,Text) then
            return Command
        end
    end
end

function ExecuteCommand(Text)
    -- local CommandName = SplitText[1]
    -- local CommandID = CMDDictionary[CommandName].Id
    -- local CommandData = CMDIDs[CommandID]
    local SplitText = string.split(Text,"")
    local Args = {}
    
    local QuotationMarks = {"'",'"'}
    local QM_Prefix = {BOOL = false,Index = nil} -- Quotation Marks Prefix
    local QM_Suffix = {BOOL = false,Index = nil} -- Quotation Marks Suffix
    local QM_Both = false
    local WordStartIndex = 1
    for i=1,#Text do
        if table.find(QuotationMarks,SplitText[i]) then
            if QM_Prefix.BOOL == false then
                QM_Prefix.BOOL = true
                QM_Prefix.Index = i
            elseif QM_Prefix.BOOL == true and QM_Suffix.BOOL == false then
                QM_Suffix.BOOL = true
                QM_Suffix.Index = i
                QM_Both = true
                if QM_Prefix.BOOL == true and QM_Suffix.BOOL == true and i == #Text then
                    table.insert(Args,string.sub(Text,WordStartIndex+1,i-1))
                    WordStartIndex = i+1
                end
            elseif QM_Prefix.BOOL == true and QM_Suffix.BOOL == true then
                QM_Prefix.BOOL = false
                QM_Prefix.Index = nil
                QM_Suffix.BOOL = false
                QM_Suffix.Index = nil
                QM_Both = false
            end
        end
        if SplitText[i] == " " and (QM_Both or (QM_Prefix.BOOL == false and QM_Prefix.BOOL == false)) and SplitText[i+1] ~= " " then
            if QM_Both == true then
                table.insert(Args,string.sub(Text,WordStartIndex+1,i-2))
                WordStartIndex = i+1
            else
                table.insert(Args,string.sub(Text,WordStartIndex,i-1))
                WordStartIndex = i+1
            end
        elseif i == #Text then
            table.insert(Args,string.sub(Text,WordStartIndex,i))
            WordStartIndex = i+1
        end
    end
    if not Args or Args[1] == nil then
        warn("YOU INSIGNIFICANT FUCK")
        return
    end
    local CommandName = Args[1]:lower()
    if CommandName == "debug-destroy" then
        game.CoreGui:FindFirstChild("VaultZero"):Destroy()
        pcall(function() getgenv().VaultZeroLoaded = false end)
        return
    end
    local Command = GetCommand(CommandName)
    if not Command then return end
    local CommandId = CMDIDs[Command.Id]
    local CommandArgs = Command.Args
    local ValidatedArgs = {}
    for index,value in CommandArgs do
        local Type = CommandArgTypes[value]
        local Text = Args[index+1]
        if Type == nil then
            warn("YOU SERVE ZERO PURPOSE")
        end
        NewValue = Type(Text)
        table.insert(ValidatedArgs,NewValue)
    end
    Command.Function(ValidatedArgs)
end

function RegisterCMDID(Data)
    if CMDIDs[Data.ID] ~= nil then
        CMDIDs[Data.ID] = Data
    end
end

function RegisterCMDDictionary(Data)
    --[[
    Data.ToggleCommand = [BOOL]
    Data.Name = [STRING]
    Data.Alternatives = [ARRAY] - all alternate names of this command
    Data.Args = [ARRAY] - Example {"PLAYER","BOOL","NUMBER"}
    Data.Id = [STRING]
    ]]
    CMDDictionary[Data.Name] = Data
end

function addCMD(Data)
    
    --[[
    Data.ToggleCommand = [BOOL]|NIL - false - Turn Off | true - Turn on | nil - Not a Toggleable Command
    Data.Name = [STRING]
    Data.Alternatives = [ARRAY] - all alternate names of this command
    Data.Args = [ARRAY] - Example {"PLAYER","BOOL","NUMBER"}
    Data.Id = [STRING]
    Data.Function = [FUNCTION]
    ]]
    --[[
    if Data.ToggleCommand == true then function type should be table
    Table[1] = ToggleCommandEnable
    Table[2] = ToggleCommandDisable
    ]]
    if Data.ToggleCommand == true or Data.ToggleCommand == false then
        local TempData = Data
        TempData.ToggleCommand = true
        RegisterCMDID(TempData)
    else
        local TempData = Data
        TempData.ToggleCommand = false
        RegisterCMDID(TempData)
    end
    RegisterCMDDictionary(Data)
end

function handleAction(actionName, inputState, _inputObject)
	if actionName == "VaultZeroFocus" and inputState == Enum.UserInputState.End then
		Type_TextBox:CaptureFocus()
	end
end

ContextActionService:BindAction("VaultZeroFocus", handleAction, false, MenuKeybind)

addCMD({
    ToggleCommand = nil,
    Name = "goto",
    Alternatives = {"tpto","tp"},
    Args = {"PLAYER"},
    Id = "goto",
    Function = function(Args)
        local char = plr.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then return end
        local TargetPlr = Args[1]
        if not TargetPlr then return end
        local TargetChar = TargetPlr.Character
        if not TargetChar then return end
        local TargetRoot = TargetChar:FindFirstChild("HumanoidRootPart")
        if not TargetRoot then return end
        char:PivotTo(TargetRoot.CFrame)
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "debug",
    Alternatives = {"test"},
    Args = {"PLAYER","NUMBER","STRING","BOOL"},
    Id = "debug",
    Function = function(Args)
        
    end
})
addCMD({
    ToggleCommand = true,
    Name = "invisible",
    Alternatives = {"invis","vanish","cloak","hide"},
    Args = {},
    Id = "invisible",
    Function = function(Args)
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if not plr.Character.PrimaryPart then return end
        local cf = plr.Character.PrimaryPart.CFrame
        local archivable = plr.Character.Archivable
        plr.Character.Archivable = true
        local clone = plr.Character:Clone()
        plr.Character:PivotTo(CFrame.new(0,31000000,0)) -- 31M in the air
        game:GetService("Workspace").CurrentCamera.CameraSubject = clone
        task.wait(0.15)
        plr.Character.Archivable = archivable
        plr.Character.PrimaryPart.Anchored = true
        local oldChar = plr.Character
        CommandsRuntime.Invisible = {Enabled = true,char = oldChar,fake = clone}
        plr.Character = clone
        clone:PivotTo(cf)
        for _,obj in clone:GetDescendants() do
            if obj:IsA("BasePart") then
                obj.Transparency = 0.6
            end
        end
        clone.Parent = workspace
        clone.Name = "CLONE"
    end
})
addCMD({
    ToggleCommand = false,
    Name = "visible",
    Alternatives = {"vis","appear","reveal","show"},
    Args = {},
    Id = "invisible",
    Function = function(Args)
        local char = CommandsRuntime.Invisible.char
        local fake = CommandsRuntime.Invisible.fake
        local cf = CommandsRuntime.Invisible.CFrame
        plr.Character = CommandsRuntime.Invisible.char
        char.PrimaryPart.Anchored = false
        char:PivotTo(fake.PrimaryPart.CFrame)
        game:GetService("Workspace").CurrentCamera.CameraSubject = char:FindFirstChildWhichIsA("Humanoid")
        fake:Destroy()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "print",
    Alternatives = {"log"},
    Args = {"STRING"},
    Id = "print",
    Function = function(Args)
        print(Args[1])
        ShowLine("[LOG] >  "..Args[1])
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "sit",
    Alternatives = {},
    Args = {},
    Id = "sit",
    Function = function(Args)
        plr.Character:FindFirstChildWhichIsA("Humanoid").Sit = true
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "rejoin",
    Alternatives = {"rj"},
    Args = {},
    Id = "rejoin",
    Function = function(Args)
        if #Players:GetPlayers() <= 1 then
		    Players.LocalPlayer:Kick("\nRejoining...")
		    wait()
		    TeleportService:Teleport(PlaceId, plr)
	    else
		    TeleportService:TeleportToPlaceInstance(PlaceId, JobId, plr)
    	end
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "dex",
    Alternatives = {"explorer"},
    Args = {"STRING"},
    Id = "dex",
    Function = function(Args)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "remotespy",
    Alternatives = {"rspy"},
    Args = {"STRING"},
    Id = "remotespy",
    Function = function(Args)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "infiniteyield",
    Alternatives = {"iy","infyield"},
    Args = {"STRING"},
    Id = "infiniteyield",
    Function = function(Args)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "infiniteyieldreborn",
    Alternatives = {"iyr","infyieldreborn","iyreborn"},
    Args = {"STRING"},
    Id = "infiniteyieldreborn",
    Function = function(Args)
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyXeleron/infiniteyield-reborn/refs/heads/master/source' or 'https://ryxeleron.github.io/storage/iyrbackup/legacy/master/source')))()
    end
})
