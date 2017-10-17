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
		["class", BUYprice]
	],
	[
		["class", SELLprice]
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

private _mC = "RPF_shopSystemServerModule";


_physicalShops = "true" configClasses (configFile >> "RPF_shopSystemServerModule" >> "physicalShops");
{
	private _configName = configName(_x);
	private _className = (configFile >> _mC >> "physicalShops" >> _configName >> "className") call BIS_fnc_getCfgData;
	private _pos = (configFile >> _mC >> "physicalShops" >> _configName >> "pos") call BIS_fnc_getCfgData;
	private _dir = (configFile >> _mC >> "physicalShops" >> _configName >> "dir") call BIS_fnc_getCfgData;
	private _price = (configFile >> _mC >> "physicalShops" >> _configName >> "price") call BIS_fnc_getCfgData;
	private _type = (configFile >> _mC >> "physicalShops" >> _configName >> "type") call BIS_fnc_getCfgData;
	private _isMethLab = (configFile >> _mC >> "physicalShops" >> _configName >> "isMethLab") call BIS_fnc_getCfgData;
	private _veh = _className createVehicle _pos;
	_veh setDir _dir;
	_veh setVariable ["buyableThing", [_className ,_price, _type], true];
	if (_isMethLab == 1) then {
		_veh setVariable ["methLab", true, true];
		_vars = _veh getVariable ["vars", []];
		_vars pushBack ["methLab", true];
		_veh setVariable ["vars", _vars, true];
	};
} forEach _physicalShops;

[]spawn ServerModules_fnc_vehicleShopLoop;


_shopMarkers = "true" configClasses (configFile >> "RPF_shopSystemServerModule" >> "shopMarkers");
{
	private _configName = configName(_x);
	private _name = (configFile >> _mC >> "shopMarkers" >> _configName >> "name") call BIS_fnc_getCfgData;
	private _pos = (configFile >> _mC >> "shopMarkers" >> _configName >> "pos") call BIS_fnc_getCfgData;
	private _shape = (configFile >> _mC >> "shopMarkers" >> _configName >> "shape") call BIS_fnc_getCfgData;
	private _type = (configFile >> _mC >> "shopMarkers" >> _configName >> "type") call BIS_fnc_getCfgData;
	private _text = (configFile >> _mC >> "shopMarkers" >> _configName >> "text") call BIS_fnc_getCfgData;
	private _marker = createMarker [_name, _pos];
	_marker setMarkerShape _shape;
	_marker setMarkerType _type;
	_marker setMarkerText _text;
}forEach _shopMarkers;


_shops = "true" configClasses (configFile >> "RPF_shopSystemServerModule" >> "shops");
{
	private _configName = configName(_x);
	private _className = (configFile >> _mC >> "shops" >> _configName >> "className") call BIS_fnc_getCfgData;
	private _pos = (configFile >> _mC >> "shops" >> _configName >> "pos") call BIS_fnc_getCfgData;
	private _dir = (configFile >> _mC >> "shops" >> _configName >> "dir") call BIS_fnc_getCfgData;
	private _shopName = (configFile >> _mC >> "shops" >> _configName >> "shopName") call BIS_fnc_getCfgData;
	private _buyItems = (configFile >> _mC >> "shops" >> _configName >> "buyItems") call BIS_fnc_getCfgData;
	private _sellItems = (configFile >> _mC >> "shops" >> _configName >> "sellItems") call BIS_fnc_getCfgData;
	private _isPoliceStation = (configFile >> _mC >> "shops" >> _configName >> "isPoliceStation") call BIS_fnc_getCfgData;
	private _isMedicStation = (configFile >> _mC >> "shops" >> _configName >> "isMedicStation") call BIS_fnc_getCfgData;
	private _store = _className createVehicle [0,0,0];
	_store setPosATL _pos;
	_store setDir _dir;
	_store allowDamage false;
	
	_store setVariable ["shopSystemShop", [_shopName,_buyItems,_sellItems], true];
	if (_isPoliceStation == 1) then {_store setVariable ["policeStation", 1, true];};
	if (_isMedicStation == 1) then {_store setVariable ["medicStation", 1, true];};
}forEach _shops;



