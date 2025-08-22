local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Hs-klxy/my-Roblox-UI/refs/heads/main/OrionLib.lua'))()

ver = "1.2-20250822"
ver_id = "Developer Beta 2"

-- 启动通知
OrionLib:MakeNotification({
    Name = "启动提示",
    Content = "脚本启动中，5秒后加载",
    Image = "rbxassetid://102420960378431",
    Time = 5
})

-- 创建窗口
local Window = OrionLib:MakeWindow({
    Name = "CNIHs_klxy123的第一个脚本 (缝合 第二版)", 
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

local TabGames = Window:MakeTab({
    Name = "游戏脚本",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabInfo = Window:MakeTab({
    Name = "关于",
    Icon = "rbxassetid://102420960378431",
    PremiumOnly = false
})

--TabGames按钮

TabGames:AddParagraph("游戏专属脚本 (缺失)")
TabGames:AddLabel("后期我尽力补上 敬请期待（如果可以的话帮忙手机脚本或者脚本中心吧，谢谢😭（跪地））")

-- TabInfo按钮
TabInfo:AddParagraph("发起者 CNIHs_klxy123")
TabInfo:AddLabel("只是一个自制免费的缝合脚本而已")
TabInfo:AddLabel("版本: " .. ver .. " " .. ver_id)
TabInfo:AddLabel("不要当skid😡")
TabInfo:AddLabel("帮忙寻找一些游戏脚本，谢谢")

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

Tab1:AddButton({
    Name = "Npc操控",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载NPC操控脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty38.lua"))()
    end    
})

Tab1:AddButton({
    Name = "R15动画",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载R15动画脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RENBex6969/AnimationScripts/refs/heads/main/FE_R15_Animation_Gui_by_illremember.lua"))()
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

-- Tab4: Genesis FE 

Tab4:AddButton({
    Name = "AK-47",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载AK-47脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = false
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47'))()
    end    
})

Tab4:AddButton({
    Name = "封禁之锤",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载封禁之锤脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer'))()
    end    
})

Tab4:AddButton({
    Name = "驱逐者",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载驱逐者脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Banisher"))()
    end    
})

Tab4:AddButton({
    Name = "亲（氢）爱（癌）的姐姐（手枪战神）",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载亲爱的姐姐（手枪战神）脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"))()
    end    
})

Tab4:AddButton({
    Name = "Gale fighter（不知道怎么翻译）",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Gale fighter脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Gale%20Fighter"))()
    end    
})

Tab4:AddButton({
    Name = "没救的人",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载没救的人脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"))()
    end    
})

Tab4:AddButton({
    Name = "罪恶龙",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载罪恶龙脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        transparent = true
        effects = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sin%20Dragon'))()
    end    
})

Tab4:AddButton({
    Name = "好蜀黍坏蜀黍",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载好蜀黍坏蜀黍脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))()
    end    
})

Tab4:AddButton({
    Name = "Karambit",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Karambit脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Karambit"))()
    end    
})

Tab4:AddButton({
    Name = "Krystal Dance",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Krystal Dance脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = true
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance"))()
    end    
})

Tab4:AddButton({
    Name = "闪电加农大炮",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载闪电加农大炮脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        lightmode = false
        effects = true
        timemultiplier = 1
        walkspeedmultiplier = 1
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"))()
    end    
})

Tab4:AddButton({
    Name = "roblox远古时期的剑",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Linked sword脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        DisableFlingHealthBar = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"))()
    end    
})

Tab4:AddButton({
    Name = "Minigun",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Minigun脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun"))()
    end    
})

Tab4:AddButton({
    Name = "摩托车",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载摩托车脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Motorcycle"))()
    end    
})

Tab4:AddButton({
    Name = "猫娘",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载猫娘脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        DisableFlingHealthBar = false
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neko'))()
    end    
})

Tab4:AddButton({
    Name = "海王星 V",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载海王星 V脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V'))()
    end    
})

Tab4:AddButton({
    Name = "手枪",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载手枪脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Pistol'))()
    end    
})

Tab4:AddButton({
    Name = "傀儡大师",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载傀儡大师脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Puppet%20Master'))()
    end    
})

Tab4:AddButton({
    Name = "种族骑士",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载种族骑士脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider'))()
    end    
})

Tab4:AddButton({
    Name = "狙击手",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载狙击手脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper'))()
    end    
})

Tab4:AddButton({
    Name = "Star动画",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载Star动画脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        DisableFX = false
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher'))()
    end    
})

Tab4:AddButton({
    Name = "Studio里面的人偶Dummy",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "加载中",
            Content = "正在加载人偶脚本...",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        permadeath = true
        fling = true
        allowshiftlock = true
        ctrltp = true
        placeholders = true
        clickfling = false
        highlightflingtargets = true
        discharscripts = true
        flingchangestate = true
        hidedeatheffect = true
        respawntp = 3
        breakjointsmethod = 1
        simrad = true
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy'))()
    end    
})

-- 初始化OrionLib
OrionLib:Init()
