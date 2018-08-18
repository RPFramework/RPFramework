class RPF_Config {
	// TAB by default https://community.bistudio.com/wiki/ListOfKeyCodes
	interactionKey = 15;
	// H by default
	holsterKey = 35;
	// U by default
	unlockCarKey = 22;

	// Vehicle trunk size is divided with this
	// To increase all trunk sizes you need to make this value smaller
	trunkDivivde = 300;

	handcuffs_item = "RPF_Items_Handcuffs";
	handcuffKeys_item = "RPF_Items_HandcuffKeys";

	// This spawnpoint is used by modules such as the Respawn and BasicMedical and has no effect if these modules are disabled
	spawnPoint[] = {
		16807.5,12663.8,0.00144768
	};

	// Add your police vehicles here
	policeCars[] = {
		"B_MRAP_01_F",
		"O_Heli_Light_02_unarmed_F",
		"C_Boat_Civil_01_police_F"
	};

	// Add your medic vehicles here
	medicCars[] = {
		"B_Truck_01_medical_F",
		"C_Boat_Civil_01_rescue_F",
		"B_Lifeboat",
		"C_IDAP_Van_02_medevac_F"
	};

	// Here you can override the trunk sizes with a custom one {classname, customTrunkSize}
	trunkException[] = {
		{ "B_MRAP_01_F", 30 }
	};

	// Every 4 minutes deduct values according to fn_initSurvivalLoop.sqf
	SurvivalSleepLoop = 240;

	// ####### WHITELISTS #######

	// Add whitelisted functions for usable items here
	usableWhitelist[] = {
		#include "Functions\modules\CONFIG\moduleUsableWhitelist.hpp"
		"Client_fnc_eatItem",
		"Client_fnc_drinkItem"
	};

	// Add whitelisted functions for trunk items here
	trunkWhitelist[] = {
		#include "Functions\modules\CONFIG\moduleTrunkWhitelist.hpp"
		"Client_fnc_hintMP"
	};

	// ####### WHITELISTS #######

	/*
	You can find more config optios that are mostly for modules to change in Functions\core\Init\fn_miscVariables.sqf
	Use (missionConfigFile >> "RPF_Config" >> "something") call BIS_fnc_getCfgData to get data from here
	Each module has its own configuration file called config.hpp which can house shop locations, marker locations or variables, make sure to configure those as well!
	Shop locations for module ShopSystem is on the server side!
	There are configs on both server and client side for modules!
	*/
};
#include "Functions\modules\CONFIG\moduleConfigs.hpp"
#include "Functions\modules\CONFIG\moduleInit.hpp"
