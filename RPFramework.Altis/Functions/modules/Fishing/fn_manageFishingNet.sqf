/*
Author: Kerkkoh
First Edit: 8.4.2018

_adding - BOOLEAN
---------------
true - Add
false - Delete
*/

params["_obj", "_adding"];
private["_netID"];

_netID = netId _obj;

if (isNull _obj) exitWith {};

[_netID, _adding] remoteExecCall ["ServerModules_fnc_manageFishingnet", 2];
