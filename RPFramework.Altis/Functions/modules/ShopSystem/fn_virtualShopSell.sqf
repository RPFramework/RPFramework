/*
Author: Kerkkoh
First Edit: 23.4.2016
*/

_index = lbCurSel 1500;
_data = lbData [1500, _index];
_dataArray = call compile _data;
_class = _dataArray select 0;
_price = _dataArray select 1;
_type = _dataArray select 2;

switch (_type) do {
	case 0: {
		if (_class in (items player)) then {
			player removeItem _class;
			[_price] call Client_fnc_addCash;
			hint "You have sold an item!";
		} else {
			hint "You don't have that item!";
		};
	};
	case 1: {
		if (_class in (magazines player)) then {
			player removeMagazine _class;
			[_price] call Client_fnc_addCash;
			hint "You have sold a magazine!";
		} else {
			hint "You don't have that magazine!";
		};
	};
	case 2: {
		if (_class in (weapons player)) then {
			player removeWeapon _class;
			[_price] call Client_fnc_addCash;
			hint "You have sold a weapon!";
		} else {
			hint "You don't have that weapon!";
		};
	};
	case 3: {
		if (_class == uniform player) then {
			removeUniform player;
			[_price] call Client_fnc_addCash;
			hint "You have sold some clothes!";
		} else {
			hint "You don't have those clothes!";
		};
	};
	case 4: {
		if (_class == vest player) then {
			removeVest player;
			[_price] call Client_fnc_addCash;
			hint "You have sold some clothes!";
		} else {
			hint "You don't have those clothes!";
		};
	};
	case 5: {
		if (_class == headgear player) then {
			removeHeadgear player;
			[_price] call Client_fnc_addCash;
			hint "You have sold some clothes!";
		} else {
			hint "You don't have those clothes!";
		};
	};
	case 6: {
		if (_class == backpack player) then {
			removeBackpack player;
			[_price] call Client_fnc_addCash;
			hint "You have sold some clothes!";
		} else {
			hint "You don't have those clothes!";
		};
	};
	default { hint "Error >> Wrong shop element type!"; closeDialog 0; };
};
