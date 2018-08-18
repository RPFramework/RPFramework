/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
private ["_name", "_numberArray", "_number", "_updating", "_indx"];

_name = ctrlText 1400;

_numberArray = [];
{
	_numberArray pushBack (parseNumber (toString [_x]));
	true;
}count (toArray (ctrlText 1401));

_number = (_numberArray joinString "");

if ((count _number) != 10) exitWith {
	ctrlSetText [1401, (localize "STR_RPF_MODULES_PHONE_INVNMBR")];
};

_updating = false;
_indx = -1;
{
	if (((_x select 0) isEqualTo _name) || ((_x select 1) isEqualTo _number)) exitWith {
		_updating = true;
		_indx = _forEachIndex;
	};
}forEach RPF_phoneContacts;

if (_updating) then {
	[_name, _number, (RPF_phoneContacts select _indx) select 2] remoteExecCall ["ServerModules_fnc_updatePhoneContact", 2];
	(RPF_phoneContacts select _indx) set [0, _name];
	(RPF_phoneContacts select _indx) set [1, _number];
	hint (localize "STR_RPF_MODULES_PHONE_CONTACTUPDATED");
} else {
	[player, _name, _number] remoteExecCall ["ServerModules_fnc_insertPhoneContact", 2];
	hint (localize "STR_RPF_MODULES_PHONE_CONTACTADDED");
};

closeDialog 0;
[] call ClientModules_fnc_openPhone;
