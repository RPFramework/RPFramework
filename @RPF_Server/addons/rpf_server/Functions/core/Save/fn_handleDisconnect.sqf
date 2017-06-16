/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

addMissionEventHandler ["HandleDisconnect",{ _this call Server_fnc_statSave; deleteVehicle (_this select 0); }];