local CustomEasingModule = {}

local TweenService = game:GetService("TweenService")
local CurrentNotPlayedTween = nil

function CustomEasingModule.NewTween(Target,TargetPropetiesName,TargetPropetiesGoal,EasingStyle,EasingDirection,Repeat,Duration)
	local TweenInfoValue = TweenInfo.new(Duration,EasingStyle,EasingDirection,Repeat)
	local PropetiesGoal = {[TargetPropetiesName] = TargetPropetiesGoal}
	local NewTweenValue1 = TweenService:Create(Target,TweenInfoValue,PropetiesGoal)
	CurrentNotPlayedTween = NewTweenValue1
end

function CustomEasingModule.NewTweenPlay()
	CurrentNotPlayedTween:Play()
end

function CustomEasingModule.NewTweenAndPlay(Target,TargetPropetiesName,TargetPropetiesGoal,EasingStyle,EasingDirection,Repeat,Duration)
	local TweenInfoValue = TweenInfo.new(Duration,EasingStyle,EasingDirection,Repeat)
	local PropetiesGoal = {[TargetPropetiesName] = TargetPropetiesGoal}
	local NewTweenValue2 = TweenService:Create(Target,TweenInfoValue,PropetiesGoal)
	NewTweenValue2:Play()
end

return CustomEasingModule
