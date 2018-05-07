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
		* pos[]: position at which the item is spawned, ATL
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
			pos[] = {16776.3,12630.4,1.12842};
			dir = 184.547;
			price = 300;
			type = 2;
			isMethLab = 0;
		};
		class phys2 {
			className = "Land_TableDesk_F";
			pos[] = {16775.9,12635.7,0.657261};
			dir = 1.14293;
			price = 500;
			type = 2;
			isMethLab = 1;
		};
	};

	class shopMarkers {
		/*
		* The name of the class should be an unique identifier for the marker
		* pos[]: Position of the marker
		* shape: Shape of the marker (used for command setMarkerShape)
		* type: Type of the marker (used for command setMarkerType)
		* text: Text shown on the map at the marker's position (These are localized)
		*/
		class vehicleStore {
			pos[] = {16736.5,12502.5,0.00124454};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_VEHICLESTORE;
		};
		class generalStore {
			pos[] = {16774.1,12633,-0.0249958};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_GENERALSTORE;
		};
		class drugDealer {
			pos[] = {16940,12635.2,0.00168991};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_DRUGDEALER;
		};
		class farmStore {
			pos[] = {16797.4,12551.2,-0.0250072};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_FARMSTORE;
		};
		class gunStore {
			pos[] = {16685.3,12450.8,-0.0249996};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_GUNSTORE;
		};
		class polStore {
			pos[] = {16565.4,12729.2,-9.53674e-006};
			shape = "ICON";
			type = "hd_dot";
			text = $STR_RPF_SHOPSYSTEM_POLSTORE;
		};
		class emsStore {
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
		* classname: Classname of the shop that we spawn OR the path to the p3d model of the objet since these are simple objects
		* pos[]: Position of the shop, ATL
		* dir: Direction of the shop 0-360 degrees
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
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16773.4,12632.5,1.28563};
			dir = 272.798;
			shopName = "STR_RPF_SHOPSYSTEM_GENERALSTORE";
			buyItems[] = {
				{"RPF_Items_Salema", 10},
				{"RPF_Items_Antibiotics", 20},
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
				{"U_C_Poor_1", 10},

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
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16941,12636.5,0.0048542};
			dir = 311.788;
			shopName = "STR_RPF_SHOPSYSTEM_DRUGDEALER";
			buyItems[] = {
				{"RPF_Items_PoppySeed", 2},
				{"RPF_Items_CocaSeed", 4},
				{"RPF_Items_WeedSeed", 1},
				{"RPF_Items_Heroin", 300},
				{"RPF_Items_Coke", 450},
				{"RPF_Items_Weed", 100},
				{"RPF_Items_Meth", 350}
			};
			sellItems[] = {
				{"RPF_Items_Poppy", 100},
				{"RPF_Items_Heroin", 250},
				{"RPF_Items_Coke", 400},
				{"RPF_Items_Weed", 60},
				{"RPF_Items_Meth", 300}
			};
			isPoliceStation = 0;
			isMedicStation = 0;
		};
		class shop3 {
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16797.1,12551.1,0.732117};
			dir = 256.722;
			shopName = "STR_RPF_SHOPSYSTEM_FARMSTORE";
			buyItems[] = {
				{"RPF_Items_OliveSeed", 1},
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
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16685.3,12450.8,0.356976};
			dir = 227;
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
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16565.4,12729.2,0.0153408};
			dir = 219.916;
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
			className = "a3\structures_f\furniture\tabledesk_f.p3d";
			pos[] = {16550.2,12764.8,0.01754};
			dir = 305.054;
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
