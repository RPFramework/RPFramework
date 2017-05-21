class RPF_shopSystemServerModule {
	// We need to list all the classes in seperate arrays so the scripts can easily access them
	shopSystemPhysicals[] = {
		"phys1",
		"phys2"
	};
	
	class phys1 {
		className = "CargoNet_01_box_F";
		pos[] = {16777.7,12630.4,-0.0249977};
		dir = 93.6125;
		price = 50;
		type = 2;
		isMethLab = 0;
	};
	class phys2 {
		className = "OfficeTable_01_new_F";
		pos[] = {16776,12635.4,-0.0249977};
		dir = 2.99588;
		price = 100;
		type = 2;
		isMethLab = 1;
	};
	
	shopMarkers[] = {
		"marker1",
		"marker2",
		"marker3",
		"marker4",
		"marker5",
		"marker6",
		"marker7"
	};
	
	class marker1 {
		name = "vehicleStore";
		pos[] = {16736.5,12502.5,0.00124454};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_VEHICLESTORE;
	};
	class marker2 {
		name = "generalStore";
		pos[] = {16774.1,12633,-0.0249958};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_GENERALSTORE;
	};
	class marker3 {
		name = "drugDealer";
		pos[] = {16940,12635.2,0.00168991};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_DRUGDEALER;
	};
	class marker4 {
		name = "farmStore";
		pos[] = {16797.4,12551.2,-0.0250072};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_FARMSTORE;
	};
	class marker5 {
		name = "gunStore";
		pos[] = {16685.3,12450.8,-0.0249996};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_GUNSTORE;
	};
	class marker6 {
		name = "polStore";
		pos[] = {16565.4,12729.2,-9.53674e-006};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_POLSTORE;
	};
	class marker7 {
		name = "emsStore";
		pos[] = {16550.2,12764.8,0.00196266};
		shape = "ICON";
		type = "hd_dot";
		text = $STR_RPF_SHOPSYSTEM_EMSSTORE;
	};
	
	shops[] = {
		"shop1",
		"shop2",
		"shop3",
		"shop4",
		"shop5",
		"shop6"
	};
	
	// buyItems & sellItems arrays:
	// {"class", price, type}
	// Types: 0 - Item, 1 - Magazine, 2 - Weapon, 3 - Uniform, 4 - Vest, 5 - Headgear, 6 - Backpack
	class shop1 {
		className = "OfficeTable_01_new_F";
		pos[] = {16773.7,12632.5,21.9305};
		dir = 91.2246;
		shopName = $STR_RPF_SHOPSYSTEM_GENERALSTORE;
		buyItems[] = {
			{"RPF_Items_Salema", 20, 0},
			{"RPF_Items_Antibiotics", 30, 0},
			{"RPF_Items_Painkillers", 20, 0},
			{"RPF_Items_Vitamins", 20, 0},
			{"RPF_Items_Battery", 4, 0},
			{"RPF_Items_BakedBeans", 3, 0},
			{"RPF_Items_WaterBottle", 3, 0},
			{"RPF_Items_Canteen", 5, 0},
			{"RPF_Items_Cereal", 5, 0},
			{"RPF_Items_RiceBox", 5, 0},
			{"RPF_Items_ButaneCanister", 15, 0},
			{"RPF_Items_GasCanister", 10, 0},
			{"RPF_Items_Matches", 3, 0},
			{"RPF_Items_CleanerSpray", 15, 0},
			
			{"U_Marshal", 30, 3},
			{"U_C_Journalist", 30, 3},
			{"U_B_Wetsuit", 50, 3},
			{"U_OrestesBody", 30, 3},
			{"U_IG_Guerilla2_1", 30, 3},
			{"U_C_Poor_1", 30, 3},
			
			{"V_Rangemaster_belt", 40, 4},
			{"V_RebreatherB", 100, 4},
			{"V_Press_F", 50, 4},
			
			{"H_Cap_surfer", 10, 5},
			{"H_Booniehat_oli", 10, 5},
			{"H_Shemag_olive", 20, 5},
			{"H_Hat_blue", 10, 5},
			{"B_Kitbag_mcamo", 50, 6}
		};
		sellItems[] = {
			{"RPF_Items_Salema", 20, 0},
			{"U_Marshal", 15, 3},
			{"U_C_Journalist", 15, 3},
			{"U_B_Wetsuit", 25, 3},
			{"U_OrestesBody", 15, 3},
			{"U_IG_Guerilla2_1", 15, 3},
			{"U_C_Poor_1", 15, 3},
			
			{"V_Rangemaster_belt", 20, 4},
			{"V_RebreatherB", 50, 4},
			{"V_Press_F", 25, 4},
			
			{"H_Cap_surfer", 5, 5},
			{"H_Booniehat_oli", 5, 5},
			{"H_Shemag_olive", 10, 5},
			{"H_Hat_blue", 5, 5},
			{"B_Kitbag_mcamo", 25, 6}
		};
		isPoliceStation = 0;
		isMedicStation = 0;
	};
	class shop2 {
		className = "C_man_hunter_1_F";
		pos[] = {16940,12635.2,0.00168991};
		dir = 0;
		shopName = $STR_RPF_SHOPSYSTEM_DRUGDEALER;
		buyItems[] = {
			{"RPF_Items_PoppySeed", 3, 0},
			{"RPF_Items_Poppy", 150, 0},
			{"RPF_Items_Meth", 200, 0}
		};
		sellItems[] = {
			{"RPF_Items_PoppySeed", 1, 0},
			{"RPF_Items_Poppy", 120, 0},
			{"RPF_Items_Meth", 200, 0}
		};
		isPoliceStation = 0;
		isMedicStation = 0;
	};
	class shop3 {
		className = "OfficeTable_01_new_F";
		pos[] = {16797.4,12551.2,-0.0250072};
		dir = 272.56;
		shopName = $STR_RPF_SHOPSYSTEM_FARMSTORE;
		buyItems[] = {
			{"RPF_Items_OliveSeed", 2, 0},
			{"RPF_Items_Olives", 35, 0}
		};
		sellItems[] = {
			{"RPF_Items_OliveSeed", 1, 0},
			{"RPF_Items_Olives", 30, 0}
		};
		isPoliceStation = 0;
		isMedicStation = 0;
	};
	class shop4 {
		className = "OfficeTable_01_new_F";
		pos[] = {16685.3,12450.8,-0.0249996};
		dir = 227.006;
		shopName = $STR_RPF_SHOPSYSTEM_GUNSTORE;
		buyItems[] = {
			{"hgun_Pistol_heavy_01_F", 700, 2},
			{"11Rnd_45ACP_Mag", 15, 1},
			{"muzzle_snds_acp", 350, 0},
			{"optic_MRD", 300, 0},
			{"SMG_01_F", 1400, 2},
			{"30Rnd_45ACP_Mag_SMG_01", 30, 1},
			{"optic_Holosight_smg", 400, 0}
		};
		sellItems[] = {
			{"hgun_Pistol_heavy_01_F", 350, 2},
			{"11Rnd_45ACP_Mag", 5, 1},
			{"SMG_01_F", 700, 2},
			{"30Rnd_45ACP_Mag_SMG_01", 15, 1}
		};
		isPoliceStation = 0;
		isMedicStation = 0;
	};
	class shop5 {
		className = "OfficeTable_01_new_F";
		pos[] = {16565.4,12729.2,-9.53674e-006};
		dir = 219.919;
		shopName = $STR_RPF_SHOPSYSTEM_POLSTORE;
		buyItems[] = {
			{"hgun_Rook40_F", 700, 2},
			{"30Rnd_9x21_Mag", 15, 1},
			{"muzzle_snds_L", 300, 0},
			{"SMG_02_F", 100, 2},
			{"30Rnd_9x21_Mag", 5, 1},
			{"HandGrenade", 2, 1},
			{"acc_pointer_IR", 5, 0},
			{"optic_Arco", 10, 0},
			{"U_B_CTRG_2", 5, 3},

			{"RPF_Items_Handcuffs", 1, 0},
			{"RPF_Items_HandcuffKeys", 1, 0},
			
			{"V_TacVest_blk_POLICE", 40, 4},
			{"V_TacVestIR_blk", 40, 4},
			
			{"H_Cap_police", 10, 5},
			{"H_Beret_blk_POLICE", 10, 5},
			
			{"B_Carryall_oucamo", 25, 6}
		};
		sellItems[] = {
			{"hgun_Rook40_F", 700, 2},
			{"30Rnd_9x21_Mag", 15, 1},
			{"muzzle_snds_L", 300, 0},
			{"SMG_02_F", 100, 2},
			{"30Rnd_9x21_Mag", 5, 1},
			{"HandGrenade", 2, 1},
			{"acc_pointer_IR", 5, 0},
			{"optic_Arco", 10, 0},
			{"U_B_CTRG_2", 5, 3},

			{"RPF_Items_Handcuffs", 1, 0},
			{"RPF_Items_HandcuffKeys", 1, 0},
			
			{"V_TacVest_blk_POLICE", 40, 4},
			{"V_TacVestIR_blk", 40, 4},
			
			{"H_Cap_police", 10, 5},
			{"H_Beret_blk_POLICE", 10, 5},
			
			{"B_Carryall_oucamo", 25, 6}
		};
		isPoliceStation = 1;
		isMedicStation = 0;
	};
	class shop6 {
		className = "OfficeTable_01_new_F";
		pos[] = {16550.2,12764.8,0.00196266};
		dir = 305.069;
		shopName = $STR_RPF_SHOPSYSTEM_EMSSTORE;
		buyItems[] = {
			{"Medikit", 10, 0},
			{"FirstAidKit", 5, 0},
			{"U_C_Driver_1_red", 5, 3},
			
			{"V_TacVest_brn", 40, 4},
			
			{"H_Cap_red", 10, 5},
			
			{"B_Carryall_cbr", 25, 6}
		};
		sellItems[] = {
			{"Medikit", 10, 0},
			{"FirstAidKit", 5, 0},
			{"U_C_Driver_1_red", 5, 3},
			
			{"V_TacVest_brn", 40, 4},
			
			{"H_Cap_red", 10, 5},
			
			{"B_Carryall_cbr", 25, 6}
		};
		isPoliceStation = 0;
		isMedicStation = 1;
	};
};