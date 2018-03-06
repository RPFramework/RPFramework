class CfgPatches
{
	class RPF_Mining
	{
		units[] = {"RPF_Mining_Rock1","RPF_Mining_Rock2","RPF_Mining_Rock3"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"RPF_General","RPF_Items","A3_Structures_F_Civ_Market","A3_Structures_F_Items_Tools","A3_Rocks_F_Sharp"};
	};
};

class CfgWeapons 
{
	class RPF_Items_Base;
	class RPF_Mining_Base: RPF_Items_Base
	{
		model = "\A3\structures_f\Civ\Market\Sack_F.p3d";
	};
	class RPF_Mining_Grinder: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_GRINDER_NAME";
		descriptionShort = "$STR_RPF_MINING_GRINDER_DESC";
		model = "\A3\structures_f\items\tools\Grinder_F.p3d";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Grinder.paa";
	};
	class RPF_Mining_Minerals: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_MINERALS_NAME";
		descriptionShort = "$STR_RPF_MINING_MINERALS_DESC";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Minerals.paa";
	};
	class RPF_Mining_Gold: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_GOLD_NAME";
		descriptionShort = "$STR_RPF_MINING_GOLD_DESC";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Gold.paa";
	};
	class RPF_Mining_Iron: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_IRON_NAME";
		descriptionShort = "$STR_RPF_MINING_IRON_DESC";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Iron.paa";
	};
	class RPF_Mining_Copper: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_COPPER_NAME";
		descriptionShort = "$STR_RPF_MINING_COPPER_DESC";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Copper.paa";
	};
	class RPF_Mining_Diamond: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_DIAMOND_NAME";
		descriptionShort = "$STR_RPF_MINING_DIAMOND_NAME";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Diamond.paa";
	};
	class RPF_Mining_Lead: RPF_Mining_Base
	{
		displayName = "$STR_RPF_MINING_LEAD_NAME";
		descriptionShort = "$STR_RPF_MINING_LEAD_NAME";
		picture = "\RPF_Mining\data\ui\RPF_Mining_Lead.paa";
	};
};

class CfgVehicles 
{
	class RPF_PhysBase;
	class RPF_Mining_Rock1: RPF_PhysBase
	{
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_01.p3d";
		displayName = "$STR_RPF_MINING_ROCKONE_NAME";
	};
	class RPF_Mining_Rock2: RPF_PhysBase
	{
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_02.p3d";
		displayName = "$STR_RPF_MINING_ROCKTWO_NAME";
	};
	class RPF_Mining_Rock3: RPF_PhysBase
	{
		scope = 2;
		model = "A3\rocks_f\Sharp\sharpStone_03.p3d";
		displayName = "$STR_RPF_MINING_ROCKTHREE_NAME";
	};
};
