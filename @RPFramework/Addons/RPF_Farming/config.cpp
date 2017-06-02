class CfgPatches
{
	class rpf_farming
	{
		units[] = {"RPF_Plant_Olive","RPF_Plant_Poppy"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"rpf_general"};
	};
};
class CfgVehicles {
	class RPF_PhysBase;
	class RPF_Plant_Olive: RPF_PhysBase {
		scope = 2;
		model = "A3\plants_f\Bush\b_FicusC1s_F.p3d";
		displayName = "$STR_RPF_FARMING_PLANTS_OLIVE";
	};
	class RPF_Plant_Poppy: RPF_PhysBase {
		scope = 2;
		model = "A3\plants_f\Bush\b_NeriumO2s_F.p3d";
		displayName = "$STR_RPF_FARMING_PLANTS_POPPY";
	};
};
