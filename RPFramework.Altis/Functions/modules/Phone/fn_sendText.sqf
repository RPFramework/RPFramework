/*
Author: Kerkkoh
First Edit: 23.12.2016
*/

params["_anon"];
private ["_msg", "_numberArray", "_number", "_author", "_player"];

_msg = ctrlText 1402;

_numberArray = [];
{
	_numberArray pushBack (parseNumber (toString  [_x]));
	true;
}count toArray (ctrlText 1403);

_number = (_numberArray joinString "");

_author = [player getVariable "phone", "Anonymous"] select (_anon);

if (_number == ((missionConfigFile >> "RPF_phoneModule" >> "emergencyNumber") call BIS_fnc_getCfgData)) then {
	{
		[_author, _msg, true] remoteExecCall ["ClientModules_fnc_receiveText", _x];
		true;
	}count ([]call Client_fnc_getPolice);

	{
		[_author, _msg, true] remoteExecCall ["ClientModules_fnc_receiveText", _x];
		true;
	}count ([]call Client_fnc_getMedics);

	hint (localize "STR_RPF_MODULES_PHONE_MSGSENT");
} else {
	_player = objNull;
	{
		if ((_x getVariable "phone") isEqualTo _number) exitWith {
			_player = _x;
		};
	}forEach allPlayers;
	if (!(isNull _player)) then {
		[_author, _msg, false] remoteExecCall ["ClientModules_fnc_receiveText", _player];
		hint (localize "STR_RPF_MODULES_PHONE_MSGSENT");
	} else {
		hint (localize "STR_RPF_MODULES_PHONE_NNOTAVAIL");
	};
};
