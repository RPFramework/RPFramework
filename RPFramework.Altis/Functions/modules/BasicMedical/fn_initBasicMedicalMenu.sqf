/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Add actions for medics
*/
_menuItems = [
	[
		["player getVariable ['ems', 0] > 0", "cursorTarget isKindOf 'Man'", "cursorTarget getVariable 'unconscious'"],
		["Revive", "[cursorTarget] spawn ClientModules_fnc_basicMedicalCPR"]
	],
	[
		["player getVariable ['ems', 0] > 0", "cursorTarget isKindOf 'Man'", "player getVariable 'unconscious'", "!(cursorTarget getVariable 'stabilized')"],
		["Stabilize", "[cursorTarget] spawn ClientModules_fnc_basicMedicalStabilize"]
	],
	[
		["player getVariable ['ems', 0] > 0", "(count (attachedObjects player)) <= 0", "cursorTarget isKindOf 'Man'" , "cursorTarget getVariable 'unconscious'"],
		["Carry", "[cursorTarget] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorTarget isKindOf 'Car'"],
		["Put In Car", "[cursorTarget] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['ems', 0] > 0", "cursorTarget isKindOf 'Car'"],
		["Pull out", "[cursorTarget] call Client_fnc_pullOut"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
