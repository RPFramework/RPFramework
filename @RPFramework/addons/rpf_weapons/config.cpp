class CfgPatches
{
	class RPF_Weapons
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Data_F"};
	};
};

class CfgAmmo
{
	class B_65x39_Caseless;
	class B_65x39_Dummy_Caseless: B_65x39_Caseless
	{
		hit = 0.00001;
	};
};

class CfgMagazines
{
	class 30Rnd_65x39_caseless_mag;
	class 30Rnd_65x39_caseless_dummy_mag: 30Rnd_65x39_caseless_mag
	{
		displayName = "$STR_RPF_DUMMY_MX_MAGAZINE";
		ammo = "B_65x39_Dummy_Caseless";
		mass = 8;
		descriptionShort = "$STR_RPF_DUMMY_MX_MAGAZINE";
	};
};

class CfgWeapons
{
	class arifle_MX_Black_F;
	class rpf_dummy_weapon: arifle_MX_Black_F
	{
		hiddenSelections[] = {"camo1","camo2"};
		magazines[] = {"30Rnd_65x39_caseless_dummy_mag"};
	};

	class arifle_MX_DummyR_F: rpf_dummy_weapon
	{
		displayName = "$STR_RPF_DUMMY_MX_R";
		hiddenSelectionsTextures[] = {"RPF_Weapons\data\XMX_Base_Red_co.paa","RPF_Weapons\data\XMX_Base_Red_co.paa"};
		picture = "RPF_Weapons\data\gear_mx_rifle_black_R_CA.paa";
	};
	class arifle_MX_DummyB_F: rpf_dummy_weapon
	{
		displayName = "$STR_RPF_DUMMY_MX_B";
		hiddenSelectionsTextures[] = {"RPF_Weapons\data\XMX_Base_Blue_co.paa","RPF_Weapons\data\XMX_Base_Blue_co.paa"};
		picture = "RPF_Weapons\data\gear_mx_rifle_black_B_CA.paa";
	};
};