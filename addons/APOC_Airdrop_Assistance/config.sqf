//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 900; //Expressed in sec

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				Price,	"Drop Type"]
["Quadbike (Civilian)", "C_Quadbike_01_F", 			5000, 	"vehicle"],
["SUV", 				"C_SUV_01_F",				15000, 	"vehicle"],
["Hummingbird",  		"B_Heli_Light_01_F" , 		50000, 	"vehicle"],
["Pawnee",				"B_Heli_Light_01_armed_F",	70000,	"vehicle"],
["Orca",				"O_Heli_Light_02_F",		80000,	"vehicle"],
["Offroad HMG", 		"B_G_Offroad_01_armed_F",	20000, 	"vehicle"],
//["Truck (Camo)", 		"B_G_Van_01_transport_F",	25000, 	"vehicle"],
["Strider HMG", 		"I_MRAP_03_F", 				40000, 	"vehicle"],
//["Hunter HMG",   		"B_MRAP_01_F", 				40000, 	"vehicle"],
//["Bobcat", 				"B_APC_Tracked_01_CRV_F",	60000, 	"vehicle"],
["T-100 Varsuk",		"O_MBT_02_cannon_F",		90000,	"vehicle"],
["Zodiac", 				"I_Boat_Transport_01_F",	10000, 	"vehicle"],
["Assault Boat (HMG)", 	"O_Boat_Armed_01_hmg_F",	50000, 	"vehicle"],
//["Rescue Boat",  		"C_Boat_Civil_01_rescue_F", 20000, 	"vehicle"],
["Submersible",			"O_SDV_01_F", 				45000, 	"vehicle"]

];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price," drop type"]
["General Supplies", 	"General_supplies", 			30000, "supply"],
["Launchers", 			"airdrop_USLaunchers", 			60000, "supply"],
["Assault Rifle", 		"airdrop_USSpecial", 			40000, "supply"],
["Sniper Rifles", 		"airdrop_Snipers", 				60000, "supply"],
["DLC Rifles", 			"airdrop_DLC_Rifles", 			60000, "supply"],
["DLC LMGs", 			"airdrop_DLC_LMGs", 			50000, "supply"],
["Diving Gear",			"Diving_Gear",					30000, "supply"],
["Ammo Drop", 			"Ammo_Drop", 					60000,	"supply"],
//["Base in a box", 		"Land_Cargo20_light_green_F", 	50000, "base0"],

//"Menu Text",			"Crate Type", 			"Cost", "drop type"
["Food",				"Land_Sacks_goods_F",	10000, 	"picnic"],
["Water",				"Land_BarrelWater_F",	10000, 	"picnic"]
];