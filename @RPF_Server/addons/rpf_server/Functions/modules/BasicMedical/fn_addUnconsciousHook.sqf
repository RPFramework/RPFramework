/*
Author: Kerkkoh
First Edit: 13.10.2017

Additional Information:
Hooks into other interaction items and adds condition about unconsciousness

1 - Category name where the interaction you want to hook is (This can be pre-localized or not)
2 - The text that appears on the interaction menu (Used for finding the correct item)
*/
params ["_category", "_interactionText"];

{
	private _z = _x;
	private _forEach = _forEachIndex;
	if ((_z select 0) isEqualTo (_category call BIS_fnc_localize)) exitWith {
		{
			if (((_x select 1) select 0) isEqualTo (_interactionText call BIS_fnc_localize)) exitWith {
				((((RPF_InteractionSubItems select _forEach) select 1) select _forEachIndex) select 0) pushBack "!(player getVariable ['unconscious', false])";
			};
		}forEach (_z select 1);
	};
}forEach RPF_InteractionSubItems;
