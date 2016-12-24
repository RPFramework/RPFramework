/*
Author: Kerkkoh
First Edit: 23.12.2016
*/

params["_anon"];

_numberstr = ctrlText 1403;
_msg = ctrlText 1402;

_arr = toArray _numberstr;
_numberArray = [];
{
	_arr1 = [_x];
	_strArr1 = toString _arr1;
	_char = parseNumber _strArr1;
	_numberArray pushBack _char;
}forEach _arr;

_number = (_numberArray joinString "");

_author = "";
if (_anon) then {
	_author = "Anonymous";
} else {
	_author = player getVariable "phone";
};

if (_number == RPF_emergencyNumber) then {
	_police = []call Client_fnc_getPolice;
	_medics = []call Client_fnc_getMedics;
	{
		[_author, _msg, true] remoteExecCall ["ClientModules_fnc_receiveText", _x];
	}forEach _police;
	{
		[_author, _msg, true] remoteExecCall ["ClientModules_fnc_receiveText", _x];
	}forEach _medics;
	hint "Message sent.";
} else {
	_player = objNull;
	{
		if ((_x getVariable "phone") == _number) exitWith {
			_player = _x;
		};
	}forEach allPlayers;
	if (!(isNull _player)) then {
		[_author, _msg, false] remoteExecCall ["ClientModules_fnc_receiveText", _player];
		hint "Message sent.";
	} else {
		hint "You can not reach this number right now.";
	};
};
