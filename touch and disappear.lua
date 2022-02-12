local Folder = game.Workspace.Parts
local function cambio()
    for _,v in pairs(Folder:GetChildren())do
        v.Touched:Connect(function(hit)
            coroutine.resume(coroutine.create(function()
                for i=1,7 do
					wait(.1)
					v.CanCollide = false
					v.Transparency = 0.5
                    wait(.1)
                    v.Transparency = 1
                end
                v.Transparency = 1
                v.CanCollide = false
                wait(5)
                v.Transparency = 0
                v.CanCollide = true
            end))
        end)
    end
end
cambio()
