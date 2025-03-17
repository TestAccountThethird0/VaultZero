addCMD({
    --Requested By Nicon
    ToggleCommand = nil,
    Name = "mm2xray",
    Alternatives = {},
    Args = {},
    Id = "mm2xray",
    Function = function()
        for _,plr in Players:GetPlayers() do
            if plr.Character then
                if plr.Character:FindFirstChild("VAULTXRAY") then
                    plr.Character:FindFirstChild("VAULTXRAY"):Destroy()
                end
                if plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun") then
                    local highlight = Instance.new("Highlight")
                    highlight.Adornee = plr.Character
                    highlight.FillColor = Color3.new(0,0,1)
                    highlight.FillTransparency = 0.7
                    highlight.OutlineTransparency = 1
                    highlight.Name = "VAULTXRAY"
                    highlight.Parent = plr.Character
                elseif plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife") then
                    local highlight = Instance.new("Highlight")
                    highlight.Adornee = plr.Character
                    highlight.FillColor = Color3.new(1,0,0)
                    highlight.FillTransparency = 0.7
                    highlight.OutlineTransparency = 1
                    highlight.Name = "VAULTXRAY"
                    highlight.Parent = plr.Character
                end
            end
        end
    end
})
