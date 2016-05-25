/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];
RPF_InteractionMenuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars"],
		["Use Car Key", "[cursorObject] call Client_fnc_useKey"]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		["Use Car Key", "[vehicle player] call Client_fnc_useKey"]
	],
	[
		["cursorObject isKindOf 'Man'"],
		["Give Cash", "[cursorObject] call Client_fnc_giveCash"]
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
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "cursorObject isKindOf 'Man'"],
		["Cuff", "[cursorObject] spawn Client_fnc_cuff"]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]"],
		["Open Cuffs", "[cursorObject] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]"],
		["Escort", "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		["Let Go", "[] call Client_fnc_escortStop"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'"],
		["Force In Car", "[cursorObject] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'"],
		["Pull out", "[cursorObject] call Client_fnc_pullOut"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Man'"],
		["Search", "[cursorObject] call Client_fnc_search"]
	],
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "[10, 'garage']call Client_fnc_nearMarker"],
		["Store Garage", "[cursorObject] call Client_fnc_storeCar"]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})"],
		["Open Garage", "[cursorObject] call Client_fnc_openGarage"]
	],
	[
		["!(isNil {cursorObject getVariable 'atm'})"],
		["Open ATM", "[cursorObject] call Client_fnc_openATM"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture"],
		["Pick up", "[cursorObject] call Client_fnc_pickUp"]
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
		["!(isNil {cursorObject getVariable 'money'})"],
		["Take money", "[cursorObject] call Client_fnc_takeMoney"]
	]
];
