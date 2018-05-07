/*
Author: Kerkkoh
First Edit: 28.4.2016

Additional Information:
Add actions for medics
*/

RPF_InteractionMenuItems pushBack ['STR_RPF_MODULES_BASICMEDICAL_MEDICAL', "['STR_RPF_MODULES_BASICMEDICAL_MEDICAL'] call Client_fnc_interactionSub"];

private _menuItems = [
	'STR_RPF_MODULES_BASICMEDICAL_MEDICAL',
	[
		[
			["true"],
			[format["< %1", localize 'STR_RPF_CORE_INTERACTION_BACK'], "[] call Client_fnc_openInteraction"]
		],
		[
			["player getVariable ['ems', 0] > 0", "cursorObject getVariable ['unconscious', false]", "(player distance cursorObject) <= 5"],
			["STR_RPF_MODULES_BASICMEDICAL_REVIVE", "[cursorObject] spawn ClientModules_fnc_basicMedicalRevive"]
		],
		[
			["player getVariable ['ems', 0] > 0", "(count (attachedObjects player)) <= 0", "cursorObject getVariable ['unconscious', false]", "(player distance cursorObject) <= 5"],
			["STR_RPF_MODULES_BASICMEDICAL_CARRY", "[cursorObject] call Client_fnc_escort"]
		],
		[
			["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "((attachedObjects player) select 0) getVariable ['unconscious', false]", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
			["STR_RPF_MODULES_BASICMEDICAL_PUTINCAR", "[cursorObject] call Client_fnc_putInCar"]
		],
		[
			["player getVariable ['ems', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
			["STR_RPF_MODULES_BASICMEDICAL_PULLOUT", "[cursorObject] call Client_fnc_pullOut"]
		],
		[
			["player getVariable ['unconscious', false]"],
			["str_a3_cfgvehicles_modulerespawnvehicle_f_arguments_forcedrespawn_0", "[] call ClientModules_fnc_forcedRespawn"]
		]
	]
];

RPF_InteractionSubItems pushBack _menuItems;

["STR_RPF_CORE_INTERACTION_CAT_OTHER","STR_RPF_CORE_INTERACTION_USEITEM"]call ServerModules_fnc_addUnconsciousHook;
