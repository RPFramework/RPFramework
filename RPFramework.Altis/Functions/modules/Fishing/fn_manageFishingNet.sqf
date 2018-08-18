/*
Author: Kerkkoh
First Edit: 8.4.2018

_adding - BOOLEAN
---------------
true - Add
false - Delete
*/

params["_obj", "_adding"];

if (isNull _obj) exitWith {};

[netId _obj, _adding] remoteExecCall ["ServerModules_fnc_manageFishingnet", 2];
