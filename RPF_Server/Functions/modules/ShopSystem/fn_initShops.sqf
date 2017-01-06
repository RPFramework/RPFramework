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
*/

_physicals = [
	["CargoNet_01_box_F", [16777.7,12630.4,-0.0249977], 93.6125, 50, 2, false],
	["OfficeTable_01_new_F", [16776,12635.4,-0.0249977], 2.99588, 100, 2, true]
];
{
	_veh = (_x select 0) createVehicle (_x select 1);
	_veh setDir (_x select 2);
	_veh setVariable ["buyableThing", [_x select 0, _x select 3, _x select 4], true];
	if (_x select 5) then {
		_veh setVariable ["methLab", true, true];
		_vars = _veh getVariable ["vars", []];
		_vars pushBack ["methLab", true];
		_veh setVariable ["vars", _vars, true];
	};
}forEach _physicals;

[]spawn ServerModules_fnc_vehicleShopLoop;

_markers = [
	["vehicleStore",[16736.5,12502.5,0.00124454],"ICON","hd_dot","Vehicle Store"],
	["generalStore",[16774.1,12633,-0.0249958],"ICON","hd_dot","General Store"],
	["drugDealer",[16940,12635.2,0.00168991],"ICON","hd_dot","Drug Dealer"],
	["farmStore",[16797.4,12551.2,-0.0250072],"ICON","hd_dot","Farm Store"],
	["gunStore",[16685.3,12450.8,-0.0249996],"ICON","hd_dot","Gun Store"],
	["polStore",[16565.4,12729.2,-9.53674e-006],"ICON","hd_dot","Police Store"],
	["emsStore",[16550.2,12764.8,0.00196266],"ICON","hd_dot","EMS Store"]
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
		[16774.1,12633,-0.0249958],
		92.5626,
		[
			"General Store",
			[
				["RPF_Items_Salema", 20, 0],
				["RPF_Items_Antibiotics", 30, 0],
				["RPF_Items_Painkillers", 20, 0],
				["RPF_Items_Vitamins", 20, 0],
				["RPF_Items_Battery", 4, 0],
				["RPF_Items_BakedBeans", 3, 0],
				["RPF_Items_WaterBottle", 3, 0],
				["RPF_Items_Canteen", 5, 0],
				["RPF_Items_Cereal", 5, 0],
				["RPF_Items_RiceBox", 5, 0],
				["RPF_Items_ButaneCanister", 15, 0],
				["RPF_Items_GasCanister", 10, 0],
				["RPF_Items_Matches", 3, 0],
				["RPF_Items_CleanerSpray", 15, 0],
				
				["U_Marshal", 30, 3],
				["U_C_Journalist", 30, 3],
				["U_B_Wetsuit", 50, 3],
				["U_OrestesBody", 30, 3],
				["U_IG_Guerilla2_1", 30, 3],
				["U_C_Poor_1", 30, 3],
				
				["V_Rangemaster_belt", 40, 4],
				["V_RebreatherB", 100, 4],
				["V_Press_F", 50, 4],
				
				["H_Cap_surfer", 10, 5],
				["H_Booniehat_oli", 10, 5],
				["H_Shemag_olive", 20, 5],
				["H_Hat_blue", 10, 5],
				["B_Kitbag_mcamo", 50, 6]
			],
			[
				["RPF_Items_Salema", 20, 0],
				["U_Marshal", 15, 3],
				["U_C_Journalist", 15, 3],
				["U_B_Wetsuit", 25, 3],
				["U_OrestesBody", 15, 3],
				["U_IG_Guerilla2_1", 15, 3],
				["U_C_Poor_1", 15, 3],
				
				["V_Rangemaster_belt", 20, 4],
				["V_RebreatherB", 50, 4],
				["V_Press_F", 25, 4],
				
				["H_Cap_surfer", 5, 5],
				["H_Booniehat_oli", 5, 5],
				["H_Shemag_olive", 10, 5],
				["H_Hat_blue", 5, 5],
				["B_Kitbag_mcamo", 25, 6]
			]
		],
		false,
		false
	],
	[
		"C_man_hunter_1_F",
		[16940,12635.2,0.00168991],
		0,
		[
			"Drug Dealer",
			[
				["RPF_Items_PoppySeed", 3, 0],
				["RPF_Items_Poppy", 150, 0],
				["RPF_Items_Meth", 200, 0]
			],
			[
				["RPF_Items_PoppySeed", 1, 0],
				["RPF_Items_Poppy", 120, 0],
				["RPF_Items_Meth", 200, 0]
			]
		],
		false,
		false
	],
	[
		"OfficeTable_01_new_F",
		[16797.4,12551.2,-0.0250072],
		272.56,
		[
			"Farm Store",
			[
				["RPF_Items_OliveSeed", 2, 0],
				["RPF_Items_Olives", 35, 0]
			],
			[
				["RPF_Items_OliveSeed", 1, 0],
				["RPF_Items_Olives", 30, 0]
			]
		],
		false,
		false
	],
	[
		"OfficeTable_01_new_F",
		[16685.3,12450.8,-0.0249996],
		227.006,
		[
			"Gun Store",
			[
				["hgun_Pistol_heavy_01_F", 700, 2],
				["11Rnd_45ACP_Mag", 15, 1],
				["muzzle_snds_acp", 350, 0],
				["optic_MRD", 300, 0],
				["SMG_01_F", 1400, 2],
				["30Rnd_45ACP_Mag_SMG_01", 30, 1],
				["optic_Holosight_smg", 400, 0]
				
			],
			[
				["hgun_Pistol_heavy_01_F", 350, 2],
				["11Rnd_45ACP_Mag", 5, 1],
				["SMG_01_F", 700, 2],
				["30Rnd_45ACP_Mag_SMG_01", 15, 1]
			]
		],
		false,
		false
	],
	[
		"OfficeTable_01_new_F",
		[16565.4,12729.2,-9.53674e-006],
		219.919,
		[
			"Police",
			[
				["hgun_Rook40_F", 700, 2],
				["30Rnd_9x21_Mag", 15, 1],
				["muzzle_snds_L", 300, 0],
				["SMG_02_F", 100, 2],
				["30Rnd_9x21_Mag", 5, 1],
				["HandGrenade", 2, 1],
				["acc_pointer_IR", 5, 0],
				["optic_Arco", 10, 0],
				["U_B_CTRG_2", 5, 3],

				["RPF_Items_Handcuffs", 1, 0],
				["RPF_Items_HandcuffKeys", 1, 0],
				
				["V_TacVest_blk_POLICE", 40, 4],
				["V_TacVestIR_blk", 40, 4],
				
				["H_Cap_police", 10, 5],
				["H_Beret_blk_POLICE", 10, 5],
				
				["B_Carryall_oucamo", 25, 6]
			],
			[
				["hgun_Rook40_F", 700, 2],
				["30Rnd_9x21_Mag", 15, 1],
				["muzzle_snds_L", 300, 0],
				["SMG_02_F", 100, 2],
				["30Rnd_9x21_Mag", 5, 1],
				["HandGrenade", 2, 1],
				["acc_pointer_IR", 5, 0],
				["optic_Arco", 10, 0],
				["U_B_CTRG_2", 5, 3],

				["RPF_Items_Handcuffs", 1, 0],
				["RPF_Items_HandcuffKeys", 1, 0],
				
				["V_TacVest_blk_POLICE", 40, 4],
				["V_TacVestIR_blk", 40, 4],
				
				["H_Cap_police", 10, 5],
				["H_Beret_blk_POLICE", 10, 5],
				
				["B_Carryall_oucamo", 25, 6]
			]
		],
		true,
		false
	],
	[
		"OfficeTable_01_new_F",
		[16550.2,12764.8,0.00196266],
		305.069,
		[
			"EMS",
			[
				["Medikit", 10, 0],
				["FirstAidKit", 5, 0],
				["U_C_Driver_1_red", 5, 3],
				
				["V_TacVest_brn", 40, 4],
				
				["H_Cap_red", 10, 5],
				
				["B_Carryall_cbr", 25, 6]
			],
			[
				["Medikit", 10, 0],
				["FirstAidKit", 5, 0],
				["U_C_Driver_1_red", 5, 3],
				
				["V_TacVest_brn", 40, 4],
				
				["H_Cap_red", 10, 5],
				
				["B_Carryall_cbr", 25, 6]
			]
		],
		false,
		true
	]
];
{
	_store = (_x select 0) createVehicle (_x select 1);
	_store setDir (_x select 2);
	_store setVariable ["shopSystemShop", _x select 3, true];
	_store allowDamage false;
	if (_x select 4) then {_store setVariable ["policeStation", 1, true];};
	if (_x select 5) then {_store setVariable ["medicStation", 1, true];};
}forEach _shops;
