local cfg = {}

cfg.FuelDecor = "FUEL_LEVEL"

cfg.DisableKeys = { 0,22,23,24,29,30,31,37,44,56,82,140,166,167,168,170,288,289,311,323 }

cfg.Classes = {
	[0] = 0.4, -- Compacts
	[1] = 0.4, -- Sedans
	[2] = 0.4, -- SUVs
	[3] = 0.4, -- Coupes
	[4] = 0.4, -- Muscle
	[5] = 0.4, -- Sports Classics
	[6] = 0.4, -- Sports
	[7] = 0.4, -- Super
	[8] = 0.4, -- Motorcycles
	[9] = 0.4, -- Off-road
	[10] = 0.4, -- Industrial
	[11] = 0.4, -- Utility
	[12] = 0.4, -- Vans
	[13] = 0.0, -- Cycles
	[14] = 0.0008, -- Boats
	[15] = 5.0008, -- Helicopters
	[16] = 0.0008, -- Planes
	[17] = 0.4, -- Service
	[18] = 0.4, -- Emergency
	[19] = 0.4, -- Military
	[20] = 0.4, -- Commercial
	[21] = 0.4, -- Trains
}

cfg.FuelUsage = {
	[1.0] = 1.0,
	[0.9] = 0.9,
	[0.8] = 0.8,
	[0.7] = 0.7,
	[0.6] = 0.6,
	[0.5] = 0.5,
	[0.4] = 0.4,
	[0.3] = 0.3,
	[0.2] = 0.2,
	[0.1] = 0.1,
	[0.0] = 0.1,
}

cfg.vehicleEletrical = {
	['neon'] = true,
	['raiden'] = true,
	['tesla'] = true,
	['teslaprior'] = true,
	['cyclone'] = true,
	['tezeract'] = true,
}

return cfg