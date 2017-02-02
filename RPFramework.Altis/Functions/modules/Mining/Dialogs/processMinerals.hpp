class processMinerals
{
	idd = 1088;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.3625 * safezoneW + safezoneX;
			y = 0.291081 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.219914 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = ""; //--- ToDo: Localize;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.2062497 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Process"; //--- ToDo: Localize;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.456017 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = []call ClientModules_fnc_processMineral;
		};
	};
};
