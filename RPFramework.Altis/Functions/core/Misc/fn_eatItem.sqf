/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

switch (_item) do {
	case "RPF_Items_Salema": {
		RPF_hunger = RPF_hunger - 50;
	};
	case "RPF_Items_Olives": {
		RPF_hunger = RPF_hunger - 40;
	};
	case "RPF_Items_BakedBeans": {
		RPF_hunger = RPF_hunger - 60;
	};
	case "RPF_Items_Cereal": {
		RPF_hunger = RPF_hunger - 40;
	};
	case "RPF_Items_RiceBox": {
		RPF_hunger = RPF_hunger - 50;
	};
};
if (RPF_hunger < 0) then {
	RPF_hunger = 0;
};
player removeItem _item;

false