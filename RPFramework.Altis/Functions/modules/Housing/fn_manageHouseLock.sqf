/*
Author: Kerkkoh
First Edit: 26.12.2016

Info: 0 - unlock, 1 - lock
*/

params ["_house", "_state"];

if (_state == 0) then {
	_house setVariable ["locked", false, true];
} else {
	_house setVariable ["locked", true, true];
};

_numberOfDoors = getNumber(configFile >> "CfgVehicles" >> typeOf _house >> "numberOfDoors");
for "_i" from 1 to _numberOfDoors step 1 do {
	_door = format ["bis_disabled_Door_%1", _i];
	_house setVariable [_door,_state,true];
};