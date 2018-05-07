/*
Author: Kerkkoh
First Edit: 1.4.2017
*/

params ["_lname", "_license", "_player"];

[0, (format["insertLicense:%1:%2:%3", _lname, _license, getPlayerUID _player])] call ExternalS_fnc_ExtDBquery;

[_player] call ServerModules_fnc_fetchLicenses;

["STR_RPF_LICENSES_NEWLICENSE", _lname] remoteExecCall ["Client_fnc_hintMP", _player];
