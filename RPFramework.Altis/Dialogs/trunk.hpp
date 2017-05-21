class trunk
{
	idd = 1020;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.291081 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.439828 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_CORE_TRUNK;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.302077 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.296884 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_CORE_TRUNK_STORE;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.664936 * safezoneH + safezoneY;
			w = 0.0802083 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject]call Client_fnc_storeTrunk;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = $STR_RPF_CORE_TRUNK_TAKEOUT;
			x = 0.511458 * safezoneW + safezoneX;
			y = 0.664936 * safezoneH + safezoneY;
			w = 0.0802083 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject]call Client_fnc_takeTrunk;
		};
	};
};