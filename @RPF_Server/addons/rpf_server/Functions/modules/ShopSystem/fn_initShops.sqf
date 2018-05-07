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

private _cfg = configFile >> "RPF_shopSystemServerModule";

{
	private["_class", "_veh", "_vars"];
	_class = getText(_x >> "className");

	_veh = _class createVehicle [0,0,0];
	_veh setPosATL getArray(_x >> "pos");
	_veh setDir getNumber(_x >> "dir");
	_veh setVariable ["buyableThing", [_class, getNumber(_x >> "price"), getNumber(_x >> "type")], true];

	if (getNumber(_x >> "isMethLab") isEqualTo 1) then {
		_veh setVariable ["methLab", true, true];
		_vars = _veh getVariable ["vars", []];
		_vars pushBack ["methLab", true];
		_veh setVariable ["vars", _vars, true];
	};
	true;
}count ("true" configClasses (_cfg >> "physicalShops"));

[]spawn ServerModules_fnc_vehicleShopLoop;

{
	private _marker = createMarker [configName _x, getArray(_x >> "pos")];
	_marker setMarkerShape getText(_x >> "shape");
	_marker setMarkerType getText(_x >> "type");
	_marker setMarkerText getText(_x >> "text");
	true;
}count ("true" configClasses (_cfg >> "shopMarkers"));

{
	private _veh = createSimpleObject[getText(_x >> "className"), [0,0,0]];
	_veh setPosATL getArray(_x >> "pos");
	_veh setDir getNumber(_x >> "dir");

	_veh setVariable ["shopSystemShop", [getText(_x >> "shopName"), getArray(_x >> "buyItems"), getArray(_x >> "sellItems")], true];
	if (getNumber(_x >> "isPoliceStation") isEqualTo 1) then {_veh setVariable ["policeStation", 1, true];};
	if (getNumber(_x >> "isMedicStation") isEqualTo 1) then {_veh setVariable ["medicStation", 1, true];};
	true;
}count ("true" configClasses (_cfg >> "shops"));
