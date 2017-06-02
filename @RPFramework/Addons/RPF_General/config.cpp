class CfgPatches
{
	class rpf_general
	{
		units[] = {"RPF_Phys", "RPF_PhysBase"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F"};
	};
};
class cfgVehicleClasses {

	class RPF_Phys {
		displayName = "$STR_RPF_PHYSICAL_CLASS";
	};
};
class CfgVehicles {
	class Fence;
	class RPF_PhysBase: Fence {
		class DestructionEffects;
		icon = "rpf_general\data\placeholder.paa";
		accuracy = 0.300000;
		vehicleclass = "RPF_Phys";
	};
};