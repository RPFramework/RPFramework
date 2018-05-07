/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

diag_log (localize "STR_RPF_HOUSING_INIT");

private _menuItems = [
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 10"],
		["STR_RPF_MODULES_HOUSING_MANAGESELL", "[cursorObject] call ClientModules_fnc_openManageHouseSale"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "(player distance cursorObject) <= 10"],
		["STR_RPF_MODULES_HOUSING_LOCK", "[cursorObject, 1] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "cursorObject getVariable ['locked', true]", "(player distance cursorObject) <= 10"],
		["STR_RPF_MODULES_HOUSING_UNLOCK", "[cursorObject, 0] call ClientModules_fnc_manageHouseLock"]
	],
	[
		["(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "(player distance cursorObject) <= 10","isNil{_house getVariable 'blacklisted'}"],
		["STR_RPF_MODULES_HOUSING_HINFO", "[cursorObject] call ClientModules_fnc_openHouseInfo"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "[player] call ClientModules_fnc_insideHouseConditions"],
		["STR_RPF_MODULES_HOUSING_OPENTRUNK", "[cursorObject,player] call ClientModules_fnc_openHouseTrunk"]
	],
	[
		["(cursorObject getVariable ['owner', '0']) == (getPlayerUID player)", "(typeOf cursorObject) in ((missionConfigFile >> 'RPF_housingModule' >> 'houseTypes') call BIS_fnc_getCfgData)", "!(cursorObject getVariable ['locked', true])", "[player] call ClientModules_fnc_insideHouseConditions"],
		["STR_RPF_MODULES_HOUSING_OPENCONTAINER", "[cursorObject] call ClientModules_fnc_openHouseContainer"]
	]
];

["STR_RPF_CORE_INTERACTION_CAT_INTERACTION", _menuItems]call Server_fnc_addSubInteractions;

{
	private["_class", "_pos", "_price", "_house"];
	_class = _x select 1;
	_pos = _x select 2;
	_price = _x select 4;

	_house = nearestObject [_pos, _class];
	_house setVariable ["id", (_x select 0), true];
	_house setVariable ["owner", (_x select 3), true];
	_house setVariable ["locked", true, true];
	_house setvariable ["trunk", _x select 5,true];

	[_house,_pos,_x select 6] call ServerModules_fnc_setupHouseContainer;

	if (_price != -1) then {
		_house setVariable ["price", _price, true];
	};

	for "_i" from 1 to (getNumber(configFile >> "CfgVehicles" >> _class >> "numberOfDoors")) step 1 do {
		_house setVariable [(format ["bis_disabled_Door_%1", _i]),1,true];
	};

	true;
}count (["housingHouses", 2] call ExternalS_fnc_ExtDBasync);
