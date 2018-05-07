/*
Author: Kerkkoh
First Edit: 27.9.2016

0 - NUMBER - ID of the criminal on the db
1 - STRING - Name of the criminal
2 - NUMBER - 0 -> add criminal, anything else -> delete criminal
3 - OBJECT - player object
*/
params["_id", "_name", "_mode", "_player"];

if (_mode isEqualTo 0) then {
	private _check = [0, format ["ppDBExistsCriminal:%1", _name]] call ExternalS_fnc_ExtDBquery;

	if (!((_check select 0) select 0)) then {
		[0, format ["ppDBinsertCriminal:%1", _name]] call ExternalS_fnc_ExtDBquery;

		[_player, format["%1%2%3", "%", _name, "%"]]call ServerModules_fnc_policePlusDBrun;
	} else {
		["This name is already registered as a criminal."] remoteExecCall ["Client_fnc_hintMP", _player];
	};
} else {
	diag_log format["PoliceDB: %1 (%2) just deleted criminal %3", name _player, getPlayerUID _player, _id];

	[0, format ["ppDBdeleteCriminal:%1", _id]] call ExternalS_fnc_ExtDBquery;
};
