/*
Author: Kerkkoh
First Edit: 27.9.2016
*/
params["_id", "_wanted", "_a"];

if (_a == 0) then {
	_insertstr = format ["ppDBupdateCriminal:%1:%2", _wanted, _id];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
} else {
	_qstr = format ["ppDBupdateCriminal:%1:%2", "no", _id];
	_q = [0, _qstr] call ExternalS_fnc_ExtDBquery;
};
