/*
Author: Kerkkoh
First Edit: 28.11.2015
*/

params ["_targetVehicle"];

[] call Client_fnc_escortStop;
[_targetVehicle] remoteExecCall ["Client_fnc_putInCarTarget", ((attachedObjects player) select 0)];