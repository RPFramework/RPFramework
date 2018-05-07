/*
Author: Kerkkoh
First Edit: 18.7.2017

IMPORTANT: Use this only to remove all the keys to a vehicle! This should be only used when the vehicle is completely removed and destroyed since after this it can not be unlocked by anyone anymore.

*/

params ["_key"];

[0, (format["deleteKeys:%1", _key])] call ExternalS_fnc_ExtDBquery;
