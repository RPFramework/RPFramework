class CfgPatches
{
	class RPF_Items
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Weapons_F_Items","RPF_General"};
	};
};
class CfgWeapons
{
	class ToolKit;
	class RPF_Items_Base: ToolKit
	{
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
	};
	class RPF_Items_BaseL: ToolKit
	{
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
	};
	class RPF_Items_Handcuffs: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_HANDCUFFS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_HANDCUFFS_DESC";
		picture = "\RPF_Items\Data\UI\RPF_Items_Handcuffs.paa";
	};
	class RPF_Items_HandcuffKeys: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_HANDCUFFKEYS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_HANDCUFFKEYS_DESC";
		picture = "\RPF_Items\Data\UI\RPF_Items_HandcuffKeys.paa";
	};
	class RPF_Items_Meth: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_METH_NAME";
		descriptionShort = "$STR_RPF_ITEMS_METH_DESC";
		picture = "\RPF_Items\Data\UI\RPF_Items_Meth.paa";
	};
	class RPF_Items_Salema: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_SALEMA_NAME";
		descriptionShort = "$STR_RPF_ITEMS_SALEMA_DESC";
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
	};
	class RPF_Items_PoppySeed: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_POPPYSEED_NAME";
		descriptionShort = "$STR_RPF_ITEMS_POPPYSEED_DESC";
		picture = "\RPF_Items\Data\UI\RPF_Items_Seeds.paa";
	};
	class RPF_Items_Poppy: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_POPPY_NAME";
		descriptionShort = "$STR_RPF_ITEMS_POPPY_DESC";
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 3;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		picture = "\RPF_Items\Data\UI\RPF_Items_Poppy.paa";
	};
	class RPF_Items_OliveSeed: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_OLIVESEED_NAME";
		descriptionShort = "$STR_RPF_ITEMS_OLIVESEED_DESC";
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Seeds.paa";
	};
	class RPF_Items_Olives: RPF_Items_Base
	{
		displayName = "$STR_RPF_ITEMS_OLIVES_NAME";
		descriptionShort = "$STR_RPF_ITEMS_OLIVES_DESC";
		model = "\A3\weapons_F\ammo\mag_univ.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Olives.paa";
	};
	class RPF_Items_Antibiotics: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_ANTIBIOTICS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_ANTIBIOTICS_DESC";
		model = "\A3\structures_f_epa\Items\Medical\Antibiotic_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Antibiotics.paa";
	};
	class RPF_Items_Painkillers: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_PAINKILLERS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_PAINKILLERS_DESC";
		model = "\A3\structures_f_epa\Items\Medical\PainKillers_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Painkillers.paa";
	};
	class RPF_Items_Vitamins: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_VITAMINS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_VITAMINS_DESC";
		model = "\A3\structures_f_epa\Items\Medical\VitaminBottle_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Vitamins.paa";
	};
	class RPF_Items_Battery: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_BATTERY_NAME";
		descriptionShort = "$STR_RPF_ITEMS_BATTERY_DESC";
		model = "\A3\structures_f_epa\Items\Electronics\Battery_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Battery.paa";
	};
	class RPF_Items_BakedBeans: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_BAKEDBEANS_NAME";
		descriptionShort = "$STR_RPF_ITEMS_BAKEDBEANS_DESC";
		model = "\A3\structures_f_epa\Items\Food\BakedBeans_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_BakedBeans.paa";
	};
	class RPF_Items_WaterBottle: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_WATERBOTTLE_NAME";
		descriptionShort = "$STR_RPF_ITEMS_WATERBOTTLE_DESC";
		model = "\A3\structures_f_epa\Items\Food\BottlePlastic_V2_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_WaterBottle.paa";
	};
	class RPF_Items_Canteen: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_CANTEEN_NAME";
		descriptionShort = "$STR_RPF_ITEMS_CANTEEN_DESC";
		model = "\A3\structures_f_epa\Items\Food\Canteen_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Canteen.paa";
	};
	class RPF_Items_Cereal: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_CEREAL_NAME";
		descriptionShort = "$STR_RPF_ITEMS_CEREAL_DESC";
		model = "\A3\structures_f_epa\Items\Food\CerealsBox_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Cereal.paa";
	};
	class RPF_Items_RiceBox: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_RICEBOX_NAME";
		descriptionShort = "$STR_RPF_ITEMS_RICEBOX_DESC";
		model = "\A3\structures_f_epa\Items\Food\RiceBox_F.p3d";
		picture = "\RPF_General\data\placeholder.paa";
	};
	class RPF_Items_ButaneCanister: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_BUTANECANISTER_NAME";
		descriptionShort = "$STR_RPF_ITEMS_BUTANECANISTER_DESC";
		model = "\A3\structures_f_epa\Items\Tools\ButaneCanister_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Butane.paa";
	};
	class RPF_Items_GasCanister: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_GASCANISTER_NAME";
		descriptionShort = "$STR_RPF_ITEMS_GASCANISTER_DESC";
		model = "\A3\structures_f_epa\Items\Tools\GasCanister_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Gascan.paa";
	};
	class RPF_Items_Matches: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_MATCHES_NAME";
		descriptionShort = "$STR_RPF_ITEMS_MATCHES_DESC";
		model = "\A3\structures_f_epa\Items\Tools\Matches_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Matches.paa";
	};
	class RPF_Items_CleanerSpray: RPF_Items_BaseL
	{
		displayName = "$STR_RPF_ITEMS_CLEANERSPRAY_NAME";
		descriptionShort = "$STR_RPF_ITEMS_CLEANERSPRAY_DESC";
		model = "\A3\structures_f_epa\Items\Medical\DisinfectantSpray_F.p3d";
		picture = "\RPF_Items\Data\UI\RPF_Items_Spray.paa";
	};
};
