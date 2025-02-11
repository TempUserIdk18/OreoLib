# Oreo Lib Documentation  
This documentation covers the **stable release** of Oreo Lib.  

## Getting Started  
To load the library, use the following command:  
```lua
local OreoLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TempUserIdk18/OreoLib/refs/heads/main/OreoLibSource.lua"))()
```

---

## Creating a Window  
```lua
local Window = OreoLib:MakeWindow({
    Name = "Title of the library",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OreoTest",
    IntroEnabled = true,
    IntroText = "Welcome!",
    IntroIcon = "rbxassetid://12345678",
    Icon = "rbxassetid://12345678",
    CloseCallback = function() print("Window closed!") end
})
```
### Arguments:
- `Name` *(string)* – Title of the UI window.  
- `HidePremium` *(bool)* – Hides premium status in user details.  
- `SaveConfig` *(bool)* – Enables automatic saving of configurations.  
- `ConfigFolder` *(string)* – Folder name for storing configurations.  
- `IntroEnabled` *(bool)* – Enables an intro animation.  
- `IntroText` *(string)* – Text displayed in the intro animation.  
- `IntroIcon` *(string)* – URL of the intro animation icon.  
- `Icon` *(string)* – URL of the window’s icon.  
- `CloseCallback` *(function)* – Function executed when the window is closed.  

---

## Creating a Tab  
```lua
local Tab = Window:MakeTab({
    Name = "Tab 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
```
### Arguments:
- `Name` *(string)* – Title of the tab.  
- `Icon` *(string)* – Icon image for the tab.  
- `PremiumOnly` *(bool)* – Restricts tab access to premium users.  

---

## Creating a Section  
```lua
local Section = Tab:AddSection({
    Name = "Section Name"
})
```
### Arguments:
- `Name` *(string)* – Title of the section.  

Elements can be added inside sections the same way they are added to tabs.

---

## Creating a Notification  
```lua
OreoLib:MakeNotification({
    Name = "Title!",
    Content = "Notification content...",
    Image = "rbxassetid://4483345998",
    Time = 5
})
```
### Arguments:
- `Name` *(string)* – Title of the notification.  
- `Content` *(string)* – Notification message.  
- `Image` *(string)* – Icon image for the notification.  
- `Time` *(number)* – Duration (in seconds) before it disappears.  

---

## Creating a Button  
```lua
Tab:AddButton({
    Name = "Button!",
    Callback = function()
        print("Button pressed")
    end    
})
```
### Arguments:
- `Name` *(string)* – Button label.  
- `Callback` *(function)* – Function executed when the button is clicked.  

---

## Creating a Toggle (Checkbox)  
```lua
Tab:AddToggle({
    Name = "This is a toggle!",
    Default = false,
    Callback = function(Value)
        print(Value)
    end    
})
```
### Arguments:
- `Name` *(string)* – Toggle label.  
- `Default` *(bool)* – Default state of the toggle.  
- `Callback` *(function)* – Function executed when the toggle state changes.  

#### Changing the Value of a Toggle  
```lua
CoolToggle:Set(true)
```

---

## Creating a Color Picker  
```lua
Tab:AddColorpicker({
    Name = "Colorpicker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        print(Value)
    end    
})
```
### Arguments:
- `Name` *(string)* – Label for the color picker.  
- `Default` *(Color3)* – Default selected color.  
- `Callback` *(function)* – Function executed when the color is changed.  

#### Setting the Color Picker’s Value  
```lua
ColorPicker:Set(Color3.fromRGB(255, 255, 255))
```

---

## Creating a Slider  
```lua
Tab:AddSlider({
    Name = "Slider",
    Min = 0,
    Max = 20,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "bananas",
    Callback = function(Value)
        print(Value)
    end    
})
```
### Arguments:
- `Name` *(string)* – Label for the slider.  
- `Min` *(number)* – Minimum value.  
- `Max` *(number)* – Maximum value.  
- `Default` *(number)* – Default slider position.  
- `Increment` *(number)* – Step size when sliding.  

#### Changing the Slider’s Value  
```lua
Slider:Set(2)
```

---

## Finalizing the UI (Required)  
At the end of your script, add the following line to initialize the UI:  
```lua
OreoLib:Init()
```

---

## Additional Features  
### Changing Theme  
```lua
Window:SetTheme("Ocean")
```
### Changing Font  
```lua
Window:SetFont(Enum.Font.Arcade)
```
### Enabling the Watermark  
```lua
Window:SetWatermark(true)
```
### Destroying the UI  
```lua
OreoLib:Destroy()
```

