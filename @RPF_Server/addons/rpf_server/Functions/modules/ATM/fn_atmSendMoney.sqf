/*
Author: Kerkkoh
Last Edit: 6.9.2016
*/
params ["_id", "_amount"];

private _fetch = [format ["playerBankBalance:%1", _id], 2] call ExternalS_fnc_ExtDBasync;

[0, format ["updatePlayerBalance:%1:%2", ((_fetch select 0) select 0) + _amount, _id]] call ExternalS_fnc_ExtDBquery;
