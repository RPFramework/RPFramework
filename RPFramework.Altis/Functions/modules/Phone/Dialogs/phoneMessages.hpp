class phoneMessages
{
	idd = 1091;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.385417 * safezoneW + safezoneX;
			y = 0.236102 * safezoneH + safezoneY;
			w = 0.252083 * safezoneW;
			h = 0.494807 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.258094 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.142944 * safezoneH;
			onLbSelChanged = []call ClientModules_fnc_phoneMessageRefresh;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_MODULES_PHONE_FROM;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.42303 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			x = 0.454167 * safezoneW + safezoneX;
			y = 0.42303 * safezoneH + safezoneY;
			w = 0.171875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.467013 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.186927 * safezoneH;
			style = 16;
			lineSpacing = 1;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_PHONE_COMPOSE;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.675931 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = "closeDialog 0;[]call ClientModules_fnc_openPhone;";
		};
	};
};