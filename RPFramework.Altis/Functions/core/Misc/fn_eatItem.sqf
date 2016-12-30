/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	if ((_x select 0) == _item) then {
		RPF_hunger = RPF_hunger - (_x select 1);
	};
}forEach RPF_Edibles;

if (RPF_hunger < 0) then {
	RPF_hunger = 0;
};

false