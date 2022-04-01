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
		Vector(-28,106,31),
		Vector(28,106,31),
	},
	Headlamp_sprites = { 
		Vector(-20.75,107,21),
		Vector(-20.75,107,21),
		Vector(20.75,107,21),
		Vector(20.75,107,21),
		Vector(-27.25,107,21),
		Vector(-27.25,107,21),
		Vector(27.25,107,21),
		Vector(27.25,107,21),
	},
	Rearlight_sprites = {
		Vector(-21,-100,34),
		Vector(21,-100,34),
		Vector(-26.5, -100, 34),
		Vector(26.5, -100, 34),
		Vector(-31, -100, 34),
		Vector(31, -100, 34),
	},
	Brakelight_sprites = {
		Vector(-21, -100, 34),
		Vector(-21, -100, 34),
		Vector(21, -100, 34),
		Vector(21, -100, 34),
		Vector(-26.5, -100, 34),
		Vector(-26.5, -100, 34),
		Vector(26.5, -100, 34),
		Vector(26.5, -100, 34),
		Vector(-31, -100, 34),
		Vector(-31, -100, 34),
		Vector(31, -100, 34),
		Vector(31, -100, 34),
		
	},
	Reverselight_sprites = {
		Vector(-26.5, -100, 34),
		Vector(26.5, -100, 34),
		Vector(-21, -100, 34),
		Vector(21, -100, 34),
		Vector(-31, -100, 34),
		Vector(31, -100, 34),
		
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
list.Set( "simfphys_lights", "1970_boss", light_table)


local V = {
	Name = "1970 Ford Mustang Boss 429", -- Name of the car in-game 
	Model = "models/sentry/boss429.mdl", -- machine model (in the tab add-ons and prop auto)
	Category = "[Dryad]SGMCars Muscle", -- category which is car
	

	Members = {
		Mass = 2060, -- how much your vehicle weights

		AirFriction = -300000, -- just see and hope you get it right

		FrontWheelRadius = 15, -- how big is your front wheel? (those are physical, not visual)
		RearWheelRadius = 15, -- how big is your rear wheel? (those are physical, not visual)

		CustomMassCenter = Vector(0,0,-6), 

		SeatOffset = Vector(-3,-0.2,-4), -- the position of the driver seat
		SeatPitch = 0,
		PassengerSeats = {
		    {
				pos = Vector(16.4,2,16.5),
				ang = Angle(0,0,12)
			},		    
{
				pos = Vector(17,-36,16.5),
				ang = Angle(0,0,12)
			},
{
				pos = Vector(-17,-36,16.5),
				ang = Angle(0,0,12)
			},
			
		},

		ExhaustPositions = { -- where are your exhausts?
        	{
                pos = Vector(20,-88,14.3),
                ang = Angle(90,-90,30),
        	},
        	{
                pos = Vector(-20,-88,14.3),
                ang = Angle(90,-90,30),
        	},
        },

		LightsTable = "1970_boss",

		SpeedoMax = 240, -- The maximum speed on the speedometer

		StrengthenSuspension = false,

		FrontHeight = 15, -- the height of the front suspension
		FrontConstant = 67000, -- if it's higher, the suspension is set higher and will move less
		FrontDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		FrontRelativeDamping = 3000, -- just copy the setting above

		RearHeight = 15, -- the height of the rear suspension
		RearConstant = 67000, -- if it's higher, the suspension is set higher and will move less
		RearDamping = 3000, -- if it's higher, the suspension will move less. watch out, don't set too high otherwise your wheels will act weird.
		RearRelativeDamping = 3000, -- just copy the setting above

		FastSteeringAngle = 10, -- how sharp it will turn until it reaches a paticular speed
		SteeringFadeFastSpeed = 1035, -- yeah kinda the paticular speed

		TurnSpeed = 6,  -- how fast will it turn? higher is faster. base is 8, but in my opinion, 6 is better.

		MaxGrip = 70, -- watch out, otherwise your car will slip or will roll over its head.
		Efficiency = 0.85, -- how fast you car will go, like acceleration
		GripOffset = -7, -- negative is for the rear and the positive for the front
		BrakePower = 55, -- If set really high, there's a chance your car will fly over his head

		IdleRPM = 720, -- just let it 720, it doesn't matter anyway
		LimitRPM = 5400, -- this is the limit. you can't go higher than the limit
		Revlimiter = true, -- If true - When the speedometer reaches of the red designation, it does not pass on, if false it is ignored
		PeakTorque = 390, -- how fast your wheels spin
		PowerbandStart = 800, -- when will you transmit first? if set to 1000, it will transmit for the first time at 2000. just take the half of the powerband end
		PowerbandEnd = 5200, -- this is the red limit.
		Turbocharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Supercharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Backfire = true, -- will you car bang bang piew piew out of the exhaust?

		FuelFillPos = Vector(-31.3,-48.7,40.48), -- where can you fill your tank?
		FuelType = FUELTYPE_PETROL, -- type of fuel
		FuelTankSize = 60, -- size of fuel tank

		PowerBias = 1, -- if positive, it's rear wheel drive, if negative, it's front wheel drive. for example, a ford mustang is rear wheel drive (1) and lamborghini are mostly all wheel drive (0)

		EngineSoundPreset = 0,
		
		snd_low = "dryad/ford_f350/3754c.wav",
		snd_low_revdown = "dryad/fordnascar/Cobra_2000_on_ext.wav",
		snd_low_pitch = 1,
		
		snd_gearup = "dryad/fordnascar/MX-5_Cup_shift1_in.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "dryad/fordnascar/ORECA_FLM09_IDLE_IN.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "dryad/fordnascar/Cobra_2500_on_ext.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,

		snd_backfire = "dryad/fordnascar/backfireEXT_2.wav",
		
		Sound_High = "dryad/fordnascar/Cobra_4800_Off_HIGH_EXT.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "dryad/ford_f350/horn.wav",
--
		DifferentialGear = 1, -- experiment with it.
		Gears = {-0.1,0,0.07,0.16,0.23,0.50} -- how many gears do you want?
	}
}
if (file.Exists( "models/sentry/boss429.mdl", "GAME" )) then -- name of the model (".mdl")
	list.Set( "simfphys_vehicles", "simfphys_429", V ) -- change to any name (for example -  sim_fphys_lalala)
end
