-- You Commands
local DriveCommands = {
	["FWD"] = "FWD",
	["RWD"] = "RWD",
	["AWD"] = "AWD",
	["FourWD"] = "FourWD",
}
-- Dont Touch
local DriveBias = {
	["FWD"] = 1.0,
	["RWD"] = 0.0,
	["AWD"] = 0.02,
	["FourWD"] = 0.5,
}
-- Add Your Car Names Here
local WLVeh = {
    "adder",
}

function SetDriveChain(driveType)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    local model = GetEntityModel(veh)

        for i = 1, #WLVeh do
            if GetHashKey(WLVeh[i]) == model then

                if veh ~= 0 and GetPedInVehicleSeat(veh, -1) == ped then

                    SetVehicleHandlingField(veh, 'CHandlingData', 'fDriveBiasFront', DriveBias[driveType])
                    SetVehicleWheelIsPowered(veh, 0, driveType ~= "RWD")
                    SetVehicleWheelIsPowered(veh, 1, driveType ~= "RWD")
                    SetVehicleWheelIsPowered(veh, 3, driveType ~= "FWD")
                    SetVehicleWheelIsPowered(veh, 4, driveType ~= "FWD")
            end
        end
    end
end

for driveType,cmdName in pairs(DriveCommands) do
	RegisterCommand(cmdName, function() SetDriveChain(driveType) end)
end
