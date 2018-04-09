class RPF_shopSystemServerModule {
	class trackedItems {
		/*
    	class ExampleClass {
				buyPrice = 30;
				sellPrice = 10;
			};
    	*/
	};

	// List all your physical items for sale here

	class physicalShops {
		/*
		* className: classname of the physical item that's spawned
		* pos[]: position at which the item is spawned
		* dir: direction at which the item is pointing 0-360
		* price: price of the item
		* type: 0 - Car (a vehicle)
		*		1 - Item (Like a magazine of ammunition)
		*		2 - Physical item (Furniture / Fishing nets)
		* isMethLab: 0 - This physical item is not a meth lab
		*			 1 - This physical item is a meth lab
		*/
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
			pos[] = {16776,12635.4,1.4553};
			dir = 2.99588;
			price = 100;
			type = 2;
			isMethLab = 1;
		};	
	};
	
	class shopMarkers {
		/*
		* name: Name of the marker (This is just the handle used to access it; has to be unique)
		* pos[]: Position of the marker
		* shape: Shape of the marker (used for command setMarkerShape)
		* type: Type of the marker (used for command setMarkerType)
		* text: Text shown on the map at the marker's position (These are localized)
		*/
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
	};
	// List all shops that you define as classes below
	class shops {
		
		// buyItems & sellItems arrays:
		// {"class", price, type}
		// Types: 0 - Item, 1 - Magazine, 2 - Weapon, 3 - Uniform, 4 - Vest, 5 - Headgear, 6 - Backpack
		/*
		* classname: Classname of the shop that we spawn
		* pos[]: Position of the shop
		* dir: Direction of the shop 0-360
		* shopName: The name of the shop (This is localized)
		*
		* buyItems[]: Array of items that you can buy from the store
		*			{ classname, price, type }
		*			Where classname is the classname of the item, price is the price of it and type is one of the types listed below
		*			Types:	0 - Item
		*					1 - Magazine
		*					2 - Weapon
		*					3 - Uniform
		*					4 - Vest
		*					5 - Headgear
		*					6 - Backpack
		*			These types are needed for adding different kinds of items.
		*
		* sellItems[]: Same as buy items but for items you can sell to the store
		*
		* isPoliceStation: 	0 - This shop isn't a police station where officers can go on duty
		*					1 - This shop is a police station where officers can go on duty
		* isMedicStation: Same as isPoliceStation but for medic station
		*/
		class shop1 {
			className = "OfficeTable_01_new_F";
			pos[] = {16774.6,12631.1,1.4553};
			dir = 272.448;
			shopName = "STR_RPF_SHOPSYSTEM_GENERALSTORE";
			buyItems[] = {
				{"RPF_Items_Salema", 20},
				{"RPF_Items_Antibiotics", 30},
				{"RPF_Items_Painkillers", 20},
				{"RPF_Items_Vitamins", 20},
				{"RPF_Items_Battery", 4},
				{"RPF_Items_BakedBeans", 3},
				{"RPF_Items_WaterBottle", 3},
				{"RPF_Items_Canteen", 5},
				{"RPF_Items_Cereal", 5},
				{"RPF_Items_RiceBox", 5},
				{"RPF_Items_ButaneCanister", 15},
				{"RPF_Items_GasCanister", 10},
				{"RPF_Items_Matches", 3},
				{"RPF_Items_CleanerSpray", 15},
				
				{"U_Marshal", 30},
				{"U_C_Journalist", 30},
				{"U_B_Wetsuit", 50},
				{"U_OrestesBody", 30},
				{"U_IG_Guerilla2_1", 30},
				{"U_C_Poor_1", 30},
				
				{"V_Rangemaster_belt", 40},
				{"V_RebreatherB", 100},
				{"V_Press_F", 50},
				
				{"H_Cap_surfer", 10},
				{"H_Booniehat_oli", 10},
				{"H_Shemag_olive", 20},
				{"H_Hat_blue", 10},
				{"B_Kitbag_mcamo", 50}
			};
			sellItems[] = {
				{"RPF_Items_Salema", 20},
				{"U_Marshal", 15},
				{"U_C_Journalist", 15},
				{"U_B_Wetsuit", 25},
				{"U_OrestesBody", 15},
				{"U_IG_Guerilla2_1", 15},
				{"U_C_Poor_1", 15},
				
				{"V_Rangemaster_belt", 20},
				{"V_RebreatherB", 50},
				{"V_Press_F", 25, 4},
				
				{"H_Cap_surfer", 5},
				{"H_Booniehat_oli", 5},
				{"H_Shemag_olive", 10},
				{"H_Hat_blue", 5},
				{"B_Kitbag_mcamo", 25}
			};
			isPoliceStation = 0;
			isMedicStation = 0;
		};
		class shop2 {
			className = "C_man_hunter_1_F";
			pos[] = {16940,12635.2,0.00168991};
			dir = 0;
			shopName = "STR_RPF_SHOPSYSTEM_DRUGDEALER";
			buyItems[] = {
				{"RPF_Items_PoppySeed", 3},
				{"RPF_Items_Poppy", 150},
				{"RPF_Items_Meth", 200}
			};
			sellItems[] = {
				{"RPF_Items_PoppySeed", 1},
				{"RPF_Items_Poppy", 120},
				{"RPF_Items_Meth", 200}
			};
			isPoliceStation = 0;
			isMedicStation = 0;
		};
		class shop3 {
			className = "OfficeTable_01_new_F";
			pos[] = {16797.4,12551.2,-0.0250072};
			dir = 272.56;
			shopName = "STR_RPF_SHOPSYSTEM_FARMSTORE";
			buyItems[] = {
				{"RPF_Items_OliveSeed", 2},
				{"RPF_Items_Olives", 35}
			};
			sellItems[] = {
				{"RPF_Items_OliveSeed", 1},
				{"RPF_Items_Olives", 30}
			};
			isPoliceStation = 0;
			isMedicStation = 0;
		};
		class shop4 {
			className = "OfficeTable_01_new_F";
			pos[] = {16685.3,12450.8,-0.0249996};
			dir = 227.006;
			shopName = "STR_RPF_SHOPSYSTEM_GUNSTORE";
			buyItems[] = {
				{"hgun_Pistol_heavy_01_F", 700},
				{"11Rnd_45ACP_Mag", 15},
				{"muzzle_snds_acp", 350},
				{"optic_MRD", 300},
				{"SMG_01_F", 1400},
				{"30Rnd_45ACP_Mag_SMG_01", 30},
				{"optic_Holosight_smg", 400}
			};
			sellItems[] = {
				{"hgun_Pistol_heavy_01_F", 350},
				{"11Rnd_45ACP_Mag", 5},
				{"SMG_01_F", 700},
				{"30Rnd_45ACP_Mag_SMG_01", 15}
			};
			isPoliceStation = 0;
			isMedicStation = 0;
		};
		class shop5 {
			className = "OfficeTable_01_new_F";
			pos[] = {16565.4,12729.2,-9.53674e-006};
			dir = 219.919;
			shopName = "STR_RPF_SHOPSYSTEM_POLSTORE";
			buyItems[] = {
				{"hgun_Rook40_F", 700},
				{"30Rnd_9x21_Mag", 15},
				{"muzzle_snds_L", 300},
				{"arifle_Mk20_F", 1000},
				{"30Rnd_556x45_Stanag", 5},
				{"HandGrenade", 2},
				{"acc_pointer_IR", 5},
				{"optic_Arco", 10},
				{"U_B_CTRG_2", 5},
	
				{"RPF_Items_Handcuffs", 1},
				{"RPF_Items_HandcuffKeys", 1},
				
				{"V_TacVest_blk_POLICE", 40},
				{"V_TacVestIR_blk", 40},
				
				{"H_Cap_police", 10},
				{"H_Beret_blk_POLICE", 10},
				
				{"B_Carryall_oucamo", 25}
			};
			sellItems[] = {
				{"hgun_Rook40_F", 700},
				{"30Rnd_9x21_Mag", 15},
				{"muzzle_snds_L", 300},
				{"arifle_Mk20_F", 1000},
				{"30Rnd_556x45_Stanag", 5},
				{"HandGrenade", 2},
				{"acc_pointer_IR", 5},
				{"optic_Arco", 10},
				{"U_B_CTRG_2", 5},
	
				{"RPF_Items_Handcuffs", 1},
				{"RPF_Items_HandcuffKeys", 1},
				
				{"V_TacVest_blk_POLICE", 40},
				{"V_TacVestIR_blk", 40},
				
				{"H_Cap_police", 10},
				{"H_Beret_blk_POLICE", 10},
				
				{"B_Carryall_oucamo", 25}
			};
			isPoliceStation = 1;
			isMedicStation = 0;
		};
		class shop6 {
			className = "OfficeTable_01_new_F";
			pos[] = {16550.2,12764.8,0.00196266};
			dir = 305.069;
			shopName = "STR_RPF_SHOPSYSTEM_EMSSTORE";
			buyItems[] = {
				{"Medikit", 10},
				{"FirstAidKit", 5},
				{"U_C_Driver_1_red", 5},
				
				{"V_TacVest_brn", 40},
				
				{"H_Cap_red", 10},
				
				{"B_Carryall_cbr", 25}
			};
			sellItems[] = {
				{"Medikit", 10},
				{"FirstAidKit", 5},
				{"U_C_Driver_1_red", 5},
				
				{"V_TacVest_brn", 40},
				
				{"H_Cap_red", 10},
				
				{"B_Carryall_cbr", 25}
			};
			isPoliceStation = 0;
			isMedicStation = 1;
		};
	};
};