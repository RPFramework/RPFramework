/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
_vehicleStoreMarker = createMarker ["vehicleStore", [16736.5,12502.5,0.00124454]]; 
_vehicleStoreMarker setMarkerShape "ICON"; 
_vehicleStoreMarker setMarkerType "hd_dot";
_vehicleStoreMarker setMarkerText "Vehicle Store";

_veh1 = "C_SUV_01_F" createVehicle [16741.5,12505.9,0.0241032];
_veh1 setDir 319.798;
_veh1 setVariable ["buyableThing", ["C_SUV_01_F", 10000, 0], true];
_veh1 lock true;

_veh3 = "C_Offroad_01_F" createVehicle [16735.7,12501.3,-0.00195217];
_veh3 setDir 321.902;
_veh3 setVariable ["buyableThing", ["C_Offroad_01_F", 10000, 0], true];
_veh3 lock true;

_veh5 = "C_Van_01_box_F" createVehicle [16730,12497,0.0254688];
_veh5 setDir 322.976;
_veh5 setVariable ["buyableThing", ["C_Van_01_box_F", 15000, 0], true];
_veh5 lock true;

[]spawn ServerModules_fnc_vehicleShopLoop;



_net = "CargoNet_01_box_F" createVehicle [16777.7,12630.4,-0.0249977];
_net setDir 93.6125;
_net setVariable ["buyableThing", ["CargoNet_01_box_F", 50, 2], true];



_generalStoreMarker = createMarker ["generalStore", [16774.1,12633,-0.0249958]]; 
_generalStoreMarker setMarkerShape "ICON"; 
_generalStoreMarker setMarkerType "hd_dot";
_generalStoreMarker setMarkerText "General Store";

_generalStore = "OfficeTable_01_new_F" createVehicle [16774.1,12633,-0.0249958];
_generalStore setDir 92.5626;
_arrayGeneral =
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
];
_generalStore setVariable ["shopSystemShop", _arrayGeneral, true];

_drugDealerMarker = createMarker ["drugDealer", [16940,12635.2,0.00168991]]; 
_drugDealerMarker setMarkerShape "ICON"; 
_drugDealerMarker setMarkerType "hd_dot";
_drugDealerMarker setMarkerText "Drug Dealer";

_drugDealer = "C_man_hunter_1_F" createVehicle [16940,12635.2,0.00168991];
_drugDealer allowDamage false;
_arrayDrugDealer =
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
];
_drugDealer setVariable ["shopSystemShop", _arrayDrugDealer, true];

_farmStoreMarker = createMarker ["farmStore", [16797.4,12551.2,-0.0250072]]; 
_farmStoreMarker setMarkerShape "ICON"; 
_farmStoreMarker setMarkerType "hd_dot";
_farmStoreMarker setMarkerText "Farm Store";

_farmStore = "OfficeTable_01_new_F" createVehicle [16797.4,12551.2,-0.0250072];
_farmStore setDir 272.56;
_arrayFarm =
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
];
_farmStore setVariable ["shopSystemShop", _arrayFarm, true];

_gunStoreMarker = createMarker ["gunStore", [16685.3,12450.8,-0.0249996]]; 
_gunStoreMarker setMarkerShape "ICON"; 
_gunStoreMarker setMarkerType "hd_dot";
_gunStoreMarker setMarkerText "Gun Store";

_gunStore = "OfficeTable_01_new_F" createVehicle [16685.3,12450.8,-0.0249996];
_gunStore setDir 227.006;
_arrayGunStore =
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
];
_gunStore setVariable ["shopSystemShop", _arrayGunStore, true];

_polStoreMarker = createMarker ["polStore", [16565.4,12729.2,-9.53674e-006]]; 
_polStoreMarker setMarkerShape "ICON"; 
_polStoreMarker setMarkerType "hd_dot";
_polStoreMarker setMarkerText "Police Store";

_polStore = "OfficeTable_01_new_F" createVehicle [16565.4,12729.2,-9.53674e-006];
_polStore setDir 219.919;
_arraypolStore =
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
];
_polStore setVariable ["shopSystemShop", _arraypolStore, true];

_emsStoreMarker = createMarker ["emsStore", [16550.2,12764.8,0.00196266]]; 
_emsStoreMarker setMarkerShape "ICON"; 
_emsStoreMarker setMarkerType "hd_dot";
_emsStoreMarker setMarkerText "EMS Store";

_emsStore = "OfficeTable_01_new_F" createVehicle [16550.2,12764.8,0.00196266];
_emsStore setDir 305.069;
_arrayemsStore =
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
];
_emsStore setVariable ["shopSystemShop", _arrayemsStore, true];