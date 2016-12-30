/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_id", "_name", "_a", "_player"];

if (_a == 0) then {
	_checkstr = format ["ppDBExistsCriminal:%1", _name];
	_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
	_booli = (_check select 0) select 0;

	if (!_booli) then {
		_insertstr = format ["ppDBinsertCriminal:%1", _name];
		_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
		
		_nameFormat = format["%1%2%3", "%", _name, "%"];
		[_player, _nameFormat]call ServerModules_fnc_policePlusDBrun;
	} else {
		["This name is already registered as a criminal."] remoteExecCall ["Client_fnc_hintMP", _player];
	};
} else {
	_str = format["PoliceDB: %1 (%2) just deleted criminal %3", name _player, getPlayerUID _player, _id];
	_qstr = format ["ppDBdeleteCriminal:%1", _id];
	_q = [0, _qstr] call ExternalS_fnc_ExtDBquery;
};
