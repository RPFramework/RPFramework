/*
Author: Kerkkoh
First Edit: 24.4.2016

############
Physical items format:
["classname", position, direction, price, type(0 - Car, 1 - Item, 2 - Physical item (Furniture / Fishing nets)), isMethLab]
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!To spawn in car shops look at ShopSystem\fn_vehicleShopLoop.sqf!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
############

############
Markers format:
["marker name", position, "shape", "type", "text"]
############

############
shopSystemShop variable format:
["name", buyArray, sellArray]
Example:
[
	"Shop Name",
	[
		["class", BUYprice, type]
	],
	[
		["class", SELLprice, type]
	]
];
Types: 0 - Item, 1 - Magazine, 2 - Weapon, 3 - Uniform, 4 - Vest, 5 - Headgear, 6 - Backpack
############

############
Shops format:
["classname", position, direction, [shopSystemShop variable array (Look up)], isPoliceStation, isMedicStation]
############

You can use the mission editor to spawn things like shops just set the variables correct and they will work.
*/

_mC = "RPF_shopSystemServerModule";

{
	_className = (configFile >> _mC >> _x >> "className") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_dir = (configFile >> _mC >> _x >> "dir") call BIS_fnc_getCfgData;
	_price = (configFile >> _mC >> _x >> "price") call BIS_fnc_getCfgData;
	_type = (configFile >> _mC >> _x >> "type") call BIS_fnc_getCfgData;
	_isMethLab = (configFile >> _mC >> _x >> "isMethLab") call BIS_fnc_getCfgData;

	_veh = _className createVehicle _pos;
	_veh setDir _dir;
	_veh setVariable ["buyableThing", [_className ,_price, _type], true];
	if (_isMethLab == 1) then {
		_veh setVariable ["methLab", true, true];
		_vars = _veh getVariable ["vars", []];
		_vars pushBack ["methLab", true];
		_veh setVariable ["vars", _vars, true];
	};
}forEach ((configFile >> _mC >> "shopSystemPhysicals") call BIS_fnc_getCfgData);

[]spawn ServerModules_fnc_vehicleShopLoop;

{
	_name = (configFile >> _mC >> _x >> "name") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_shape = (configFile >> _mC >> _x >> "shape") call BIS_fnc_getCfgData;
	_type = (configFile >> _mC >> _x >> "type") call BIS_fnc_getCfgData;
	_text = (configFile >> _mC >> _x >> "text") call BIS_fnc_getCfgData;
	
	_marker = createMarker [_name, _pos];
	_marker setMarkerShape _shape;
	_marker setMarkerType _type;
	_marker setMarkerText _text;
}forEach ((configFile >> _mC >> "shopMarkers") call BIS_fnc_getCfgData);

{
	_className = (configFile >> _mC >> _x >> "className") call BIS_fnc_getCfgData;
	_pos = (configFile >> _mC >> _x >> "pos") call BIS_fnc_getCfgData;
	_dir = (configFile >> _mC >> _x >> "dir") call BIS_fnc_getCfgData;
	_shopName = (configFile >> _mC >> _x >> "shopName") call BIS_fnc_getCfgData;
	_buyItems = (configFile >> _mC >> _x >> "buyItems") call BIS_fnc_getCfgData;
	_sellItems = (configFile >> _mC >> _x >> "sellItems") call BIS_fnc_getCfgData;
	_isPoliceStation = (configFile >> _mC >> _x >> "isPoliceStation") call BIS_fnc_getCfgData;
	_isMedicStation = (configFile >> _mC >> _x >> "isMedicStation") call BIS_fnc_getCfgData;

	_store = _className createVehicle [0,0,0];
	_store setPosASL _pos;
	_store setDir _dir;
	_store allowDamage false;
	
	_store setVariable ["shopSystemShop", [_shopName,_buyItems,_sellItems], true];
	if (_isPoliceStation == 1) then {_store setVariable ["policeStation", 1, true];};
	if (_isMedicStation == 1) then {_store setVariable ["medicStation", 1, true];};
}forEach ((configFile >> _mC >> "shops") call BIS_fnc_getCfgData);



