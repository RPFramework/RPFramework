/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	if ((_x select 0) == _item) then {
		RPF_thirst = RPF_thirst - (_x select 1);
	};
}forEach RPF_Drinkables;

if (RPF_thirst < 0) then {
	RPF_thirst = 0;
};

false