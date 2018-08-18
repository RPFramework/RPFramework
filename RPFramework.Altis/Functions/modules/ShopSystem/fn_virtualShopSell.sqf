/*
Author: Kerkkoh
First Edit: 23.4.2016
*/
private _index = lbCurSel 1500;
(parseSimpleArray lbData [1500, _index]) params ["_class","_price","_type"];

switch (_type) do {
	case 0: {
		if (_class in (items player)) then {
			player removeItem _class;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDANITEM");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 1: {
		if (_class in (magazines player)) then {
			player removeMagazine _class;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDANITEM");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 2: {
		if (_class in (weapons player)) then {
			player removeWeapon _class;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDANITEM");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 3: {
		if (_class == uniform player) then {
			removeUniform player;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 4: {
		if (_class == vest player) then {
			removeVest player;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 5: {
		if (_class == headgear player) then {
			removeHeadgear player;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	case 6: {
		if (_class == backpack player) then {
			removeBackpack player;
			[_price] call Client_fnc_addCash;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_SOLDCLOTHES");
		} else {
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_DONTHAVETHAT");
		};
	};
	default { hint "Error >> System admin hasn't defined a type"; closeDialog 0; };
};
