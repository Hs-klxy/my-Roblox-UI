local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local OrionLib = {
    Elements = {},
    ThemeObjects = {},
    Connections = {},
    Flags = {},
    Themes = {
        iOS = {
            Main = Color3.fromRGB(28, 28, 30),     -- 主背景色 (深灰)
            Second = Color3.fromRGB(44, 44, 46),   -- 次级背景色 (浅灰)
            Stroke = Color3.fromRGB(60, 60, 67),   -- 边框/分隔线颜色
            Divider = Color3.fromRGB(60, 60, 67),  -- 分隔线颜色
            Text = Color3.fromRGB(242, 242, 247),  -- 主要文本颜色
            TextDark = Color3.fromRGB(174, 174, 178), -- 次要文本颜色
            Blue = Color3.fromRGB(10, 132, 255),   -- iOS蓝色
            SwitchOn = Color3.fromRGB(10, 132, 255), -- 开关开启颜色
            SwitchOff = Color3.fromRGB(120, 120, 128) -- 开关关闭颜色
        }
    },
    SelectedTheme = "iOS",
    Folder = nil,
    SaveCfg = false
}

-- 其余代码保持不变...

function OrionLib:MakeWindow(WindowConfig)
    local FirstTab = true
    local Minimized = false
    local Loaded = false
    local UIHidden = false

    WindowConfig = WindowConfig or {}
    WindowConfig.Name = WindowConfig.Name or "iOS Settings"
    WindowConfig.ConfigFolder = WindowConfig.ConfigFolder or WindowConfig.Name
    WindowConfig.SaveConfig = WindowConfig.SaveConfig or false
    WindowConfig.HidePremium = WindowConfig.HidePremium or false
    if WindowConfig.IntroEnabled == nil then
        WindowConfig.IntroEnabled = false
    end
    WindowConfig.IntroText = WindowConfig.IntroText or "iOS Settings"
    WindowConfig.CloseCallback = WindowConfig.CloseCallback or function() end
    WindowConfig.ShowIcon = WindowConfig.ShowIcon or false
    WindowConfig.Icon = WindowConfig.Icon or "rbxassetid://8834748103"
    WindowConfig.IntroIcon = WindowConfig.IntroIcon or "rbxassetid://8834748103"
    OrionLib.Folder = WindowConfig.ConfigFolder
    OrionLib.SaveCfg = WindowConfig.SaveConfig

    -- 创建iOS风格窗口
    local TabHolder = AddThemeObject(SetChildren(SetProps(MakeElement("ScrollFrame", Color3.fromRGB(255, 255, 255), 0), {
        Size = UDim2.new(0, 180, 1, -50),
        Position = UDim2.new(0, 0, 0, 50),
        BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second,
        BorderSizePixel = 0
    }), {
        MakeElement("List"),
        MakeElement("Padding", 8, 0, 0, 8)
    }), "Second")

    AddConnection(TabHolder.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
        TabHolder.CanvasSize = UDim2.new(0, 0, 0, TabHolder.UIListLayout.AbsoluteContentSize.Y + 16)
    end)

    -- 顶部栏按钮
    local CloseBtn = SetChildren(SetProps(MakeElement("Button"), {
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 10, 0, 15),
        BackgroundTransparency = 1
    }), {
        SetProps(MakeElement("Image", "rbxassetid://7072725342"), {
            Size = UDim2.new(1, 0, 1, 0),
            ImageColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Text
        })
    })

    local MinimizeBtn = SetChildren(SetProps(MakeElement("Button"), {
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 40, 0, 15),
        BackgroundTransparency = 1
    }), {
        SetProps(MakeElement("Image", "rbxassetid://7072719338"), {
            Size = UDim2.new(1, 0, 1, 0),
            ImageColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Text,
            Name = "Ico"
        })
    })

    local DragPoint = SetProps(MakeElement("TFrame"), {
        Size = UDim2.new(1, 0, 0, 50)
    })

    -- 主窗口
    local MainWindow = AddThemeObject(SetChildren(SetProps(MakeElement("Frame"), {
        Parent = Orion,
        Position = UDim2.new(0.5, -307, 0.5, -172),
        Size = UDim2.new(0, 615, 0, 344),
        ClipsDescendants = true,
        Active = true,
        Draggable = true,
        BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Main,
        BorderSizePixel = 0
    }), {
        SetChildren(SetProps(MakeElement("Frame"), {
            Size = UDim2.new(1, 0, 0, 50),
            Name = "TopBar",
            BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second,
            BorderSizePixel = 0
        }), {
            AddThemeObject(SetProps(MakeElement("Label", WindowConfig.Name, 16), {
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                Font = Enum.Font.SourceSansSemibold,
                TextXAlignment = Enum.TextXAlignment.Center
            }), "Text"),
            CloseBtn,
            MinimizeBtn
        }),
        DragPoint,
        TabHolder
    }), "Main")

    MakeDraggable(DragPoint, MainWindow)

    -- 关闭和最小化按钮功能
    AddConnection(CloseBtn.MouseButton1Up, function()
        MainWindow.Visible = false
        UIHidden = true
        WindowConfig.CloseCallback()
    end)

    AddConnection(UserInputService.InputBegan, function(Input)
        if Input.KeyCode == Enum.KeyCode.RightShift and UIHidden then
            MainWindow.Visible = true
        end
    end)

    AddConnection(MinimizeBtn.MouseButton1Up, function()
        if Minimized then
            TweenService:Create(MainWindow, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, 615, 0, 344)}):Play()
            MinimizeBtn.Ico.Image = "rbxassetid://7072719338"
            wait(.02)
            MainWindow.ClipsDescendants = false
            TabHolder.Visible = true
        else
            MainWindow.ClipsDescendants = true
            MinimizeBtn.Ico.Image = "rbxassetid://7072720870"
            TweenService:Create(MainWindow, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 50)}):Play()
            wait(0.1)
            TabHolder.Visible = false    
        end
        Minimized = not Minimized
    end)

    local TabFunction = {}
    function TabFunction:MakeTab(TabConfig)
        TabConfig = TabConfig or {}
        TabConfig.Name = TabConfig.Name or "Tab"
        TabConfig.Icon = TabConfig.Icon or ""
        TabConfig.PremiumOnly = TabConfig.PremiumOnly or false

        local TabFrame = SetChildren(SetProps(MakeElement("Button"), {
            Size = UDim2.new(1, -16, 0, 40),
            Parent = TabHolder,
            BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second,
            AutoButtonColor = false
        }), {
            MakeElement("Corner", 0, 10),
            AddThemeObject(SetProps(MakeElement("Label", TabConfig.Name, 16), {
                Size = UDim2.new(1, -40, 1, 0),
                Position = UDim2.new(0, 40, 0, 0),
                Font = Enum.Font.SourceSans,
                TextTransparency = 0.4,
                Name = "Title"
            }), "Text")
        })

        local Container = AddThemeObject(SetChildren(SetProps(MakeElement("ScrollFrame", Color3.fromRGB(255, 255, 255), 0), {
            Size = UDim2.new(1, -180, 1, -50),
            Position = UDim2.new(0, 180, 0, 50),
            Parent = MainWindow,
            Visible = false,
            Name = "ItemContainer",
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ScrollBarThickness = 5
        }), {
            MakeElement("List", 0, 0),
            MakeElement("Padding", 0, 0, 0, 0)
        }), "Divider")

        AddConnection(Container.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
            Container.CanvasSize = UDim2.new(0, 0, 0, Container.UIListLayout.AbsoluteContentSize.Y)
        end)

        if FirstTab then
            FirstTab = false
            TabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 52) -- 选中状态更亮的灰色
            TabFrame.Title.TextTransparency = 0
            TabFrame.Title.Font = Enum.Font.SourceSansSemibold
            Container.Visible = true
        end

        AddConnection(TabFrame.MouseButton1Click, function()
            for _, Tab in next, TabHolder:GetChildren() do
                if Tab:IsA("TextButton") then
                    Tab.BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second
                    Tab.Title.Font = Enum.Font.SourceSans
                    TweenService:Create(Tab.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0.4}):Play()
                end
            end
            for _, ItemContainer in next, MainWindow:GetChildren() do
                if ItemContainer.Name == "ItemContainer" then
                    ItemContainer.Visible = false
                end
            end
            TabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 52) -- 选中状态更亮的灰色
            TweenService:Create(TabFrame.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
            TabFrame.Title.Font = Enum.Font.SourceSansSemibold
            Container.Visible = true
        end)

        local function GetElements(ItemParent)
            local ElementFunction = {}
            
            function ElementFunction:AddSection(SectionConfig)
                SectionConfig.Name = SectionConfig.Name or "Section"

                local SectionFrame = SetChildren(SetProps(MakeElement("Frame"), {
                    Size = UDim2.new(1, 0, 0, 40),
                    Parent = ItemParent,
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0
                }), {
                    AddThemeObject(SetProps(MakeElement("Label", SectionConfig.Name, 14), {
                        Size = UDim2.new(1, -20, 1, 0),
                        Position = UDim2.new(0, 20, 0, 0),
                        Font = Enum.Font.SourceSansSemibold,
                        TextXAlignment = Enum.TextXAlignment.Left
                    }), "TextDark")
                })
                
                local SectionFunction = {}
                return SectionFunction
            end
            
            function ElementFunction:AddLabel(LabelConfig)
                LabelConfig = LabelConfig or {}
                LabelConfig.Name = LabelConfig.Name or "Label"
                LabelConfig.Value = LabelConfig.Value or "Value"

                local LabelFrame = SetChildren(SetProps(MakeElement("Frame"), {
                    Size = UDim2.new(1, 0, 0, 44),
                    Parent = ItemParent,
                    BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second,
                    BorderSizePixel = 0
                }), {
                    MakeElement("Corner", 0, 10),
                    AddThemeObject(SetProps(MakeElement("Label", LabelConfig.Name, 16), {
                        Size = UDim2.new(0.5, -20, 1, 0),
                        Position = UDim2.new(0, 20, 0, 0),
                        Font = Enum.Font.SourceSans,
                        TextXAlignment = Enum.TextXAlignment.Left
                    }), "Text"),
                    AddThemeObject(SetProps(MakeElement("Label", LabelConfig.Value, 16), {
                        Size = UDim2.new(0.5, -20, 1, 0),
                        Position = UDim2.new(0.5, 0, 0, 0),
                        Font = Enum.Font.SourceSans,
                        TextXAlignment = Enum.TextXAlignment.Right,
                        TextColor3 = OrionLib.Themes[OrionLib.SelectedTheme].TextDark
                    }), "TextDark")
                })

                local LabelFunction = {}
                function LabelFunction:Set(ToChange)
                    LabelFrame:FindFirstChildWhichIsA("TextLabel", true).Text = ToChange
                end
                return LabelFunction
            end
            
            function ElementFunction:AddToggle(ToggleConfig)
                ToggleConfig = ToggleConfig or {}
                ToggleConfig.Name = ToggleConfig.Name or "Toggle"
                ToggleConfig.Default = ToggleConfig.Default or false

                local Toggle = {Value = ToggleConfig.Default}

                local ToggleFrame = SetChildren(SetProps(MakeElement("Frame"), {
                    Size = UDim2.new(1, 0, 0, 44),
                    Parent = ItemParent,
                    BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second,
                    BorderSizePixel = 0
                }), {
                    MakeElement("Corner", 0, 10),
                    AddThemeObject(SetProps(MakeElement("Label", ToggleConfig.Name, 16), {
                        Size = UDim2.new(0.7, -20, 1, 0),
                        Position = UDim2.new(0, 20, 0, 0),
                        Font = Enum.Font.SourceSans,
                        TextXAlignment = Enum.TextXAlignment.Left
                    }), "Text")
                })

                -- iOS风格开关
                local ToggleSwitch = SetChildren(SetProps(MakeElement("Frame"), {
                    Size = UDim2.new(0, 51, 0, 31),
                    Position = UDim2.new(1, -40, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundColor3 = Toggle.Value and OrionLib.Themes[OrionLib.SelectedTheme].SwitchOn or OrionLib.Themes[OrionLib.SelectedTheme].SwitchOff,
                    BorderSizePixel = 0
                }), {
                    MakeElement("Corner", 1, 0),
                    SetProps(MakeElement("Frame", {
                        Size = UDim2.new(0, 27, 0, 27),
                        Position = UDim2.new(0, 2, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                        BorderSizePixel = 0
                    }), {
                        MakeElement("Corner", 1, 0)
                    })
                })

                ToggleSwitch.Parent = ToggleFrame

                local Click = SetProps(MakeElement("Button"), {
                    Size = UDim2.new(1, 0, 1, 0),
                    BackgroundTransparency = 1,
                    Parent = ToggleFrame
                })

                function Toggle:Set(Value)
                    self.Value = Value
                    TweenService:Create(ToggleSwitch, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        BackgroundColor3 = Toggle.Value and OrionLib.Themes[OrionLib.SelectedTheme].SwitchOn or OrionLib.Themes[OrionLib.SelectedTheme].SwitchOff
                    }):Play()
                    TweenService:Create(ToggleSwitch:FindFirstChildWhichIsA("Frame"), TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Position = UDim2.new(0, Toggle.Value and 22 or 2, 0.5, 0)
                    }):Play()
                    if ToggleConfig.Callback then
                        ToggleConfig.Callback(Toggle.Value)
                    end
                end

                AddConnection(Click.MouseButton1Click, function()
                    Toggle:Set(not Toggle.Value)
                end)

                Toggle:Set(Toggle.Value)
                return Toggle
            end

            return ElementFunction
        end

        local ElementFunction = GetElements(Container)

        return ElementFunction
    end
    
    return TabFunction
end
