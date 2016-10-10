/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];

RPF_curGarage = _ct;

createDialog "garage";

[player] remoteExecCall ["Server_fnc_fetchGarage", 2];

ctrlSetText [1000, "Garage"];