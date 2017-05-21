class licenses
{
	idd = 1090;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.419792 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.171875 * safezoneW;
			h = 0.351863 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.324069 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.274893 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_LICENSES_SHOW;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.609957 * safezoneH + safezoneY;
			w = 0.0458333 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_sendLicense;
		};
	};
};
