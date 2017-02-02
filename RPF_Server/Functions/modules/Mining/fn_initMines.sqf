/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

_minepositions = [[17058.1,11305,0.00146484]];

RPF_Rocks = ["RPF_Mining_Rock1", "RPF_Mining_Rock2", "RPF_Mining_Rock3"];

RPF_MiningRockPositions = [];

{
	for "_i" from 1 to 15 step 1 do {
		_class = selectRandom RPF_Rocks;
		_pos = [(_x select 0) + ((random 40)-20), (_x select 1) + ((random 40)-20), (_x select 2)];
		_rock = _class createVehicle [0,0,0];
		_rock setPos _pos;
		_rock setDir random 360;
		RPF_MiningRockPositions pushBack _pos;
	};
}forEach _minepositions;

[]spawn ServerModules_fnc_miningLoop;

_markers = [
	["mine",[17058.1,11305,0.00146484],"ICON","hd_dot","Mine"],
	["minetrader",[16934.2,12704.7,17.802],"ICON","hd_dot","Mineral trader"],
	["mineprocessing",[17204.8,13310.9,12.5823],"ICON","hd_dot","Mineral processing"]
];

{
	_marker = createMarker [_x select 0, _x select 1];
	_marker setMarkerShape (_x select 2);
	_marker setMarkerType (_x select 3);
	_marker setMarkerText (_x select 4);
}forEach _markers;

_shops = [
	[
		"OfficeTable_01_new_F",
		[16934.2,12704.7,17.802],
		194.531,
		[
			"Mineral trader",
			[
				["RPF_Mining_Grinder", 150, 0]
			],
			[
				["RPF_Mining_Minerals", 10, 0],
				["RPF_Mining_Gold", 100, 0],
				["RPF_Mining_Iron", 50, 0],
				["RPF_Mining_Copper", 25, 0]
			]
		],
		false
	],
	[
		"OfficeTable_01_new_F",
		[17204.8,13310.9,12.5823],
		194.521,
		[],
		true
	]
];
{
	_store = (_x select 0) createVehicle [0,0,0];
	_store setPosASL (_x select 1);
	_store setDir (_x select 2);
	_store allowDamage false;
	if (_x select 4) then {
		_store setVariable ["mp", true, true];
	} else {
		_store setVariable ["shopSystemShop", _x select 3, true];
	};
}forEach _shops;
