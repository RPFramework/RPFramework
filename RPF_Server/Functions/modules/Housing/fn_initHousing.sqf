/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

diag_log "# Housing module loaded #";

_fetchstr = "housingHouses";
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync;

{
	_id = _x select 0;
	_class = _x select 1;
	_pos = _x select 2;
	_owner = _x select 3;
	_price = _x select 4;
	_numberOfDoors = getNumber(configFile >> "CfgVehicles" >> _class >> "numberOfDoors");
	_house = nearestObject [_pos, _class];
	
	_house setVariable ["id", _id, true];
	_house setVariable ["owner", _owner, true];
	_house setVariable ["locked", true, true];
	if (_price != -1) then {
		_house setVariable ["price", _price, true];
	};
	
	for "_i" from 1 to _numberOfDoors step 1 do {
		_door = format ["bis_disabled_Door_%1", _i];
		_house setVariable [_door,1,true];
	};
}forEach _fetch;
