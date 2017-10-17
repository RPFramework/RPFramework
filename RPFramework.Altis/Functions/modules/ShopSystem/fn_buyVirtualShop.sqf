/*
Author: Kerkkoh
First Edit: 23.4.2016
*/

_index = lbCurSel 1500;
_data = lbData [1500, _index];
_dataArray = parseSimpleArray _data;
_class = _dataArray select 0;
_price = _dataArray select 1;
_type = _dataArray select 2;

_amount = parseNumber (ctrlText 1400);
_amountPrice = _price * _amount;

switch (_type) do {
	case 0: {
		_check = [1, _amountPrice] call Client_fnc_checkMoney;
		if (_check) then {
			[_amountPrice] call Client_fnc_removeCash;
			for "_i" from 1 to _amount step 1 do {
				player addItem _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEMS");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 1: {
		_check = [1, _amountPrice] call Client_fnc_checkMoney;
		if (_check) then {
			[_amountPrice] call Client_fnc_removeCash;
			for "_i" from 1 to _amount step 1 do {
				player addMagazine _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTMAGS");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 2: {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			player addWeapon _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTWEAPONS");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 3: {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			player addUniform _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 4: {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			player addVest _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 5: {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			player addHeadgear _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 6: {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			player addBackpack _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	default { hint "Error >> System admin hasn't defined a type"; closeDialog 0; };
};
