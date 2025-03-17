--T6stKidd's Vault Zero

-- 0.2 STATUS: RELEASED
--//Changes|Fixes\\--
--Fly command now works better
--//New\\--
--SetWaypoint Command
--GotoWaypoint Command
--DeleteWaypoint Command
--Orbit Command
--Unorbit Command
--Fling Command
--Spin Command
--Unspin Command
--AntiVoid Command
--UnAntiVoid Command

local plr = game.Players.LocalPlayer
if VaultZeroLoaded and VaultZeroLoaded == true then
    print("Vault Zero is already running")
    return
end
pcall(function() getgenv().VaultZeroLoaded = true end)
local VaultZero = Instance.new("ScreenGui")
VaultZero.Name = "VaultZero"
--//Type\\--
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
local Console_ScrollingFrame_Template_UISizeConstraint = Instance.new("UISizeConstraint")
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
Type_TextBox.ClearTextOnFocus = false
--
Type_Suggestions.Name = "Suggestions"
Type_Suggestions.Text = ""
Type_Suggestions.Font = Enum.Font.RobotoMono
Type_Suggestions.TextColor3 = Color3.new(0.85,0.85,0.85)
Type_Suggestions.BackgroundTransparency = 1
Type_Suggestions.TextStrokeTransparency = 1
Type_Suggestions.TextScaled = true
Type_Suggestions.TextWrapped = true
Type_Suggestions.TextXAlignment = Enum.TextXAlignment.Left
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
Console_ScrollingFrame_UIListLayout.Padding = UDim.new(0,1)
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

Console_ScrollingFrame_Template_UISizeConstraint.MinSize = Vector2.new(0,15)
Console_ScrollingFrame_Template_UISizeConstraint.MaxSize = Vector2.new(math.huge,15)
Console_ScrollingFrame_Template_UISizeConstraint.Parent = Console_ScrollingFrame_Template

--

VaultZero.Parent = game.CoreGui

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
        Text = tostring(Text)..""
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
                if tostring(Text):lower() == tostring(subName):lower() or tostring(Text):lower() == subDisplay:lower() then
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
    end,
    ["..."] = function()
        
    end
}

---==//Settings\\==---
MenuKeybind = Enum.KeyCode.Semicolon
CommandPrefix = {";",":","~","!"}
local KeepVaultZero = false -- does vault zero persist after being teleported to a different experience
---==//Globals\\==---
local TeleportService = game:GetService("TeleportService")
local ChatService = game:GetService("TextChatService")
local HttpService = game:GetService("HttpService")
local uis = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
Players = game:GetService("Players")
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local TeleportService = game:GetService("TeleportService")
PlaceId, JobId = game.PlaceId, game.JobId
local CMDIDs = {}
local CMDDictionary = {}
local CommandsVariables = {}
local VaultZeroLogs = ""
---==//Code\\==---
local TextLines = 0
local LastMsg = nil
local CommandsRuntime = {}

function CurrentTime(full)
    if full == nil then full = false end
    local now = os.time()
    local date = os.date("*t", now)
    
    if full then
        local dateString = string.format("%04d-%02d-%02d %02d:%02d:%02d", 
                                         date.year, date.month, date.day, 
                                         date.hour, date.min, date.sec)
        return dateString
    else
        local timeString = string.format("%02d:%02d:%02d", 
                                         date.hour, date.min, date.sec)
        return timeString
    end
end

function ShowLine(Text,NoTime)
    local ScrollDown = false
    local CanvasPos = Console_ScrollingFrame.CanvasPosition.Y
    local CanvasSize = Console_ScrollingFrame.CanvasSize.Y.Scale
    local ScrollAbsoluteSize = Console_ScrollingFrame.AbsoluteSize.Y
    local RangeMin = CanvasPos
    local RangeMax = CanvasPos+ScrollAbsoluteSize
    local Difference = (Console_ScrollingFrame.AbsoluteCanvasSize.Y-ScrollAbsoluteSize)-CanvasPos
    if Difference <= 2 then
        ScrollDown = true
    end
    if NoTime == nil then NoTime = false end
    if NoTime == false then
        local CTime = CurrentTime()
        CTime = "["..CTime.."] "
        Text = CTime..Text
    end
    local Line = Console_ScrollingFrame_Template:Clone()
    Line.Text = Text
    Line.Parent = Console_ScrollingFrame
    Line.Visible = true
    TextLines = TextLines + 1
    LastMsg = Line
    VaultZeroLogs = VaultZeroLogs.."\n "..Text
    local Total = 0
    for _,obj in Console_ScrollingFrame:GetChildren() do
        if obj:IsA("TextLabel") then
            Total = Total + 16
        end
    end
    Console_ScrollingFrame.CanvasSize = UDim2.new(0,0,0,Total)
    if ScrollDown == true then
        Console_ScrollingFrame.CanvasPosition = Vector2.new(0,Console_ScrollingFrame.AbsoluteCanvasSize.Y)
    end
end

function Suggest(Text)
    if #Text == 0 then Type_Suggestions.Text = "" return end
    local chosencommand = nil
    local commandnAme = nil
    local word = Text:split(" ")[1]
    for index,command in CMDDictionary do
        local CMDName = command.Name:lower()
        local Alternatives = command.Alternatives
        local isAlternateName = false
        for _,Alternate in Alternatives do
            if word:lower() == Alternate then
                chosencommand = command
                commandnAme = Alternate
                isAlternateName = true
            end
        end
        if word:lower() == CMDName:sub(1,#word) and isAlternateName == false then
            chosencommand = command
            commandnAme = chosencommand.Name
        else
            for _,Alternate in Alternatives do
                Alternate = Alternate:lower()
                if word:lower() == Alternate:sub(1,#word) then
                    chosencommand = command
                    commandnAme = Alternate
                end
            end
        end
    end
    if not chosencommand then Type_Suggestions.Text = "" return end
    local SuggestionText = commandnAme
    for _,arg in chosencommand.Args do
        local temp = SuggestionText.." <"..arg..">"
        if #Text >= (#SuggestionText)+2 then
        else
            SuggestionText = temp
        end
    end
    
    Type_Suggestions.Text = SuggestionText
end

function GetCommand(Text)
    for _,Command in CMDDictionary do
        if Command.Name == Text then
            return Command
        elseif table.find(Command.Alternatives,Text) then
            return Command
        end
    end
end

function RigType(char)
    if not char:FindFirstChildWhichIsA("Humanoid") then return end
    local hum = char:FindFirstChildWhichIsA("Humanoid")
    return hum.RigType
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
        return
    end
    local CommandName = Args[1]:lower()
    local Command = GetCommand(CommandName)
    if not Command then return end
    local CommandId = CMDIDs[Command.Id]
    local CommandArgs = Command.Args
    local ValidatedArgs = {}
    for index,value in CommandArgs do
        local Type = CommandArgTypes[value]
        local Text = Args[index+1]
        NewValue = Type(Text)
        if value == "..." then
            local all_args = ""
            for i=2,#Args do
                all_args = all_args..Args[i].." "
            end
            table.insert(ValidatedArgs,all_args)
        end
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
CommandsRuntime.log = {}
function handleAction(actionName, inputState, _inputObject)
	if actionName == "VaultZeroFocus" and inputState == Enum.UserInputState.End then
		Type_TextBox:CaptureFocus()
	end
end
ContextActionService:BindAction("VaultZeroFocus", handleAction, false, MenuKeybind)
local LegacyChatServicePlayerChatConnections = {}
function legacyChatPlr(Pplr)
    if LegacyChatServicePlayerChatConnections[Pplr] ~= nil then
        return
    end
    local connection
    connection = Pplr.Chatted:Connect(function(msg)
        if CommandsRuntime.log.chat == true then
            ShowLine("[PLR] [@"..Pplr.Name.."]: "..msg)
        end
    end)
    LegacyChatServicePlayerChatConnections[Pplr] = connection
end
if ChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    ChatService.MessageReceived:Connect(function(msg)
        local Sender = Players:GetPlayerByUserId(msg.TextSource.UserId)
        if CommandsRuntime.log.chat == true then
            ShowLine("[PLR] [@"..Sender.Name.."]: "..msg.Text)
        end
        if Sender == plr then
            if table.find(CommandPrefix,msg.Text:sub(1,1)) then
                ExecuteCommand(msg.Text:sub(2,#msg.Text))
            end
        end
    end)
elseif ChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
    for _,Pplr in Players:GetPlayers() do
        if Pplr ~= plr then
           legacyChatPlr(Pplr) 
        end
    end
    game.Players.PlayerAdded:Connect(function(Pplr)
        if Pplr == plr then
            print("what")
        end
        if CommandsRuntime.log.join == true then
            ShowLine("[PLR] Player "..Pplr.DisplayName.." (@"..Pplr.Name..") Joined")
        end
        legacyChatPlr(Pplr)
    end)
    Players.PlayerRemoving:Connect(function(Pplr)
        if CommandsRuntime.log.join == true then
            ShowLine("[PLR] Player "..Pplr.DisplayName.." (@"..Pplr.Name..") Left")
        end
        if LegacyChatServicePlayerChatConnections[Pplr] then
            LegacyChatServicePlayerChatConnections[Pplr]:Disconnect()
            LegacyChatServicePlayerChatConnections[Pplr] = nil
        end
    end)
    local lastMsg = ""
    plr.Chatted:Connect(function(msg)
        if CommandsRuntime.log.chat == true and lastMsg ~= msg then
            ShowLine("[PLR] [@"..plr.Name.."]: "..msg)
        end
        if table.find(CommandPrefix,msg:sub(1,1)) then
            ExecuteCommand(msg:sub(2,#msg))
        end
        if Temp == 1 then
            Temp = -1
        end
        lastMsg = msg
    end)
end

Type_TextBox.Changed:Connect(function()
    Suggest(Type_TextBox.Text)
end)

plr.OnTeleport:Connect(function()
    if KeepVaultZero == true then
        queueteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/TestAccountThethird0/VaultZero/refs/heads/main/Main.lua"))()')
        queueteleport('KeepVaultZero = true')
    end
end)

function unloadVaultZero()
    local connections = getconnections(plr.Chatted)
    ContextActionService:UnbindAction("VaultZeroFocus")
    pcall(function() getgenv().VaultZeroLoaded = false end)
    game.CoreGui.VaultZero:Destroy()
end

plr.CharacterAdded:Connect(function(char)
    char.PrimaryPart = char:WaitForChild("HumanoidRootPart")
end)
if plr.Character then
    plr.Character.PrimaryPart = plr.Character:FindFirstChild("HumanoidRootPart")
end

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
    Args = {"STRING"}, -- what to debug
    Id = "debug",
    Function = function(Args)
        if Args[1] == "logs" then
            print(VaultZeroLogs)
        elseif Args[1] == "destroy" then
            unloadVaultZero()
        elseif Args[1] == "logs2" then
            for i=1,20 do
                ShowLine("Line "..i)
            end
        end
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
        plr.Backpack:ClearAllChildren()
        local cf = plr.Character.PrimaryPart.CFrame
        local archivable = plr.Character.Archivable
        plr.Character.Archivable = true
        local clone = plr.Character:Clone()
        plr.Character:PivotTo(CFrame.new(0,31000000,0)) -- 31M in the air
        game:GetService("Workspace").CurrentCamera.CameraSubject = clone
        task.wait(0.05)
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
        plr.Backpack:ClearAllChildren()
    end
})
addCMD({
    ToggleCommand = false,
    Name = "visible",
    Alternatives = {"vis","appear","reveal","show"},
    Args = {},
    Id = "visible",
    Function = function(Args)
        local char = CommandsRuntime.Invisible.char
        local fake = CommandsRuntime.Invisible.fake
        local cf = CommandsRuntime.Invisible.CFrame
        plr.Backpack:ClearAllChildren()
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
    Alternatives = {},
    Args = {"..."},
    Id = "print",
    Function = function(Args)
        print(Args[1])
        ShowLine("[LOG] >  "..Args[1])
    end
})
addCMD({
    ToggleCommand = nil,
    Name = "log",
    Alternatives = {},
    Args = {"STRING"},
    Id = "log",
    Function = function(Args)
        CommandsRuntime.log[Args[1]] = true
        ShowLine("[LOG] Started Logging '"..Args[1].."'")
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "unlog",
    Alternatives = {"stoplog","dontlog"},
    Args = {"STRING"},
    Id = "unlog",
    Function = function(Args)
        CommandsRuntime.log[Args[1]] = false
        ShowLine("[LOG] Stopped Logging '"..Args[1].."'")
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
    Args = {},
    Id = "dex",
    Function = function(Args)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "remotespy",
    Alternatives = {"rspy"},
    Args = {},
    Id = "remotespy",
    Function = function(Args)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "infiniteyield",
    Alternatives = {"iy","infyield"},
    Args = {},
    Id = "infiniteyield",
    Function = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "infiniteyieldreborn",
    Alternatives = {"iyr","infyieldreborn","iyreborn"},
    Args = {},
    Id = "infiniteyieldreborn",
    Function = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/RyXeleron/infiniteyield-reborn/refs/heads/master/source' or 'https://ryxeleron.github.io/storage/iyrbackup/legacy/master/source')))()
    end
})

addCMD({
    ToggleCommand = true,
    Name = "noclip",
    Alternatives = {"nclip"},
    Args = {},
    Id = "noclip",
    Function = function()
        local connection = runservice.PreSimulation:Connect(function()
            if plr.Character then
                for _, child in plr.Character:GetDescendants() do
			        if child:IsA("BasePart") and child.CanCollide == true then
				        child.CanCollide = false
			        end
                end
	        end
            end)
        CommandsRuntime.invisible = connection
    end
})

addCMD({
    ToggleCommand = false,
    Name = "clip",
    Alternatives = {},
    Args = {},
    Id = "noclip",
    Function = function()
        if CommandsRuntime.invisible then
            CommandsRuntime.invisible:Disconnect()
            CommandsRuntime.invisible = nil
            if not plr.Character then return end
            if not plr.Character:FindFirstChild("Head") then return end
            plr.Character.HumanoidRootPart.CanCollide = true
            if RigType(plr.Character) == Enum.HumanoidRigType.R6 then
                plr.Character.Head.CanCollide = true
                plr.Character.Torso.CanCollide = true
            else
                plr.Character.UpperTorso.CanCollide = true
                plr.Character.LowerTorso.CanCollide = true
            end
        end
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "walkspeed",
    Alternatives = {"ws","speed"},
    Args = {"NUMBER"},
    Id = "walkspeed",
    Function = function(Args)
        if not plr.Character then return end
        if not plr.Character:FindFirstChildWhichIsA("Humanoid") then return end
        if not Args[1] then return end
        plr.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = Args[1]
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "jumpower",
    Alternatives = {"jumpower","jumpstrength","jp"},
    Args = {"NUMBER"},
    Id = "jumppower",
    Function = function(Args)
        if not plr.Character then return end
        if not plr.Character:FindFirstChildWhichIsA("Humanoid") then return end
        if not Args[1] then return end
        plr.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = Args[1]
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "serverhop",
    Alternatives = {"shop"},
    Args = {},
    Id = "serverhop",
    Function = function(Args)
        local Servers = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
        local Server, Next = nil, nil
        local function ListServers(cursor)
            local Raw = game:HttpGet(Servers .. ((cursor and "&cursor=" .. cursor) or ""))
            return HttpService:JSONDecode(Raw)
        end

        repeat
            local Servers = ListServers(Next)
            if not Servers.data then return end
            local max = math.round((#Servers.data / 3))
            max = math.max(1,max)
            Server = Servers.data[math.random(1, max)]
            Next = Servers.nextPageCursor
        until Server

        if Server.playing < Server.maxPlayers and Server.id ~= game.JobId then
            TeleportService:TeleportToPlaceInstance(game.PlaceId, Server.id, game.Players.LocalPlayer)
        end
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "tppos",
    Alternatives = {"tpos","tpcords","tpcoords"},
    Args = {"NUMBER","NUMBER","NUMBER"},
    Id = "tppos",
    Function = function(Args)
        if not plr.Character then return end
        local Ori = plr.Character.PrimaryPart.Orientation
        local CF = CFrame.new(
            Args[1],
            Args[2],
            Args[3])*
        CFrame.Angles(
            math.rad(Ori.X),
            math.rad(Ori.Y),
            math.rad(Ori.Z))
        plr.Character:PivotTo(CF)
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "offset",
    Alternatives = {},
    Args = {"NUMBER","NUMBER","NUMBER"},
    Id = "offset",
    Function = function(Args)
        if not plr.Character then return end
        local Vec = plr.Character.PrimaryPart.Position
        local Ori = plr.Character.PrimaryPart.Orientation
        plr.Character:PivotTo(CFrame.new(Vec+Vector3.new(Args[1],Args[2],Args[3]))*CFrame.Angles(math.rad(Ori.X),math.rad(Ori.Y),math.rad(Ori.Z)))
    end
})

addCMD({
    ToggleCommand = true,
    Name = "marble",
    Alternatives = {"ball","roll"},
    Args = {"NUMBER"},
    Id = "marble",
    Function = function(Args)
        local character = game.Players.LocalPlayer.Character
        local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")

        if not torso then
            return
        end

        local ball = character.HumanoidRootPart
        originalSize = ball.Size
        originalShape = ball.Shape

        for i, v in ipairs(character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    Camera = workspace.CurrentCamera
    ball.Shape = Enum.PartType.Ball
    local size = tonumber(Args[1]) or 5
    ball.Size = Vector3.new(size, size, size)
    local humanoid = character:WaitForChild("Humanoid")
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Blacklist
    params.FilterDescendantsInstances = { character }
    local SPEED_MULTIPLIER = 16
    local JUMP_GAP = 0.4
    local JUMP_POWER = 50
    local JumpRequestConnection
    local marbleConnection = runservice.RenderStepped:Connect(function(delta)
            ball.CanCollide = true
            SPEED_MULTIPLIER = humanoid.WalkSpeed
            JUMP_POWER = humanoid.JumpPower
            humanoid.PlatformStand = true
            if uis:GetFocusedTextBox() then
                return
            end
            if uis:IsKeyDown("W") then
                ball.RotVelocity = ball.RotVelocity - Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
            end
            if uis:IsKeyDown("A") then
                ball.RotVelocity = ball.RotVelocity - Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
            end
            if uis:IsKeyDown("S") then
                ball.RotVelocity = ball.RotVelocity + Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
            end
            if uis:IsKeyDown("D") then
                ball.RotVelocity = ball.RotVelocity + Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
            end
        end)

        JumpRequest = uis.JumpRequest:Connect(function()
            if marbleConnection.Connected == false then return end
            local result =
                workspace:Raycast(ball.Position, Vector3.new(0, -((ball.Size.Y / 2) + JUMP_GAP), 0), params)
            if result then
                ball.Velocity = ball.Velocity + Vector3.new(0, JUMP_POWER, 0)
            end
        end)
    CommandsRuntime.Marble = {marble = marbleConnection,jump = JumpRequestConnection}
        Camera.CameraSubject = torso

        humanoid.Died:Connect(function()
            if marbleConnection then
            marbleConnection:Disconnect()
            end
        end)
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unmarble",
    Alternatives = {"unball","unroll","noball","noroll"},
    Args = {},
    Id = "unmarble",
    Function = function()
        local character = plr.Character
        local humanoid = character:WaitForChild("Humanoid")
        local ball = character.HumanoidRootPart
        local marbleConnectionTable = CommandsRuntime.Marble
        if marbleConnectionTable == nil then return end
        local marbleConnection = CommandsRuntime.Marble.marble
        local jumpConnection = CommandsRuntime.Marble.jump
        if marbleConnection == nil then return end
        if originalSize and originalShape then
            ball.Size = originalSize
            ball.Shape = originalShape
        end
        
        humanoid.PlatformStand = false

        if originalCameraSubject then
            workspace.CurrentCamera.CameraSubject = originalCameraSubject
        else
            workspace.CurrentCamera.CameraSubject = humanoid
        end

        if marbleConnection then
            marbleConnection:Disconnect()
        end
        if jumpConnection then
            jumpConnection:Disconnect()
        end
        --CommandsRuntime.Marble = nil
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "unc",
    Alternatives = {},
    Args = {},
    Id = "unc",
    Function = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua'))()
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "savelogs",
    Alternatives = {},
    Args = {},
    Id = "savelogs",
    Function = function()
        local allowedCharacters = {
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", 
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "-", "_"," "}
        local CTime = CurrentTime(true)
        CTime = string.gsub(CTime,":","-")
        local GameId = game.PlaceId
        local GameName = game:GetService("MarketplaceService"):GetProductInfo(GameId).Name
        local FileName = CTime.." "..GameName
        local FileNameSplit = FileName:split("")
        local NewFileName = ""
        for _,letter in FileNameSplit do
            if table.find(allowedCharacters,letter) then
                NewFileName = NewFileName..letter
            end
        end
        NewFileName = NewFileName..".txt"
        writefile(NewFileName,VaultZeroLogs)
        ShowLine("Saved VaultZeroLogs to '"..NewFileName.."'")
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "loadstring",
    Alternatives = {"runcode","execute"},
    Args = {"..."},
    Id = "loadstring",
    Function = function(Args)
       loadstring(Args[1]) 
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "oldconsole",
    Alternatives = {"ogconsole"},
    Args = {},
    Function = function(Args)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/console.lua",true))()
    end
})

addCMD({
    ToggleCommand = true,
    Name = "spectate",
    Alternatives = {"view"},
    Args = {"PLAYER"},
    Id = "spectate",
    Function = function(Args)
        if not Args[1] then return end
        workspace.CurrentCamera.CameraSubject = Args[1].Character.Humanoid
    end
})

addCMD({
    ToggleCommand = true,
    Name = "unspectate",
    Alternatives = {"unview"},
    Args = {},
    Id = "spectate",
    Function = function(Args)
        workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
    end
})

addCMD({
    ToggleCommand = true,
    Name = "glow",
    Alternatives = {"light"},
    Args = {"NUMBER","NUMBER"},
    Id = "glow",
    Function = function(Args)
        if not Args[1] then return end
        if not Args[2] then return end
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if plr.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("VaultZeroGlow") then return end
        local root = plr.Character:FindFirstChild("HumanoidRootPart")
        local pointlight = Instance.new("PointLight")
        pointlight.Name = "VaultZeroGlow"
        pointlight.Range = Args[1]
        pointlight.Brightness = Args[2]
        pointlight.Parent = root
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unglow",
    Alternatives = {"unlight"},
    Args = {"NUMBER","NUMBER"},
    Id = "glow",
    Function = function(Args)
        if not Args[1] then return end
        if not Args[2] then return end
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if plr.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("VaultZeroGlow") then return end
        local root = plr.Character:FindFirstChild("HumanoidRootPart")
        local pointlight = Instance.new("PointLight")
        pointlight.Name = "VaultZeroGlow"
        pointlight.Range = Args[1]
        pointlight.Brightness = Args[2]
        pointlight.Parent = root
    end
})

addCMD({
    ToggleCommand = true,
    Name = "follow",
    Alternatives = {},
    Args = {"PLAYER"},
    Id = "follow",
    Function = function(Args)
        if not Args[1] then return end
        local Connection = nil
        Connection = runservice.Heartbeat:Connect(function()
            local target = Args[1].Character
            if not plr.Character then Connection:Disconnect() return end
            if not plr.Character:FindFirstChildWhichIsA("Humanoid") then Connection:Disconnect() return end
            if not target then Connection:Disconnect() return end
            if not target:FindFirstChild("HumanoidRootPart") then Connection:Disconnect() return end
            local hum = plr.Character:FindFirstChildWhichIsA("Humanoid")
            hum:MoveTo(target.HumanoidRootPart.Position)
        end)
        CommandsRuntime.follow = Connection
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unfollow",
    Alternatives = {},
    Args = {},
    Id = "follow",
    Function = function(Args)
        local Connection = CommandsRuntime.follow
        if not Connection then return end
        Connection:Disconnect()
        CommandsRuntime.follow = nil
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "walkto",
    Alternatives = {},
    Args = {"PLAYER"},
    Id = "walkto",
    Function = function(Args)
        if not Args[1] then return end
        local target = Args[1].Character
        if not plr.Character then return end
        if not plr.Character:FindFirstChildWhichIsA("Humanoid") then return end
        if not target then return end
        if not target:FindFirstChild("HumanoidRootPart") then return end
        local hum = plr.Character:FindFirstChildWhichIsA("Humanoid")
        hum:MoveTo(target.HumanoidRootPart.Position)
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "addvelocity",
    Alternatives = {"addvel"},
    Args = {"NUMBER","NUMBER","NUMBER"},
    Id = "addvelocity",
    Function = function(args)
        if not plr.Character then return end
        if not plr.Character.PrimaryPart then return end
        if not args then return end
        if not args[1] then return end
        if not args[2] then return end
        if not args[3] then return end
        plr.Character.PrimaryPart:ApplyImpulse(Vector3.new(args[1],args[2],args[3]))
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "setvelocity",
    Alternatives = {"setvel","vel"},
    Args = {"NUMBER","NUMBER","NUMBER"},
    Id = "setvelocity",
    Function = function(args)
        if not plr.Character then return end
        if not plr.Character.PrimaryPart then return end
        if not args then return end
        if not args[1] then return end
        if not args[2] then return end
        if not args[3] then return end
        plr.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(args[1],args[2],args[3])
    end
})

addCMD({
    ToggleCommand = true,
    Name = "fly",
    Alternatives = {},
    Args = {"NUMBER"},
    Id = "fly",
    Description = "makes you fly, thanks to Zeuxtronic (l_l6658 on discord) for the code",
    Function = function(args) -- thanks to Zeuxtronic (l_l6658 on discord)
                              -- for this fly code
        local lp = plr
         ExecuteCommand("unfly")
         local speed = tonumber(args[1])
         if speed == nil then speed = 1.5 end
        
          CM = require(lp.PlayerScripts:WaitForChild('PlayerModule',5):WaitForChild("ControlModule",5))
          CommandsRuntime.FlyConnection = runservice.Heartbeat:Connect(function()
               local movedir = CM:GetMoveVector()
            local cam = workspace.CurrentCamera
            local camcf = cam.CFrame
               if lp.character and lp.character:FindFirstChildWhichIsA("Humanoid") and lp.character:FindFirstChild("HumanoidRootPart") and movedir and CM then
                local root = lp.character:FindFirstChild("HumanoidRootPart")
                lp.character.Humanoid.PlatformStand = true
                root.Anchored = true
                if not FlyPart then
                    FlyPart = Instance.new("Part",nil)
                     FlyPart.Anchored = true
                      FlyPart.Position = root.Position
                    FlyPart.CanCollide = false
                   end
                 
                   local pos = FlyPart.Position
                  pos = pos +(camcf.RightVector *(movedir.X *speed))
                pos = pos +(camcf.LookVector *(movedir.Z *speed) *-1)
            
            
                FlyPart.CFrame = camcf
                 FlyPart.Position = pos
                 root.CFrame = FlyPart.CFrame
            else
                ExecuteCommand("unfly")
            end
        end)
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unfly",
    Alternatives = {},
    Args = {},
    Id = "fly",
    Function = function()
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if not plr.Character:FindFirstChildWhichIsA("Humanoid") then return end
        if CommandsRuntime.FlyConnection then
            CommandsRuntime.FlyConnection:Disconnect()
            plr.Character.HumanoidRootPart.Anchored = false
            plr.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
        end
    end
})
CommandsRuntime.Loop = {}
addCMD({
    ToggleCommand = true,
    Name = "loop",
    Alternatives = {},
    Args = {"..."},
    Id = "loop",
    Function = function(Args)
        local connection = runservice.Heartbeat:Connect(function()
            ExecuteCommand(Args[1])
        end)
        CommandsRuntime.Loop[Args[1]:split(" ")[1]] = connection
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unloop",
    Alternatives = {},
    Args = {"STRING"},
    Id = "loop",
    Function = function(Args)
        local con = CommandsRuntime.Loop[Args[1]]
        if con then
            con:Disconnect()
            CommandsRuntime.Loop[Args[1]] = nil
        end
    end
})

addCMD({
    ToggleCommand = true,
    Name = "freeze",
    Alternatives = {"fr"},
    Args = {"PLAYER"},
    Id = "freeze",
    Function = function(Args)
        if not Args[1] then Args[1] = plr end
        local target = Args[1]
        if not target.Character then return end
        local targetChar = target.Character
        if not targetChar:FindFirstChild("HumanoidRootPart") then return end
        local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
        targetRoot.Anchored = true
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unfreeze",
    Alternatives = {"unfr","thaw"},
    Args = {"PLAYER"},
    Id = "freeze",
    Function = function(Args)
        if not Args[1] then Args[1] = plr end
        local target = Args[1]
        if not target.Character then return end
        local targetChar = target.Character
        if not targetChar:FindFirstChild("HumanoidRootPart") then return end
        local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
        targetRoot.Anchored = false
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "clientbring",
    Alternatives = {"cbring"},
    Args = {"PLAYER"},
    Id = "clientbring",
    Function = function(Args)
        if not Args[1] then return end
        local target = Args[1]
        if not target.Character then return end
        local targetChar = target.Character
        if not targetChar:FindFirstChild("HumanoidRootPart") then return end
        local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
        targetChar:PivotTo(plr.Character.HumanoidRootPart.CFrame)
    end
})

addCMD({
    ToggleCommand = true,
    Name = "noplayercollisions",
    Alternatives = {"antifling","nopush"},
    Args = {},
    Id = "noplayercollisions",
    Function = function()
        ExecuteCommand("playercollisions")
        for _,player in Players:GetPlayers() do
            local character = player.Character
            if not character then return end
            for _,obj in pairs(character:GetDescendants()) do
                if obj:IsA("BasePart") then
                    obj:SetAttribute("noplayercollisions",obj.CanCollide)
                    obj.CanCollide = false
                end
            end
        end
    end
})

addCMD({
    ToggleCommand = false,
    Name = "playercollisions",
    Alternatives = {"unantifling"},
    Args = {},
    Id = "noplayercollisions",
    Function = function()
        for _,player in Players:GetPlayers() do
            local character = player.Character
            if not character then return end
            for _,obj in character:GetDescendants() do
                if obj:IsA("BasePart") and obj:GetAttribute("noplayercollisions") then
                    obj.CanCollide = obj:GetAttribute("noplayercollisions")
                    obj:SetAttribute("noplayercollisions",nil)
                end
            end
        end
    end
})

addCMD({
    ToggleCommand = true,
    Name = "esp",
    Alternatives = {},
    Args = {},
    Id = "esp",
    Function = function()
        local connection = runservice.PreRender:Connect(function()
            for _,player in Players:GetPlayers() do
                if not player.Character then return end
                local character = player.Character
                if not character:FindFirstChild("VAULTESP") then
                    local highlight = Instance.new("Highlight")
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.FillColor = Color3.new(1,1,1)
                    highlight.FillTransparency = 0.6
                    highlight.OutlineTransparency = 1
                    highlight.Adornee = character
                    highlight.Name = "VAULTESP"
                    highlight.Parent = character
                end
            end
        end)
        CommandsRuntime.ESP = connection
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unesp",
    Alternatives = {},
    Args = {},
    Id = "esp",
    Function = function()
        if CommandsRuntime.ESP then
            CommandsRuntime.ESP:Disconnect()
            CommandsRuntime.ESP = nil
            for _,player in Players:GetPlayers() do
                if not player.Character then return end
                if player.Character:FindFirstChild("VAULTESP") then
                    player.Character.VAULTESP:Destroy()
                end
            end
        end
    end
})

addCMD({
    ToggleCommand = true,
    Name = "keepvaultzero",
    Alternatives = {"keepv0","keepvz"},
    Args = {},
    Id = "keepvaultzero",
    Function = function()
        KeepVaultZero = true
    end
})

addCMD({
    ToggleCommand = false,
    Name = "losevaultzero",
    Alternatives = {"unkeepv0","unkeepvz","unkeepvaultzero"},
    Args = {},
    Id = "keepvaultzero",
    Function = function()
        KeepVaultZero = false
    end
})
CommandsRuntime.waypoints = {}
addCMD({
    ToggleCommand = nil,
    Name = "setwaypoint",
    Alternatives = {"createwaypoint","swp"},
    Args = {"STRING"},
    Id = "setwaypoint",
    Function = function(Args)
        if not Args[1] then return end
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        local root = plr.Character:FindFirstChild("HumanoidRootPart")
        local printPos = Vector3.new(
            math.round(root.Position.X),
            math.round(root.Position.Y),
            math.round(root.Position.Z)
            )
        CommandsRuntime.waypoints[Args[1]] = root.Position
        ShowLine("[WAYPOINTS] Created Waypoint '"..Args[1].."' at "..string.gsub(tostring(printPos),",",""))
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "gotowaypoint",
    Alternatives = {"waypoint","gwaypoint","gwp","wp"},
    Args = {"STRING"},
    Id = "gotowaypoint",
    Function = function(Args)
        if not Args[1] then return end
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if not CommandsRuntime.waypoints[Args[1]] then return end
        local pos = CommandsRuntime.waypoints[Args[1]]
        plr.Character:PivotTo(CFrame.new(pos))
    end
})

addCMD({
    ToggleCommand = nil,
    Name = "deletewaypoint",
    Alternatives = {"removewaypoint","destroywaypoint","dwp","rwp"},
    Args = {"STRING"},
    Id = "deletewaypoint",
    Function = function(Args)
        if not Args[1] then return end
        if not plr.Character then return end
        if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
        if not CommandsRuntime.waypoints[Args[1]] then return end
        CommandsRuntime.waypoints[Args[1]] = nil
        ShowLine("[WAYPOINTS] Deleted Waypoint '"..Args[1].."'")
    end
})

addCMD({
    ToggleCommand = true,
    Name = "orbit",
    Alternatives = {},
    Args = {"PLAYER","NUMBER","NUMBER"}, -- PLAYER DISTANCE SPEED
    Id = "orbit",
    Function = function(Args)
        local FRame = 0
        if not Args[1] then return end
        if not Args[2] then return end
        if not Args[3] then return end
        local conn
        conn = runservice.Heartbeat:Connect(function()
            if not Args[1].Character then return end
            local Targetchar = Args[1].Character
            if not Targetchar:FindFirstChild("HumanoidRootPart") then return end
            local TargetRoot = Targetchar.HumanoidRootPart
            if not plr.Character then return end
            local char = plr.Character
            FRame = FRame + Args[3]
            CF = CFrame.new(TargetRoot.Position)*CFrame.Angles(
                0,math.rad(FRame),0)
            CF = CF+CF.LookVector*Args[2]
            CF = CFrame.lookAt(CF.Position,TargetRoot.Position)
            char:PivotTo(CF)
            if FRame >= 360 then
                FRame = FRame-360
            end
        end)
        CommandsRuntime.orbit = conn
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unorbit",
    Alternatives = {},
    Args = {},
    Id = "unorbit",
    Function = function()
        if not CommandsRuntime.orbit then return end
        CommandsRuntime.orbit:Disconnect()
        CommandsRuntime.orbit = nil
    end
})

addCMD({
    ToggleCommand = true,
    Name = "fling",
    Alternatives = {},
    Args = {"PLAYER"},
    Id = "fling",
    Function = function(Args)
        if not Args[1] then return end
        if not Args[1].Character then return end
        local TChar = Args[1].Character
        if not TChar:FindFirstChild("HumanoidRootPart") then return end
        if not plr.Character then return end
        if not plr.Character.PrimaryPart then return end
        local cf = plr.Character.PrimaryPart.CFrame
        local fallen = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
        local Thrust = Instance.new('BodyThrust', plr.Character.PrimaryPart)
		Thrust.Force = Vector3.new(999999,-999999,999999)
		Thrust.Name = "VAULTZEROFLING"
		Thrust.Parent = plr.Character.PrimaryPart
		spawn(function()
		    repeat
		        local Pos = TChar.HumanoidRootPart.Position+((TChar.Humanoid.MoveDirection*TChar.Humanoid.WalkSpeed)/60)
		        if TChar.Humanoid.MoveDirection == Vector3.new(0,0,0) then
                    Pos = TChar.HumanoidRootPart.Position
                end
		        plr.Character:PivotTo(CFrame.new(Pos))
		        Thrust.Location = Pos
		        runservice.Heartbeat:wait()
		until not Args[1].Character or TChar.PrimaryPart.AssemblyLinearVelocity.Magnitude >= 5000
        Thrust:Destroy()
        local prim = plr.Character.PrimaryPart
        if prim == nil then return end
        plr.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
        plr.Character.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
        task.wait(0.3)
        workspace.FallenPartsDestroyHeight = fallen
        plr.Character:PivotTo(cf)
	    end)
    end
})

addCMD({
    ToggleCommand = true,
    Name = "spin",
    Alternatives = {},
    Args = {"NUMBER"},
    Id = "spin",
    Function = function(Args)
        if not Args[1] then return end
        if not plr.Character then return end
        local char = plr.Character
        if not char:FindFirstChild("HumanoidRootPart") then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if root:FindFirstChild("VAULTZEROSPIN") then
            root:FindFirstChild("VAULTZEROSPIN").AngularVelocity = Vector3.new(0,Args[1],0)
            return 
        end
        local spin = Instance.new("BodyAngularVelocity")
        spin.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        spin.P = math.huge
        spin.AngularVelocity = Vector3.new(0,Args[1],0)
        spin.Name = "VAULTZEROSPIN"
        spin.Parent = root
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unspin",
    Alternatives = {},
    Args = {},
    Id = "spin",
    Function = function()
        if not plr.Character then return end
        local char = plr.Character
        if not char:FindFirstChild("HumanoidRootPart") then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root:FindFirstChild("VAULTZEROSPIN") then return end
        root:FindFirstChild("VAULTZEROSPIN"):Destroy()
    end
})

addCMD({
    ToggleCommand = true,
    Name = "antivoid",
    Alternatives = {"novoid","unvoid"},
    Args = {},
    Id = "antivoid",
    Function = function()
        if CommandsRuntime.Fallen ~= nil then return end
        CommandsRuntime.Fallen = workspace.FallenPartsDestroyHeight
        workspace.FallenPartsDestroyHeight = 0/0
    end
})

addCMD({
    ToggleCommand = false,
    Name = "unantivoid",
    Alternatives = {"yesvoid","void"},
    Args = {},
    Id = "unantivoid",
    Function = function()
        if CommandsRuntime.Fallen == nil then return end
        workspace.FallenPartsDestroyHeight = CommandsRuntime.Fallen
        CommandsRuntime.Fallen = nil
    end
})
