/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_id", "_player", "_license"];

[0, (format["deleteLicense:%1", _id])] call ExternalS_fnc_ExtDBquery;

[_player] call ServerModules_fnc_fetchLicenses;

["STR_RPF_LICENSES_REVOKED", _license] remoteExecCall ["Client_fnc_hintMP", _player];
