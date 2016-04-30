/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

switch (_item) do {
	case "RPF_Items_CleanerSpray": {
		RPF_thirst = RPF_thirst - 30;
	};
	case "RPF_Items_Canteen": {
		RPF_thirst = RPF_thirst - 100;
	};
	case "RPF_Items_WaterBottle": {
		RPF_thirst = RPF_thirst - 90;
	};
};
if (RPF_thirst < 0) then {
	RPF_thirst = 0;
};
player removeItem _item;

false