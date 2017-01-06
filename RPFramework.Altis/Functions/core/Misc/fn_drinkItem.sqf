/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

_thirst = (player getVariable "thirst");

{
	if ((_x select 0) == _item) then {
		player setVariable ["thirst", _thirst - (_x select 1), true];
	};
}forEach RPF_Drinkables;

if (_thirst < 0) then {
	player setVariable ["thirst", 0, true];
};

false