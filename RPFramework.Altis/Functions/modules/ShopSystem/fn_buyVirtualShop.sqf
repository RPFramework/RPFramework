/*
Author: Kerkkoh
First Edit: 23.4.2016
*/
private ["_index","_amount","_amountPrice"];
_index = lbCurSel 1500;
(parseSimpleArray lbData [1500, _index]) params ["_class","_price","_type"];

_amount = parseNumber (ctrlText 1400);
_amountPrice = [_price, _price * _amount] select (_type in [0,1]);

if ([1, _amountPrice] call Client_fnc_checkMoney) then {
	[_amountPrice] call Client_fnc_removeCash;
	switch (_type) do {
		case 0: {
			if (!(player canAdd [_class, _amount])) exitWith {
				hint localize "STR_RPF_CORE_CANTADDITEM";
			};
			for "_i" from 1 to _amount step 1 do {
				player addItem _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEMS");
		};
		case 1: {
			if (!(player canAdd [_class, _amount])) exitWith {
				hint localize "STR_RPF_CORE_CANTADDITEM";
			};
			for "_i" from 1 to _amount step 1 do {
				player addMagazine _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTMAGS");
		};
		case 2: {
			if (!(player canAdd _class)) exitWith {
				hint localize "STR_RPF_CORE_CANTADDITEM";
			};
			player addWeapon _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTWEAPONS");
		};
		case 3: {
			player addUniform _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		};
		case 4: {
			player addVest _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		};
		case 5: {
			player addHeadgear _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		};
		case 6: {
			player addBackpack _class;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTCLOTHES");
		};
		default { hint "Error >> System admin hasn't defined a type"; closeDialog 0; };
	};
} else {
	hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
};
