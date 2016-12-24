/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
_numberstr = ctrlText 1401;
_name = ctrlText 1400;

_arr = toArray _numberstr;
_numberArray = [];
{
	_arr1 = [_x];
	_strArr1 = toString _arr1;
	_char = parseNumber _strArr1;
	_numberArray pushBack _char;
}forEach _arr;

_number = (_numberArray joinString "");

if ((count _number) != 10) exitWith {
	ctrlSetText [1401, "Invalid Number"];
};

_updating = false;
_indx = -1;
{
	if (((_x select 0) == _name) || ((_x select 1) == _number)) exitWith {
		_updating = true;
		_indx = _forEachIndex;
	};
}forEach RPF_phoneContacts;

if (_updating) then {
	_id = ((RPF_phoneContacts select _indx) select 2);
	[_name, _number, _id] remoteExecCall ["ServerModules_fnc_updatePhoneContact", 2];
	(RPF_phoneContacts select _indx) set [0, _name];
	(RPF_phoneContacts select _indx) set [1, _number];
	hint "Contact updated.";
} else {
	[player, _name, _number] remoteExecCall ["ServerModules_fnc_insertPhoneContact", 2];
	hint "Contact added.";
};

closeDialog 0;
[] call ClientModules_fnc_openPhone;
