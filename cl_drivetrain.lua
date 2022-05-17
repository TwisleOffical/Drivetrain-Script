local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)

local function RWD()
    if IsPedSittingInAnyVehicle(ped) then

        if (GetPedInVehicleSeat(veh, -1) == ped) then

            GetVehicleHandlingFloat(veh,'CHandlingData', 'fDriveBiasFront')
            SetVehicleHandlingField(veh, 'CHandlingData', 'fDriveBiasFront', 0.000000)

        GetVehicleNumberOfWheels(veh)
        SetVehicleWheelIsPowered(veh, 0, false)
        SetVehicleWheelIsPowered(veh, 1, false)
        SetVehicleWheelIsPowered(veh, 3, true)
        SetVehicleWheelIsPowered(veh, 4, true)

        end
    end
end

local function FWD()

    if IsPedSittingInAnyVehicle(ped) then
        if (GetPedInVehicleSeat(veh, -1) == ped) then

            GetVehicleHandlingFloat(veh, 'CHandlingData', 'fDriveBiasFront')
            SetVehicleHandlingField(veh, 'CHandlingData', 'fDriveBiasFront', 1.000000)

        GetVehicleNumberOfWheels(veh)
        SetVehicleWheelIsPowered(veh, 0, true)
        SetVehicleWheelIsPowered(veh, 1, true)
        SetVehicleWheelIsPowered(veh, 3, false)
        SetVehicleWheelIsPowered(veh, 4, false)

        end
    end
end

local function AWD()

    if IsPedSittingInAnyVehicle(ped) then

        if (GetPedInVehicleSeat(veh, -1) == ped) then

            GetVehicleHandlingFloat(veh, 'CHandlingData', 'fDriveBiasFront')
            SetVehicleHandlingField(veh, 'CHandlingData', 'fDriveBiasFront', 0.020000)

        GetVehicleNumberOfWheels(veh)
        SetVehicleWheelIsPowered(veh, 0, true)
        SetVehicleWheelIsPowered(veh, 1, true)
        SetVehicleWheelIsPowered(veh, 3, true)
        SetVehicleWheelIsPowered(veh, 4, true)
            
        end
    end
end

local function FourWD()

    if IsPedSittingInAnyVehicle(ped) then

        if (GetPedInVehicleSeat(veh, -1) == ped) then

            GetVehicleHandlingFloat(veh, 'CHandlingData', 'fDriveBiasFront')
            SetVehicleHandlingField(veh, 'CHandlingData', 'fDriveBiasFront', 0.500000)

        GetVehicleNumberOfWheels(veh)
        SetVehicleWheelIsPowered(veh, 0, true)
        SetVehicleWheelIsPowered(veh, 1, true)
        SetVehicleWheelIsPowered(veh, 3, true)
        SetVehicleWheelIsPowered(veh, 4, true)
            
        end
    end
end

RegisterCommand(Config.RWD, function()
    RWD()
end)

RegisterCommand(Config.FWD, function()
    FWD()
end)

RegisterCommand(Config.AWD, function()
    AWD()
end)

RegisterCommand(Config.FourWD, function()
    FourWD()
end)
