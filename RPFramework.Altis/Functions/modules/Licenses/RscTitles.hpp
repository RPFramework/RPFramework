	class  LicenseCard
	{
		idd = 1001;
		onLoad = "uiNamespace setVariable ['LicenseCard',_this select 0]";
		name = "LicenseCard";
		duration = 60;
		movingEnable = 0;
		fadein = 0;
		fadeout = 0;

		class controls
		{
			class RscFrame_1800: RscText
			{
				idc = 1800;
				x = 0.133333 * safezoneW + safezoneX;
				y = 0.225107 * safezoneH + safezoneY;
				w = 0.240625 * safezoneW;
				h = 0.175931 * safezoneH;
				colorBackground[] = {0,0,0,0.8};
			};
			class RscStructuredText_1100: RscStructuredText
			{
				idc = 1100;
				x = 0.139063 * safezoneW + safezoneX;
				y = 0.236103 * safezoneH + safezoneY;
				w = 0.229167 * safezoneW;
				h = 0.15394 * safezoneH;
				colorBackground[] = {0,0,0,0.8};
			};
		};
	};