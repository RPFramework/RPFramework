/*
Author: Kerkkoh
First Edit: 22.9.2016

Note that this function doesn't actually remove the items from the player, it's merely cosmetic.
Items are removed once player starts cooking stuff.
*/

private ["_idx","_classname", "_deleteIndex", "_found", "_item"];

_idx = lbCurSel 1500;
if (_idx isEqualTo -1) exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NTA")];};
_classname = lbData [1500, _idx];
if (_classname isEqualTo "") exitWith {ctrlSetText [1000, (localize "STR_RPF_MODULES_METHLAB_STATUS_NTA")];};
lbClear 1500;
lbClear 1501;

// Remove the item from player items array
_deleteIndex = -1;
{
	private	["_class", "_amount", "_item"];
	_class = _x select 0;
	_amount = _x select 1;
	if (_class isEqualTo _classname) then {
		_amount = _amount - 1;
		_x set [1, _amount];
	};
	if (_amount != 0) then {
		_item = lbAdd [1500, format ["%1 x %2", [_class]call Client_fnc_getWeaponName, _amount]];
		lbSetData [1500, _item, _class];
	} else {
		_deleteIndex = _forEachIndex;
	};
}forEach RPF_labPlayerItems;
if (_deleteIndex != -1) then {
	RPF_labPlayerItems deleteAt _deleteIndex;
};

lbClear 1501;

// Add it to the lab's items array

_found = false;
{
	private	["_class", "_amount", "_item"];
	_class = _x select 0;
	_amount = _x select 1;
	if (_class isEqualTo _classname) then {
		_found = true;
		_amount = _amount + 1;
		_x set [1, _amount];
	};
	if (_amount != 0) then {
		_item = lbAdd [1501, format ["%1 x %2", [_class]call Client_fnc_getWeaponName, _amount]];
		lbSetData [1501, _item, _class];
	};
}forEach RPF_labItems;

if (!_found) then {
	RPF_labItems pushBack [_classname, 1];
	_item = lbAdd [1501, format ["%1 x %2", [_classname]call Client_fnc_getWeaponName, 1]];
	lbSetData [1501, _item, _classname];
};
lbSetCurSel [1501, 0];
