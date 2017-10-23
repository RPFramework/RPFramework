/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

diag_log (localize "STR_RPF_HOUSING_INIT");

{
	_class = _x select 1;
	_price = _x select 4;
	_trunk = _x select 6;
	_house = nearestObject [(_x select 2), _class];
	_house setVariable ["id", (_x select 0), true];
	_house setVariable ["owner", (_x select 3), true];
	_house setVariable ["locked", true, true];
	_house setvariable ["trunk",_trunk,true];
	if (_price != -1) then {
		_house setVariable ["price", _price, true];
	};
	
	for "_i" from 1 to (getNumber(configFile >> "CfgVehicles" >> _class >> "numberOfDoors")) step 1 do {
		_house setVariable [(format ["bis_disabled_Door_%1", _i]),1,true];
	};
}forEach (["housingHouses", 2] call ExternalS_fnc_ExtDBasync);
