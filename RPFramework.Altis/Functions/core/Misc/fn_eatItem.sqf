/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	_class = _x select 0;
	if (_class == _item) then {
		_hungerAmount = _x select 1;
		RPF_hunger = RPF_hunger - _hungerAmount;
	};
}forEach RPF_Edibles;

if (RPF_hunger < 0) then {
	RPF_hunger = 0;
};

false