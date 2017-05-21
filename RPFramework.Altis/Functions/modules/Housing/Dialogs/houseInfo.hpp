class houseInfo
{
	idd = 1080;
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
			text = $STR_RPF_MODULES_HOUSING_FORSALE;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = $STR_RPF_MODULES_HOUSING_NO;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = $STR_RPF_MODULES_HOUSING_PRICE;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "";
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_HOUSING_BUY;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.456017 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject]call ClientModules_fnc_buyHouse;
		};
	};
};
