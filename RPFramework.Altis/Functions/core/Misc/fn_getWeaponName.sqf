/*
Author: Kerkkoh
First Edit: 22.4.2016
*/

params ["_class"];

private _return = getText(configFile >> "CfgWeapons" >> _class >> "displayName");

_return
