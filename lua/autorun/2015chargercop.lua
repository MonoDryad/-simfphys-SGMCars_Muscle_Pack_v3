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
		Vector(-35,112,17.5),
		Vector(35,112,17.5),
		Vector(-30,112,17.5),
		Vector(30,112,17.5),
		Vector(-31,114,17.5),
		Vector(31,114,17.5),
		Vector(-27,116,17.5),
		Vector(27,116,17.5),
		Vector(-33,110,35.5),
		Vector(33,110,35.5),
		Vector(-30.5,111,35),
		Vector(30.5,111,35),
		Vector(-28,113,34.8),
		Vector(28,113,34.8),
	},
	Headlamp_sprites = { 
		Vector(-35,112,17.5),
		Vector(35,112,17.5),
		Vector(-30,112,17.5),
		Vector(30,112,17.5),
		Vector(-31,114,17.5),
		Vector(31,114,17.5),
		Vector(-27,116,17.5),
		Vector(27,116,17.5),
		Vector(-33,110,35.5),
		Vector(33,110,35.5),
		Vector(-30.5,111,35),
		Vector(30.5,111,35),
		Vector(-28,113,34.8),
		Vector(28,113,34.8),
	},
	Rearlight_sprites = {
		Vector(-29.3,-114,44.5),
		Vector(29.3,-114,44.5),
		Vector(-24.7, -114, 44.5),
		Vector(24.7, -114, 44.5),
		Vector(-25.7, -114, 44.5),
		Vector(25.7, -114, 44.5),
		Vector(-26.7, -114, 44.5),
		Vector(26.7, -114, 44.5),
		Vector(-31,-113.5,44.8),
		Vector(31,-113.5,44.8),
		Vector(-33,-113.5,44.9),
		Vector(33,-113.5,44.9),
		Vector(-35,-113,45),
		Vector(35,-113,45),
		Vector(-37,-112,45.1),
		Vector(37,-112,45.1),
		Vector(-38,-110,45.2),
		Vector(38,-110,45.2),
	},
	Brakelight_sprites = {
		Vector(-29.3,-114,44.5),
		Vector(29.3,-114,44.5),
		Vector(-24.7, -114, 44.5),
		Vector(24.7, -114, 44.5),
		Vector(-25.7, -114, 44.5),
		Vector(25.7, -114, 44.5),
		Vector(-26.7, -114, 44.5),
		Vector(26.7, -114, 44.5),
		Vector(-31,-113.5,44.8),
		Vector(31,-113.5,44.8),
		Vector(-33,-113.5,44.9),
		Vector(33,-113.5,44.9),
		Vector(-35,-113,45),
		Vector(35,-113,45),
		Vector(-37,-112,45.1),
		Vector(37,-112,45.1),
		Vector(-38,-110,45.2),
		Vector(38,-110,45.2),
	},
	Reverselight_sprites = {
		Vector(-24,-114,46),
		Vector(24,-114,46),
		Vector(-26, -114, 46),
		Vector(26, -114, 46),
		Vector(-28, -114, 46),
		Vector(28, -114, 46),
		Vector(-30, -114, 46),
		Vector(30, -114, 46),
		Vector(-32,-113.5,46),
		Vector(32,-113.5,46),
		Vector(-34,-113.5,46),
		Vector(34,-113.5,46),
		Vector(-36,-113,46),
		Vector(36,-113,46),
		Vector(-38,-112,46),
		Vector(38,-112,46),
		Vector(-22,-110,46),
		Vector(22,-110,46),
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
list.Set( "simfphys_lights", "2015_chagercop", light_table)


local V = {
	Name = "2015 Dodge Charger RT Cop", -- Name of the car in-game 
	Model = "models/sentry/15charger_new_cop.mdl", -- machine model (in the tab add-ons and prop auto)
	Category = "[Dryad]SGMCars Muscle", -- category which is car

	Members = {
		Mass = 2204, -- how much your vehicle weights

		AirFriction = -300000, -- just see and hope you get it right

		FrontWheelRadius = 18, -- how big is your front wheel? (those are physical, not visual)
		RearWheelRadius = 18, -- how big is your rear wheel? (those are physical, not visual)

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
                pos = Vector(19.8,-112.8,17.3),
                ang = Angle(90,-90,0),
        	},
        	{
                pos = Vector(-19.8,-112.8,17.3),
                ang = Angle(90,-90,0),
        	},
        },

		LightsTable = "2015_chagercop",

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
		SteeringFadeFastSpeed = 535, -- yeah kinda the paticular speed

		TurnSpeed = 6,  -- how fast will it turn? higher is faster. base is 8, but in my opinion, 6 is better.

		MaxGrip = 70, -- watch out, otherwise your car will slip or will roll over its head.
		Efficiency = 0.75, -- how fast you car will go, like acceleration
		GripOffset = -6, -- negative is for the rear and the positive for the front
		BrakePower = 65, -- If set really high, there's a chance your car will fly over his head

		IdleRPM = 720, -- just let it 720, it doesn't matter anyway
		LimitRPM = 5500, -- this is the limit. you can't go higher than the limit
		Revlimiter = true, -- If true - When the speedometer reaches of the red designation, it does not pass on, if false it is ignored
		PeakTorque = 410, -- how fast your wheels spin
		PowerbandStart = 1050, -- when will you transmit first? if set to 1000, it will transmit for the first time at 2000. just take the half of the powerband end
		PowerbandEnd = 5240, -- this is the red limit.
		Turbocharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Supercharged = false, -- check car information on the internet before using it; is the car turbo- or supercharged?
		Backfire = false, -- will you car bang bang piew piew out of the exhaust?

		FuelFillPos = Vector(-31.3,-48.7,40.48), -- where can you fill your tank?
		FuelType = FUELTYPE_PETROL, -- type of fuel
		FuelTankSize = 100, -- size of fuel tank

		PowerBias = 1, -- if positive, it's rear wheel drive, if negative, it's front wheel drive. for example, a ford mustang is rear wheel drive (1) and lamborghini are mostly all wheel drive (0)

		EngineSoundPreset = 0,
		
		snd_low = "dryad/nissanskygtr/mid_2772b.wav",
		snd_low_revdown = "dryad/daumasugadaaqui/xbow_off_2500.wav",
		snd_mid_revdown = "dryad/daumasugadaaqui/xbow_off_4500.wav",
		snd_high_revdown = "dryad/daumasugadaaqui/xbow_off_7250.wav",
		snd_low_pitch = 1,
		
		snd_gearup = "dryad/nissanskygtr/gear2_up.wav",
		snd_geardown = "dryad/daumasugadaaqui/geardnEXT.wav",

		snd_mid_pitch = 1,

		Sound_Idle = "dryad/nissanskygtr/ext_idle1036.wav",
		Sound_IdlePitch = 1,
		
		Sound_Mid = "dryad/nissanskygtr/mid_5867b.wav",
		Sound_MidPitch = 1,
		Sound_MidVolume = 1,
		Sound_MidFadeOutRPMpercent = 58,
		Sound_MidFadeOutRate = 0.476,
		
		Sound_High = "dryad/daumasugadaaqui/xbow_on_7250.wav",
		Sound_HighPitch = 1,
		Sound_HighVolume = 1,
		Sound_HighFadeInRPMpercent = 58,
		Sound_HighFadeInRate = 0.19,
		
		Sound_Throttle = "dryad/nissanskygtr/bodywork.wav",
		Sound_ThrottlePitch = 1,
		Sound_ThrottleVolume = 1,
		
		snd_horn = "dryad/daumasugadaaqui/horn.wav",
--
		DifferentialGear = 0.91, -- experiment with it.
		Gears = {-0.1,0,0.1,0.15,0.20,0.25,0.30,0.35,0.40,0.42} -- how many gears do you want?
	}
}
if (file.Exists( "models/sentry/15charger_new_cop.mdl", "GAME" )) then -- name of the model (".mdl")
	list.Set( "simfphys_vehicles", "simfphys_charger2015_cop", V ) -- change to any name (for example -  sim_fphys_lalala)
end
