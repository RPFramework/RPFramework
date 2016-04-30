class useItem
{
	idd = 1019;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.419792 * safezoneW + safezoneX;
			y = 0.291081 * safezoneH + safezoneY;
			w = 0.171875 * safezoneW;
			h = 0.395846 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.30788 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Use"; //--- ToDo: Localize;
			x = 0.477083 * safezoneW + safezoneX;
			y = 0.631949 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call Client_fnc_useItem;
		};
	};
};
