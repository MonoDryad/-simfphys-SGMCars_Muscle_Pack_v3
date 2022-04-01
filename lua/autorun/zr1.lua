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
		Vector(-27,86,43.7),
		Vector(27,86,43.7),
		Vector(-32,85.5,43.7),
		Vector(32,85.5,43.7),
		Vector(-35,93,29),
		Vector(35,93,29),
		
	},
	Headlamp_sprites = { 
		Vector(-27,86,43.7),
		Vector(27,86,43.7),
		Vector(-32,85.5,43.7),
		Vector(32,85.5,43.7),
		Vector(-35,93,29),
		Vector(35,93,29),
	},
	Rearlight_sprites = {
		Vector(-32.5,-102.5,52),
		Vector(32.5,-102.5,52),
		Vector(-21, -102.5, 52),
		Vector(21, -102.5, 52),
	},
	Brakelight_sprites = {
		Vector(-1.5, -105, 59),
		Vector(1.5, -105, 59),
		Vector(-1.5, -105, 59),
		Vector(1.5, -105, 59),
		Vector(-1.5, -105, 59),
		Vector(1.5, -105, 59),
		Vector(-42,-87,47.8),
		Vector(42,-87,47.8),
		Vector(-42,-89,48),
		Vector(42,-89,48),
		Vector(-42,-91,48.1),
		Vector(42,-91,48.1),
	},
	Reverselight_sprites = {
		Vector(-27.5, -103, 28),
		Vector(27.5, -103, 28),
		Vector(-21.5, -103, 28),
		Vector(21.5, -103, 28),
		Vector(-24.5, -103, 28),
		Vector(24.5, -103, 28),
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
list.Set( "simfphys_lights", "zr1", light_table)


local V = {
	Name = "Chevrolet Corvette ZR1", -- Name of the car in-game 
	Model = "models/sentry/zr1.mdl", -- machine model (in the tab add-ons and prop auto)
	Category = "[Dryad]SGMCars Muscle", -- category which is car

	Members = {
		Mass = 1504, -- how much your vehicle weights

		AirFriction = -300000, -- just see and hope you get it right

		FrontWheelRadius = 16, -- how big is your front wheel? (those are physical, not visual)
		RearWheelRadius = 16, -- how big is your rear wheel? (those are physical, not visual)

		CustomMassCenter = Vector(0,0,-6), 

		SeatOffset = Vector(-3,-0.2,-4), -- the position of the driver seat
		SeatPitch = 0,
		PassengerSeats = {
		    {
				pos = Vector(19.8,-23,21.5),
				ang = Angle(0,0,12)
			},		    
			
		},

		ExhaustPositions = { -- where are your exhausts?
        	{
                pos = Vector(4.8,-90.8,28.3),
                ang = Angle(90,-90,0),
        	},
        	{
                pos = Vector(-4.8,-90.8,28.3),
                ang = Angle(90,-90,0),
        	},
        },

		LightsTable = "zr1",

		SpeedoMax = 240, -- The maximum speed on the speedometer

		StrengthenSuspension = true,

		FrontHeight = 11, -- the height of the front suspension
		FrontConstant = 31000, -- if it's higher, the suspension is set higher and will move less
		FrontDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		FrontRelativeDamping = 3000, -- just copy the setting above

		RearHeight = 11, -- the height of the rear suspension
		RearConstant = 31000, -- if it's higher, the suspension is set higher and will move less
		RearDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		RearRelativeDamping = 3000, -- just copy the setting above

		FastSteeringAngle = 10, -- how sharp it will turn until it reaches a paticular speed
		SteeringFadeFastSpeed = 1035, -- yeah kinda the paticular speed

		TurnSpeed = 8,  -- how fast will it turn? higher is faster. base is 8, but in my opinion, 6 is better.

		MaxGrip = 50, -- watch out, otherwise your car will slip or will roll over its head.
		Efficiency = 1, -- how fast you car will go, like acceleration
		GripOffset = -6, -- negative is for the rear and the positive for the front
		BrakePower = 51, -- If set really high, there's a chance your car will fly over his head

		IdleRPM = 720, -- just let it 720, it doesn't matter anyway
		LimitRPM = 6900, -- this is the limit. you can't go higher than the limit
		Revlimiter = true, -- If true - When the speedometer reaches of the red designation, it does not pass on, if false it is ignored
		PeakTorque = 300, -- how fast your wheels spin
		PowerbandStart = 1450, -- when will you transmit first? if set to 1000, it will transmit for the first time at 2000. just take the half of the powerband end
		PowerbandEnd = 6500, -- this is the red limit.
		Turbocharged = true, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Supercharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Backfire = false, -- will you car bang bang piew piew out of the exhaust?

		FuelFillPos = Vector(-31.3,-48.7,40.48), -- where can you fill your tank?
		FuelType = FUELTYPE_PETROL, -- type of fuel
		FuelTankSize = 110, -- size of fuel tank

		PowerBias = 1, -- if positive, it's rear wheel drive, if negative, it's front wheel drive. for example, a ford mustang is rear wheel drive (1) and lamborghini are mostly all wheel drive (0)

		EngineSoundPreset = 3, -- just let that.
--
		DifferentialGear = 0.9, -- experiment with it.
		Gears = {-0.1,0,0.1,0.13,0.19,0.25,0.31,0.36} -- how many gears do you want?
	}
}
if (file.Exists( "models/sentry/zr1.mdl", "GAME" )) then -- name of the model (".mdl")
	list.Set( "simfphys_vehicles", "simfphys_zr1", V ) -- change to any name (for example -  sim_fphys_lalala)
end
