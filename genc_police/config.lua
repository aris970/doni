Config                            = {}

Config.DrawDistance               = 25.0
Config.Type = 21

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'police'
}

Config.armurerie = {
	{nom = "Pistolet", arme = "weapon_pistol"},
}

Config.arm = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Shotgun MK2", arme = "weapon_pumpshotgun"},
}


Config.armi = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Shotgun MK2", arme = "weapon_pumpshotgun"},
	{nom = "M4", arme = "weapon_carbinerifle"},
}


Config.pos = {
	garagevoiture = {
		position = {x = 445.05, y = -986.17, z = 25.7}
	},
	garageheli = {
		position = {x = 448.69, y = -981.65, z = 43.69}
	},
	armurerie2 = {
		position = {x = 456.85, y = -1017.27, z = 28.39}
	},
	armurerie = {
		position = {x = 440.88, y = -981.83, z = 30.69} 
	}
}

Config.spawn = {

	spawnvoiture = {
		position = {x = 438.43, y = -1026.39, z = 28.79}
	},
	spawnheli = {
		position = {x = 448.69, y = -981.65, z = 43.69, h = 87.916}
	},
}
