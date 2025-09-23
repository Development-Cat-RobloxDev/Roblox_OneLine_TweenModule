# Roblox_OneLine_TweenModule

## その名の通り、Roblox内でのTweenを一行で済ませるModuleです。

## どのように使う？

### このように使います（実際の例）↓

```lua:test.lua
local ServerScriptService = game:GetService("ServerScriptService")
local CustomEasingModule = require(ServerScriptService:WaitForChild("CustomEasingModule"))

CustomEasingModule.NewTween(Part,"Size",Vector3.new(10,10,10),Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,3)
```

サーバーで動くならどこに置いてもいいです、ただし、workspaceは控えましょう...
CustomEasingModule.NewTween()でTweenを作成、
CustomEasingModule.NewTweenPlay()で作成したTweenを再生、
CustomEasingModule.NewTweenAndPlay()で、作成から再生まで一括でします。

### 記述方法
()の中に、"Instance, PropertiesName, PropertiesGoal, EasingStyle, EasingDirection, Repeat, Duration"
として書きます、あとは慣れですね〜

### 最後に
MITで使えるので、ご自由にお使いください〜
