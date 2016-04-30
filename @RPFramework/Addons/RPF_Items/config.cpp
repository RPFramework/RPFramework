class CfgPatches
{
	class RPF_Items
	{
		units[] = {"RPF_Plants"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Weapons_F_Items","A3_Weapons_F","RPF_General"};
	};
};
class CfgWeapons
{
	class ToolKit;
	class RPF_Items_Handcuffs: ToolKit
	{
		displayName = "Handcuffs";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Handcuffs.paa";
		descriptionShort = "Handcuffs";
	};
	class RPF_Items_HandcuffKeys: ToolKit
	{
		displayName = "Handcuff Keys";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_HandcuffKeys.paa";
		descriptionShort = "Handcuff Keys";
	};
	class RPF_Items_Meth: ToolKit
	{
		displayName = "Meth";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Meth.paa";
		descriptionShort = "1g of Meth";
	};
	class RPF_Items_Salema: ToolKit
	{
		displayName = "Salema";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 5;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\animals_f\Fishes\Salema_porgy_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Fish.paa";
		descriptionShort = "Salema Fish";
	};
	class RPF_Items_PoppySeed: ToolKit
	{
		displayName = "Poppy Seed";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Seeds.paa";
		descriptionShort = "Poppy Seed";
	};
	class RPF_Items_Poppy: ToolKit
	{
		displayName = "1g of Raw Opium";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 3;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Poppy.paa";
		descriptionShort = "About 1g of Raw Opium";
	};
	class RPF_Items_OliveSeed: ToolKit
	{
		displayName = "Olive Seed";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Seeds.paa";
		descriptionShort = "Olive Seed";
	};
	class RPF_Items_Olives: ToolKit
	{
		displayName = "Black Olives";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 4;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Olives.paa";
		descriptionShort = "Some black olives";
	};
	class RPF_Items_Antibiotics: ToolKit
	{
		displayName = "Antibiotics";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Medical\Antibiotic_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Antibiotics.paa";
		descriptionShort = "Antibiotics";
	};
	class RPF_Items_Painkillers: ToolKit
	{
		displayName = "Painkillers";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Medical\PainKillers_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Painkillers.paa";
		descriptionShort = "Painkillers";
	};
	class RPF_Items_Vitamins: ToolKit
	{
		displayName = "Vitamins";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Medical\VitaminBottle_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Vitamins.paa";
		descriptionShort = "Vitamins";
	};
	class RPF_Items_Battery: ToolKit
	{
		displayName = "Battery";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Electronics\Battery_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Battery.paa";
		descriptionShort = "Battery";
	};
	class RPF_Items_BakedBeans: ToolKit
	{
		displayName = "Baked Beans";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Food\BakedBeans_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_BakedBeans.paa";
		descriptionShort = "Baked Beans";
	};
	class RPF_Items_WaterBottle: ToolKit
	{
		displayName = "Water Bottle";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Food\BottlePlastic_V2_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_WaterBottle.paa";
		descriptionShort = "Water Bottle full of water";
	};
	class RPF_Items_Canteen: ToolKit
	{
		displayName = "Canteen";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Food\Canteen_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Canteen.paa";
		descriptionShort = "Canteen full of water";
	};
	class RPF_Items_Cereal: ToolKit
	{
		displayName = "Cereal";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Food\CerealsBox_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Cereal.paa";
		descriptionShort = "Some cereal";
	};
	class RPF_Items_RiceBox: ToolKit
	{
		displayName = "Rice Box";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Food\RiceBox_F.p3d";
		picture = "\RPF_General\data\placeholder.paa";
		descriptionShort = "Rice Box";
	};
	class RPF_Items_ButaneCanister: ToolKit
	{
		displayName = "Butane Canister";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Tools\ButaneCanister_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Butane.paa";
		descriptionShort = "A canister of butane";
	};
	class RPF_Items_GasCanister: ToolKit
	{
		displayName = "Gas Canister";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Tools\GasCanister_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Gascan.paa";
		descriptionShort = "A canister of gas";
	};
	class RPF_Items_Matches: ToolKit
	{
		displayName = "Matches";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Tools\Matches_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Matches.paa";
		descriptionShort = "A box of matches";
	};
	class RPF_Items_CleanerSpray: ToolKit
	{
		displayName = "Alcohol Based Cleaner";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 2;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f_epa\Items\Medical\DisinfectantSpray_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Spray.paa";
		descriptionShort = "High Alcohol Based Cleaner";
	};
};
