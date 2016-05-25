/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
params ["_ct"];

_array = _ct getVariable "buyableThing";
_class = _array select 0;
_price = _array select 1;
_type = _array select 2;

switch (true) do {
	case (_type == 0): {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			_ct setVariable ["buyableThing", nil, true];
			closeDialog 0;
			RPF_Cars pushBack _ct;
			hint "Congratulations for buying a new car! Here are the keys.";
		} else {
			closeDialog 0;
			hint "You don't have enough money!";
		};
	};
	case (_type == 1): {
		_amount = parseNumber (ctrlText 1400);
		_amountPrice = _price * _amount;
		_check = [1, _amountPrice] call Client_fnc_checkMoney;
		if (_check) then {
			[_amountPrice] call Client_fnc_removeCash;
			closeDialog 0;
			for "_i" from 1 to _amount step 1 do {
				player addItem _class;
			};
			hint "You have bought the item(s)! Here you go.";
		} else {
			closeDialog 0;
			hint "You don't have enough money!";
		};
	};
	case (_type == 2): {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			closeDialog 0;
			_newfurn = _class createVehicle position player;
			[_newfurn] call Client_fnc_pickUp;
			RPF_ownedFurniture pushBack _newfurn;
			if (_class == RPF_Fishingnet) then {
				[_newfurn] remoteExecCall ["ServerModules_fnc_addFishingnet", 2];
			};
			hint "You have bought the item! Here you go.";
		} else {
			closeDialog 0;
			hint "You don't have enough money!";
		};
	};
};
