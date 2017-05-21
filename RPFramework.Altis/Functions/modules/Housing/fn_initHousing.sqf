/*
Author: Kerkkoh
First Edit: 26.12.2016
*/
RPF_buyableHouses = [
];
RPF_houseTypes = [
];

_menuItems = [
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_HOUSING_MANAGESELL"), "[cursorObject] call ClientModules_fnc_openManageHouseSale"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_HOUSING_LOCK"), "[cursorObject, 1] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "cursorObject getVariable ['locked', true]", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_HOUSING_UNLOCK"), "[cursorObject, 0] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 5"],
		[(localize "STR_RPF_MODULES_HOUSING_HINFO"), "[cursorObject] call ClientModules_fnc_openHouseInfo"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;