/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

_hunger = (player getVariable "hunger");

{
	if ((_x select 0) == _item) then {
		player setVariable ["hunger", _hunger - (_x select 1), true];
	};
}forEach RPF_Edibles;

if (_hunger < 0) then {
	player setVariable ["hunger", 0, true];
};

false