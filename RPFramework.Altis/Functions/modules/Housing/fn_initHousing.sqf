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
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 10"],
		[(localize "STR_RPF_MODULES_HOUSING_MANAGESELL"), "[cursorObject] call ClientModules_fnc_openManageHouseSale"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "(player distance cursorObject) <= 10"],
		[(localize "STR_RPF_MODULES_HOUSING_LOCK"), "[cursorObject, 1] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "cursorObject getVariable ['locked', true]", "(player distance cursorObject) <= 10"],
		[(localize "STR_RPF_MODULES_HOUSING_UNLOCK"), "[cursorObject, 0] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 10","isNil{_house getVariable 'blacklisted'}"],
		[(localize "STR_RPF_MODULES_HOUSING_HINFO"), "[cursorObject] call ClientModules_fnc_openHouseInfo"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "[player] call ClientModules_fnc_insideHouseConditions"],
		[(localize "STR_RPF_MODULES_HOUSING_OPENTRUNK"), "[cursorObject,player] call ClientModules_fnc_openHouseTrunk"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "[player] call ClientModules_fnc_insideHouseConditions"],
		[(localize "STR_RPF_MODULES_HOUSING_OPENCONTAINER"), "[cursorObject] call ClientModules_fnc_openHouseContainer"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Client_fnc_addSubInteractions;
