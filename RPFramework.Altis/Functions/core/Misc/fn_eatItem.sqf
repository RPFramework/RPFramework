/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	if ((_x select 0) isEqualTo _item) then {
		private _newHunger = (player getVariable "hunger") - (_x select 1);
		if (_newHunger < 0) then {
			_newHunger = 0;
		};
		player setVariable ["hunger", _newHunger, true];
	};
	true;
}count RPF_Edibles;

false
