/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];
RPF_InteractionMenuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_CARKEY'), "[cursorObject] call Client_fnc_useKey"]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		[(localize 'STR_RPF_CORE_INTERACTION_CARKEY'), "[vehicle player] call Client_fnc_useKey"]
	],
	[
		["isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_GIVECASH'), "[cursorObject] call Client_fnc_giveCash"]
	],
	[
		["RPF_Holstered == 1", "alive player"],
		[(localize 'STR_RPF_CORE_INTERACTION_UNHOLSTER'), "[] call Client_fnc_holster"]
	],
	[
		["RPF_Holstered == 0", "handgunWeapon player != ''", "alive player"],
		[(localize 'STR_RPF_CORE_INTERACTION_HOLSTER'), "[] call Client_fnc_holster"]
	],
	[
		["(((missionConfigFile >> 'RPF_Config' >> 'handcuffs_item') call BIS_fnc_getCfgData) in (items player)) || (((missionConfigFile >> 'RPF_Config' >> 'handcuffs_item') call BIS_fnc_getCfgData) in (magazines player))", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_CUFF'), "[cursorObject] spawn Client_fnc_cuff"]
	],
	[
		["(((missionConfigFile >> 'RPF_Config' >> 'handcuffKeys_item') call BIS_fnc_getCfgData) in (items player)) || (((missionConfigFile >> 'RPF_Config' >> 'handcuffKeys_item') call BIS_fnc_getCfgData) in (magazines player))", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_OPENCUFFS'), "[cursorObject] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_ESCORT'), "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		[(localize 'STR_RPF_CORE_INTERACTION_LETGO'), "[] call Client_fnc_escortStop"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_FORCEINCAR'), "[cursorObject] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_PULLOUT'), "[cursorObject] call Client_fnc_pullOut"]
	],
	[
		["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_SEARCH'), "[cursorObject] call Client_fnc_search"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_PICKUP'), "[cursorObject] call Client_fnc_pickUp"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
		[(localize 'STR_RPF_CORE_INTERACTION_LETGO'), "[] call Client_fnc_escortStop"]
	],
	[
		["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 5", "(locked cursorObject) == 0"],
		[(localize 'STR_RPF_CORE_INTERACTION_TRUNK'), "[cursorObject] call Client_fnc_openTrunk"]
	],
	[
		["alive player"],
		[(localize 'STR_RPF_CORE_INTERACTION_USEITEM'), "[] call Client_fnc_openUseItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_TAKEMONEY'), "[cursorObject] call Client_fnc_takeMoney"]
	],
	[
		["player getVariable ['copoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_GOONDUTY'), "[1, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['emsoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_GOONDUTY'), "[1, 1] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_GOOFFDUTY'), "[0, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['ems', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		[(localize 'STR_RPF_CORE_INTERACTION_GOOFFDUTY'), "[0, 1] call Client_fnc_switchDutyStatus"]
	]
];