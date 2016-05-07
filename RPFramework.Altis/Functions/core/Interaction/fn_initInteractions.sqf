/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];
RPF_InteractionMenuItems = [
	[
		["cursorTarget isKindOf 'Car'", "cursorTarget in RPF_Cars"],
		["Use Car Key", "[cursorTarget] call Client_fnc_useKey"]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		["Use Car Key", "[vehicle player] call Client_fnc_useKey"]
	],
	[
		["cursorTarget isKindOf 'Man'"],
		["Give Cash", "[cursorTarget] call Client_fnc_giveCash"]
	],
	[
		["RPF_Holstered == 1"],
		["Unholster", "[] call Client_fnc_holster"]
	],
	[
		["RPF_Holstered == 0", "handgunWeapon player != ''"],
		["Holster", "[] call Client_fnc_holster"]
	],
	[
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "cursorTarget isKindOf 'Man'"],
		["Cuff", "[cursorTarget] spawn Client_fnc_cuff"]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "cursorTarget isKindOf 'Man'", "cursorTarget getVariable ['cuffed',false]"],
		["Open Cuffs", "[cursorTarget] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorTarget isKindOf 'Man'", "cursorTarget getVariable ['cuffed',false]"],
		["Escort", "[cursorTarget] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorTarget isKindOf 'Car'"],
		["Force In Car", "[cursorTarget] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorTarget isKindOf 'Car'"],
		["Pull out", "[cursorTarget] call Client_fnc_pullOut"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorTarget isKindOf 'Man'"],
		["Search", "[cursorTarget] call Client_fnc_search"]
	],
	[
		["cursorTarget isKindOf 'Car'", "cursorTarget in RPF_Cars", "[10, 'garage']call Client_fnc_nearMarker"],
		["Store Garage", "[cursorTarget] call Client_fnc_storeCar"]
	],
	[
		["!(isNil {cursorTarget getVariable 'garage'})"],
		["Open Garage", "[cursorTarget] call Client_fnc_openGarage"]
	],
	[
		["!(isNil {cursorTarget getVariable 'atm'})"],
		["Open ATM", "[cursorTarget] call Client_fnc_openATM"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorTarget in RPF_ownedFurniture"],
		["Pick up", "[cursorTarget] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["alive player"],
		["Use Item", "[] call Client_fnc_openUseItem"]
	],
	[
		["!(isNil {cursorTarget getVariable 'money'})"],
		["Take money", "[cursorTarget] call Client_fnc_takeMoney"]
	]
];