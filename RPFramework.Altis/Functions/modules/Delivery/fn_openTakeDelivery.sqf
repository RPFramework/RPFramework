/*
Author: Kerkkoh
First Edit: 20.11.2016
*/

createDialog "takeDelivery";

_array = [
	["Land_Sack_F", 120],
	["Land_CratesWooden_F", 150],
	["Land_Sacks_heap_F", 150],
	["Land_WoodenBox_F", 100],
	["Land_Pipes_small_F", 300],
	["Land_Pallets_F", 40],
	["Land_CinderBlocks_F", 150],
	["Land_ConcretePipe_F", 200],
	["Land_Metal_wooden_rack_F", 50],
	["Land_CargoBox_V1_F", 100]
];

_arr = selectRandom _array;
_class = _arr select 0;
_price = _arr select 1;
_finalPrice = _price - (floor random [0,20,31]);
_amount = floor random 21;
if (_amount == 0) then {
	_amount = 1;
};

_reward = _finalPrice * _amount;

_name = [_class]call Client_fnc_getVehicleName;
_str = format ["%1 (%2)", _name, _amount];
ctrlSetText [1001, _str];
ctrlSetText [1003, str _reward];

RPF_curDelivery = [_class, _amount, _reward, _amount, "", 0];