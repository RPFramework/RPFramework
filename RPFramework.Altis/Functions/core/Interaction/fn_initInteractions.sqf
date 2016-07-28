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
		["(vehicle player) != player", "(vehicle player) in RPF_Cars", "(player distance cursorObject) <= 5"],
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
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 5"],
		["Cuff", "[cursorObject] spawn Client_fnc_cuff"]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Open Cuffs", "[cursorObject] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Escort", "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "(player distance cursorObject) <= 5"],
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
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 5"],
		["Search", "[cursorObject] call Client_fnc_search"]
	],
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "[10, 'garage']call Client_fnc_nearMarker", "(player distance cursorObject) <= 5"],
		["Store Garage", "[cursorObject] call Client_fnc_storeCar"]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 5"],
		["Open Garage", "[cursorObject] call Client_fnc_openGarage"]
	],
	[
		["!(isNil {cursorObject getVariable 'atm'})", "(player distance cursorObject) <= 5"],
		["Open ATM", "[cursorObject] call Client_fnc_openATM"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		["Pick up", "[cursorObject] call Client_fnc_pickUp"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["alive player"],
		["Use Item", "[] call Client_fnc_openUseItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
		["Take money", "[cursorObject] call Client_fnc_takeMoney"]
	]
];
