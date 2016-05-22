/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Add actions for medics
*/
_menuItems = [
	[
		["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Man'", "cursorObject getVariable 'unconscious'"],
		["Revive", "[cursorObject] spawn ClientModules_fnc_basicMedicalCPR"]
	],
	[
		["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Man'", "player getVariable 'unconscious'", "!(cursorObject getVariable 'stabilized')"],
		["Stabilize", "[cursorObject] spawn ClientModules_fnc_basicMedicalStabilize"]
	],
	[
		["player getVariable ['ems', 0] > 0", "(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'" , "cursorObject getVariable 'unconscious'"],
		["Carry", "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'"],
		["Put In Car", "[cursorObject] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Car'"],
		["Pull out", "[cursorObject] call Client_fnc_pullOut"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
