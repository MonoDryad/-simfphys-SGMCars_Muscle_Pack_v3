local light_table = {
	L_HeadLampPos = Vector(-24.5,112,32),
	L_HeadLampAng = Angle(10,90,0),

	R_HeadLampPos = Vector(24.5,112,32),
	R_HeadLampAng = Angle(10,90,0),

	L_RearLampPos = Vector(-30,-107,33),
	L_RearLampAng = Angle(0,-90,0),

	R_RearLampPos = Vector(30,-107,33),
	R_RearLampAng = Angle(0,-90,0),
	
	Headlight_sprites = { 
		Vector(-29,89.5,17.8),
		Vector(29,89.5,17.8),
		Vector(-33.7,85,33.5),
		Vector(33.7,85,33.5),
	},
	Headlamp_sprites = { 
		Vector(-29,89.5,17.8),
		Vector(29,89.5,17.8),
		Vector(-33.7,85,33.5),
		Vector(33.7,85,33.5),
	},
	Rearlight_sprites = {
		Vector(-33,-91,38.4),
		Vector(33,-91,38.4),
		Vector(-28.5, -93, 38.4),
		Vector(28.5, -93, 38.4),
		Vector(-23.5, -95, 38.4),
		Vector(23.5, -95, 38.4),
	},
	Brakelight_sprites = {
		Vector(-33,-91,38.4),
		Vector(33,-91,38.4),
		Vector(-28.5, -93, 38.4),
		Vector(28.5, -93, 38.4),
		Vector(-23.5, -95, 38.4),
		Vector(23.5, -95, 38.4),
	},
	Reverselight_sprites = {
		Vector(-33,-91,38.4),
		Vector(33,-91,38.4),
		Vector(-28.5, -93, 38.4),
		Vector(28.5, -93, 38.4),
		Vector(-23.5, -95, 38.4),
		Vector(23.5, -95, 38.4),
	},
	FogLight_sprites = {
		Vector(-31.5,114,14),
		Vector(31.5,114,14),
	},
	Turnsignal_sprites = {
		Left = {
			Vector(-35,108,31),
			Vector(-33.5,-106,37.5),
			Vector(-35,108,30),
			Vector(-32.5,-106,37.5),
			Vector(-35,108,32),
			Vector(-31.5,-106,37.5),
		},
		Right = {
			Vector(35,108,31),
			Vector(33.5,-106,37.5),
			Vector(35,108,30),
			Vector(32.5,-106,37.5),
			Vector(35,108,32),
			Vector(31.5,-106,37.5),
		},
	}
}
list.Set( "simfphys_lights", "2015_gt", light_table)


local V = {
	Name = "2015 Ford Mustang GT", -- Name of the car in-game 
	Model = "models/sentry/15gt_new.mdl", -- machine model (in the tab add-ons and prop auto)
	Category = "[Iar]SGMCars Muscle Pack 2.0", -- category which is car

	Members = {
		Mass = 1604, -- how much your vehicle weights

		AirFriction = -300000, -- just see and hope you get it right

		FrontWheelRadius = 15, -- how big is your front wheel? (those are physical, not visual)
		RearWheelRadius = 15, -- how big is your rear wheel? (those are physical, not visual)

		CustomMassCenter = Vector(0,0,-6), 

		SeatOffset = Vector(-3,-0.2,-4), -- the position of the driver seat
		SeatPitch = 0,
		PassengerSeats = {
		    {
				pos = Vector(16.4,1,19.5),
				ang = Angle(0,0,12)
			},		    
{
				pos = Vector(17,-42,19.5),
				ang = Angle(0,0,12)
			},
{
				pos = Vector(-17,-42,19.5),
				ang = Angle(0,0,12)
			},
			
		},

		ExhaustPositions = { -- where are your exhausts?
        	{
                pos = Vector(19.8,-90.8,17.3),
                ang = Angle(90,-90,0),
        	},
        	{
                pos = Vector(-19.8,-90.8,17.3),
                ang = Angle(90,-90,0),
        	},
        },

		LightsTable = "2015_gt",

		SpeedoMax = 160, -- The maximum speed on the speedometer

		StrengthenSuspension = false,

		FrontHeight = 12, -- the height of the front suspension
		FrontConstant = 47000, -- if it's higher, the suspension is set higher and will move less
		FrontDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		FrontRelativeDamping = 3000, -- just copy the setting above

		RearHeight = 12, -- the height of the rear suspension
		RearConstant = 47000, -- if it's higher, the suspension is set higher and will move less
		RearDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		RearRelativeDamping = 3000, -- just copy the setting above

		FastSteeringAngle = 10, -- how sharp it will turn until it reaches a paticular speed
		SteeringFadeFastSpeed = 535, -- yeah kinda the paticular speed

		TurnSpeed = 6,  -- how fast will it turn? higher is faster. base is 8, but in my opinion, 6 is better.

		MaxGrip = 75, -- watch out, otherwise your car will slip or will roll over its head.
		Efficiency = 1, -- how fast you car will go, like acceleration
		GripOffset = -7, -- negative is for the rear and the positive for the front
		BrakePower = 65, -- If set really high, there's a chance your car will fly over his head

		IdleRPM = 720, -- just let it 720, it doesn't matter anyway
		LimitRPM = 7900, -- this is the limit. you can't go higher than the limit
		Revlimiter = true, -- If true - When the speedometer reaches of the red designation, it does not pass on, if false it is ignored
		PeakTorque = 255, -- how fast your wheels spin
		PowerbandStart = 3250, -- when will you transmit first? if set to 1000, it will transmit for the first time at 2000. just take the half of the powerband end
		PowerbandEnd = 6900, -- this is the red limit.
		Turbocharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Supercharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Backfire = false, -- will you car bang bang piew piew out of the exhaust?

		FuelFillPos = Vector(-31.3,-48.7,40.48), -- where can you fill your tank?
		FuelType = FUELTYPE_PETROL, -- type of fuel
		FuelTankSize = 100, -- size of fuel tank

		PowerBias = 1, -- if positive, it's rear wheel drive, if negative, it's front wheel drive. for example, a ford mustang is rear wheel drive (1) and lamborghini are mostly all wheel drive (0)

		EngineSoundPreset = 9, -- just let that.
--
		DifferentialGear = 0.85, -- experiment with it.
		Gears = {-0.05,0,0.05,0.09,0.12,0.16,0.2,0.24} -- how many gears do you want?
	}
}
if (file.Exists( "models/sentry/15gt_new.mdl", "GAME" )) then -- name of the model (".mdl")
	list.Set( "simfphys_vehicles", "simfphys_gt15", V ) -- change to any name (for example -  sim_fphys_lalala)
end
