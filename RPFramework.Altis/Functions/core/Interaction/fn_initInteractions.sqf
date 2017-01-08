/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];
RPF_InteractionMenuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "(player distance cursorObject) <= 5"],
		["Use Car Key", "[cursorObject] call Client_fnc_useKey"]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		["Use Car Key", "[vehicle player] call Client_fnc_useKey"]
	],
	[
		["isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Give Cash", "[cursorObject] call Client_fnc_giveCash"]
	],
	[
		["RPF_Holstered == 1", "alive player"],
		["Unholster", "[] call Client_fnc_holster"]
	],
	[
		["RPF_Holstered == 0", "handgunWeapon player != ''", "alive player"],
		["Holster", "[] call Client_fnc_holster"]
	],
	[
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Cuff", "[cursorObject] spawn Client_fnc_cuff"]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Open Cuffs", "[cursorObject] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Escort", "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		["Force In Car", "[cursorObject] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		["Pull out", "[cursorObject] call Client_fnc_pullOut"]
	],
	[
		["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Search", "[cursorObject] call Client_fnc_search"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		["Pick up", "[cursorObject] call Client_fnc_pickUp"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 5", "(locked cursorObject) == 0"],
		["Trunk", "[cursorObject] call Client_fnc_openTrunk"]
	],
	[
		["alive player"],
		["Use Item", "[] call Client_fnc_openUseItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
		["Take money", "[cursorObject] call Client_fnc_takeMoney"]
	],
	[
		["player getVariable ['copoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		["Go on duty", "[1, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['emsoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		["Go on duty", "[1, 1] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		["Go off duty", "[0, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['ems', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		["Go off duty", "[0, 1] call Client_fnc_switchDutyStatus"]
	]
];
