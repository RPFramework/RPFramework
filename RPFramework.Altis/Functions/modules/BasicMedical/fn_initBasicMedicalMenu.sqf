/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Add actions for medics
*/
_menuItems = [
	[
		["player getVariable ['ems', 0] > 0", "cursorObject getVariable ['unconscious', false]"],
		["Revive", "[cursorObject] spawn ClientModules_fnc_basicMedicalCPR"]
	],
	[
		["player getVariable ['ems', 0] > 0", "(count (attachedObjects player)) <= 0", "cursorObject getVariable ['unconscious', false]"],
		["Carry", "[cursorObject] call Client_fnc_escort"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "((attachedObjects player) select 0) getVariable ['unconscious', false]", "cursorObject isKindOf 'Car'"],
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

{
	if (((_x select 1) select 0) == "Use Item") exitWith {
		((RPF_InteractionMenuItems select _forEachIndex) select 0) pushBack "!(player getVariable 'unconscious')";
	};
}forEach RPF_InteractionMenuItems;
