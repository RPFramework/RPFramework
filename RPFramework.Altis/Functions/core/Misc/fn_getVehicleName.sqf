/*
Author: Kerkkoh
First Edit: 26.11.2015
*/

params ["_class"];

_return = getText(configFile >> "CfgVehicles" >> _class >> "displayName");

_return