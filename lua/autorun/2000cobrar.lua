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
		Vector(-24.5,96.7,32),
		Vector(24.5,96.7,32),
	},
	Headlamp_sprites = { 
		Vector(-24.5,96.7,32),
		Vector(24.5,96.7,32),

	},
	Rearlight_sprites = {
		Vector(-33,-96,42),
		Vector(33,-96,42),
		Vector(-28.5, -99, 42),
		Vector(28.5, -99, 42),
		Vector(-23.5, -100, 42),
		Vector(23.5, -100, 42),
	},
	Brakelight_sprites = {
		Vector(-33.8,-96,36.5),
		Vector(33.8,-96,36.5),
		Vector(-29.8, -98, 36.5),
		Vector(29.8, -98, 36.5),

	},
	Reverselight_sprites = {
		Vector(-24.5, -100, 36.5),
		Vector(24.5, -100, 36.5),
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
list.Set( "simfphys_lights", "2000_cobrar", light_table)


local V = {
	Name = "2000 Ford Mustang Cobra R", -- Name of the car in-game 
	Model = "models/sentry/cobrar.mdl", -- machine model (in the tab add-ons and prop auto)
	Category = "[Dryad]SGMCars Muscle", -- category which is car

	Members = {
		Mass = 1904, -- how much your vehicle weights

		AirFriction = -300000, -- just see and hope you get it right

		FrontWheelRadius = 14, -- how big is your front wheel? (those are physical, not visual)
		RearWheelRadius = 14, -- how big is your rear wheel? (those are physical, not visual)

		CustomMassCenter = Vector(0,0,-6), 

		SeatOffset = Vector(-3,-0.2,-4), -- the position of the driver seat
		SeatPitch = 0,
		PassengerSeats = {
		    {
				pos = Vector(16.4,-12,16.5),
				ang = Angle(0,0,12)
			},
			
		},

		ExhaustPositions = { -- where are your exhausts?
        	{
                pos = Vector(45,-22.4,15),
                ang = Angle(90,-90,0),
        	},
        	{
                pos = Vector(-45,-22.4,15),
                ang = Angle(90,-90,0),
        	},
        },

		LightsTable = "2000_cobrar",

		SpeedoMax = 240, -- The maximum speed on the speedometer

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
		SteeringFadeFastSpeed = 935, -- yeah kinda the paticular speed

		TurnSpeed = 6,  -- how fast will it turn? higher is faster. base is 8, but in my opinion, 6 is better.

		MaxGrip = 75, -- watch out, otherwise your car will slip or will roll over its head.
		Efficiency = 0.8, -- how fast you car will go, like acceleration
		GripOffset = -7, -- negative is for the rear and the positive for the front
		BrakePower = 75, -- If set really high, there's a chance your car will fly over his head

		IdleRPM = 720, -- just let it 720, it doesn't matter anyway
		LimitRPM = 6000, -- this is the limit. you can't go higher than the limit
		Revlimiter = true, -- If true - When the speedometer reaches of the red designation, it does not pass on, if false it is ignored
		PeakTorque = 355, -- how fast your wheels spin
		PowerbandStart = 1000, -- when will you transmit first? if set to 1000, it will transmit for the first time at 2000. just take the half of the powerband end
		PowerbandEnd = 5700, -- this is the red limit.
		Turbocharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Supercharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Backfire = false, -- will you car bang bang piew piew out of the exhaust?

		FuelFillPos = Vector(-31.3,-48.7,40.48), -- where can you fill your tank?
		FuelType = FUELTYPE_PETROL, -- type of fuel
		FuelTankSize = 60, -- size of fuel tank

		PowerBias = 1, -- if positive, it's rear wheel drive, if negative, it's front wheel drive. for example, a ford mustang is rear wheel drive (1) and lamborghini are mostly all wheel drive (0)

		EngineSoundPreset = 0,
		
		snd_low = "dryad/daumasugadaaqui/2785a.wav",
		snd_low_revdown = "dryad/daumasugadaaqui/2785a_off.wav",
		snd_mid_revdown = "dryad/daumasugadaaqui/4017a_off.wav",
		snd_high_revdown = "dryad/daumasugadaaqui/5571b_off.wav",
		snd_low_pitch = 1,
		
		snd_gearup = "dryad/daumasugadaaqui/gearupEXT.wav",
		snd_geardown = "dryad/daumasugadaaqui/geardnEXT.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "dryad/daumasugadaaqui/xbow_idle.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "dryad/daumasugadaaqui/4017a.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,

		snd_backfire = "dryad/daumasugadaaqui/backfire_1.wav",
		
		Sound_High = "dryad/daumasugadaaqui/5571b.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "dryad/daumasugadaaqui/horn.wav",
--
		DifferentialGear = 0.68, -- experiment with it.
		Gears = {-0.1,0,0.08,0.18,0.28,0.38,0.48,0.58} -- how many gears do you want?
	}
}
if (file.Exists( "models/sentry/cobrar.mdl", "GAME" )) then -- name of the model (".mdl")
	list.Set( "simfphys_vehicles", "simfphys_cobrar", V ) -- change to any name (for example -  sim_fphys_lalala)
end
