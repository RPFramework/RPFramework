class CfgPatches
{
	class RPF_Mining
	{
		units[] = {"RPF_Mining_Grinder","RPF_Mining_Rock1","RPF_Mining_Rock2","RPF_Mining_Rock3"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"RPF_General"};
	};
};

class CfgWeapons 
{
	class ToolKit;
	class RPF_Mining_Grinder: ToolKit
	{
		displayName = "$STR_RPF_MINING_GRINDER_NAME";
		descriptionShort = "$STR_RPF_MINING_GRINDER_DESC";
		count = 1;
		class ItemInfo
		{
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f\items\tools\Grinder_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Grinder.paa";
	};
	class RPF_Mining_Minerals: ToolKit
	{
		displayName = "$STR_RPF_MINING_MINERALS_NAME";
		descriptionShort = "$STR_RPF_MINING_MINERALS_DESC";
		count = 1;
		class ItemInfo {
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f\Civ\Market\Sack_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Minerals.paa";
	};
	class RPF_Mining_Gold: ToolKit
	{
		displayName = "$STR_RPF_MINING_GOLD_NAME";
		descriptionShort = "$STR_RPF_MINING_GOLD_DESC";
		count = 1;
		class ItemInfo {
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f\Civ\Market\Sack_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Gold.paa";
	};
	class RPF_Mining_Iron: ToolKit
	{
		displayName = "$STR_RPF_MINING_IRON_NAME";
		descriptionShort = "$STR_RPF_MINING_IRON_DESC";
		count = 1;
		class ItemInfo {
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f\Civ\Market\Sack_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Iron.paa";
	};
	class RPF_Mining_Copper: ToolKit
	{
		displayName = "$STR_RPF_MINING_COPPER_NAME";
		descriptionShort = "$STR_RPF_MINING_COPPER_DESC";
		count = 1;
		class ItemInfo {
			allowedSlots[] = {701,801,901};
			mass = 6;
			scope = 0;
			type = 620;
			uniformModel = "\A3\Weapons_F\Items\Toolkit";
		};
		model = "\A3\structures_f\Civ\Market\Sack_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Copper.paa";
	};
};

class CfgVehicles 
{
	class RPF_PhysBase;
	class RPF_Mining_Rock1: RPF_PhysBase {
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_01.p3d";
		displayName = "$STR_RPF_MINING_ROCKONE_NAME";
	};
	class RPF_Mining_Rock2: RPF_PhysBase {
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_02.p3d";
		displayName = "$STR_RPF_MINING_ROCKTWO_NAME";
	};
	class RPF_Mining_Rock3: RPF_PhysBase {
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_03.p3d";
		displayName = "$STR_RPF_MINING_ROCKTHREE_NAME";
	};
};
