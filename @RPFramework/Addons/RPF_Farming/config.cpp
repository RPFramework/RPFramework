class CfgPatches
{
	class RPF_Farming
	{
		units[] = {"RPF_Plants"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"RPF_General"};
	};
};
class cfgVehicleClasses {

	class RPF_Plants {
		displayName = "RPF Plants";
	};
};
class CfgVehicles {
	class Fence;

	class RPF_Plant: Fence {
		class DestructionEffects;
	};

	class RPF_Plant_Olive: RPF_Plant {
		scope = 2;
		model = "A3\plants_f\Bush\b_FicusC1s_F.p3d";
		icon = "RPF_General\data\placeholder.paa";
		displayName = "Olive Plant";
		accuracy = 0.300000;
		vehicleclass = "RPF_Plants";
	};
	class RPF_Plant_Poppy: RPF_Plant {
		scope = 2;
		model = "A3\plants_f\Bush\b_NeriumO2s_F.p3d";
		icon = "RPF_General\data\placeholder.paa";
		displayName = "Poppy Plant";
		accuracy = 0.300000;
		vehicleclass = "RPF_Plants";
	};
};
