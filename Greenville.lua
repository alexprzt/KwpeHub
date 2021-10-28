local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/alexprzt/Roblox-Exploiting/main/KwpeHubLib"))()
local win = lib:Window("Kwpe Hub - Greenville",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)


-- [ carTuningTab ]

local carTuningTab = win:Tab("Car Tuning")

carTuningTab:Label("Engine")


carTuningTab:Slider("Horsepower",5,10000,350, function(t)
    local Tune = {}

    Tune.Horsepower = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Slider("Peak RPM",1000,12000,6000, function(t)
    local Tune = {}

    Tune.PeakRPM = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Slider("Idle RPM",900,5000,1000, function(t)
    local Tune = {}

    Tune.IdleRPM = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Slider("Redline",1000,25000,5000, function(t)
    local Tune = {}

    Tune.Redline = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Label("Vehicle Suspension")

carTuningTab:SliderDecimals("Ride Height +",1,5,1, function(t)
    local Character = game:GetService("Players").LocalPlayer.Character
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    local VehicleSeat = Humanoid.SeatPart
    local Vehicle = VehicleSeat:FindFirstAncestorWhichIsA("Model")
    if table.find({"wheels", "body", "misc", "core"}, Vehicle.Name) then
        Vehicle = Vehicle.Parent
    end
    for index, value in pairs(Vehicle:GetDescendants()) do 
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FL") then
            value.MaxLength = 5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FR") then
            value.MaxLength = 5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RL") then
            value.MaxLength = 5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RR") then
            value.MaxLength = 5
            value.MinLength = t
        end
    end
end)

carTuningTab:SliderDecimals("Ride Height -",1,2,1.20, function(t)
    local Character = game:GetService("Players").LocalPlayer.Character
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    local VehicleSeat = Humanoid.SeatPart
    local Vehicle = VehicleSeat:FindFirstAncestorWhichIsA("Model")
    if table.find({"wheels", "body", "misc", "core"}, Vehicle.Name) then
        Vehicle = Vehicle.Parent
    end
    for index, value in pairs(Vehicle:GetDescendants()) do 
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FL") then
            value.MaxLength = -5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FR") then
            value.MaxLength = -5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RL") then
            value.MaxLength = -5
            value.MinLength = t
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RR") then
            value.MaxLength = -5
            value.MinLength = t
        end
    end
end)

carTuningTab:Button("Reset Ride Height", function()
	local Character = game:GetService("Players").LocalPlayer.Character
    local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
    local VehicleSeat = Humanoid.SeatPart
    local Vehicle = VehicleSeat:FindFirstAncestorWhichIsA("Model")
    if table.find({"wheels", "body", "misc", "core"}, Vehicle.Name) then
        Vehicle = Vehicle.Parent
    end
    for index, value in pairs(Vehicle:GetDescendants()) do 
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FL") then
            value.MaxLength = 5
            value.MinLength = 1
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("FR") then
            value.MaxLength = 5
            value.MinLength = 1
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RL") then
            value.MaxLength = 5
            value.MinLength = 1
        end
        if value:IsA("SpringConstraint") and value:FindFirstAncestor("RR") then
            value.MaxLength = 5
            value.MinLength = 1
        end
    end
end)

carTuningTab:Label("Vehicle Transmission")


carTuningTab:Slider("Final Drive",1,10,1, function(t)
    local Tune = {}

    Tune.FinalDrive = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Dropdown("Drivetrain",{"AWD","FWD","RWD"}, function(t)
    local Tune = {}

    Tune.Config = t --"FWD" , "RWD" , "AWD"
        
    tune = Tune
    local newreq = require
    local oldreq = function(...)
        print({...})
        local returnval = newreq(...)
        if tostring(...) == 'A-Chassis Tune' then
            for i,v in pairs(returnval) do
                if tune[i] then
                    returnval[i] = tune[i]
                end
            end
        end

         return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

carTuningTab:Label("Misc")


carTuningTab:Slider("RevBounce",0,4000,1, function(t)
    local Tune = {}

    Tune.RevBounce = t

    tune = Tune
    local newreq = require
    local oldreq = function(...)
    print({...})
    local returnval = newreq(...)
    if tostring(...) == 'A-Chassis Tune' then
        for i,v in pairs(returnval) do
            if tune[i] then
                returnval[i] = tune[i]
                end
        end
    end
    
    return returnval
    end
    getgenv().require = oldreq
    getrenv().require = oldreq
end)

-- [ carStats ]

local carStatsTab = win:Tab("Car Stats")

carStatsTab:Button("Refuel Car", function()
    local A_1 = 69
	local Event = game:GetService("ReplicatedStorage").Remote.Refuel
	Event:FireServer(A_1)

    lib:Notification("Successfully!", "Your car has been refueled.", "Ok")
end)

carStatsTab:Button("Wash Car", function()
    local newName = game.Players.LocalPlayer.Name

    local A_1 = game:GetService("Workspace").SessionVehicles[newName .. "-Car"]
    local Event = game:GetService("ReplicatedStorage").Remote.CarWash
    Event:FireServer(A_1)

    lib:Notification("Successfully!", "Your car has been washed.", "Ok")
end)


-- [ uiSettings ]

local uiSettingsTab = win:Tab("UI Settings")


uiSettingsTab:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)