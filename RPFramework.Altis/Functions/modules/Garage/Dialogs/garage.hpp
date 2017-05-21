class garage
{
	idd = 1013;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.40925 * safezoneW + safezoneX;
			y = 0.290642 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.395846 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_GARAGE_FETCHCAR; //--- ToDo: Localize;
			x = 0.465625 * safezoneW + safezoneX;
			y = 0.620953 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.0549786 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
			action = []call ClientModules_fnc_fetchCar;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.1375 * safezoneW;
			h = 0.241906 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_MODULES_GARAGE_TITLE; //--- ToDo: Localize;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.302077 * safezoneH + safezoneY;
			w = 0.1375 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
	};
};