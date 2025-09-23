local ServerScriptService = game:GetService("ServerScriptService")
local CustomEasingModule = require(ServerScriptService:WaitForChild("CustomEasingModule"))
local Part = workspace:WaitForChild("TweenTest")

CustomEasingModule.NewTween(Part,"Size",Vector3.new(10,10,10),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,3)
CustomEasingModule.NewTweenPlay()

task.wait(3)

CustomEasingModule.NewTweenAndPlay(Part,"Size",Vector3.new(1,1,1),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,3)
