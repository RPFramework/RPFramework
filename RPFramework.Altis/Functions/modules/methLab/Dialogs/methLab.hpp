class methLab
{
	idd = 1070;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.23875 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.5225 * safezoneW;
			h = 0.439828 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Cook"; //--- ToDo: Localize;
			x = 0.6925 * safezoneW + safezoneX;
			y = 0.609957 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = []call ClientModules_fnc_methCheck;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Abort"; //--- ToDo: Localize;
			x = 0.2525 * safezoneW + safezoneX;
			y = 0.620953 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = []call ClientModules_fnc_methAbort;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			text = ""; //--- ToDo: Localize;
			x = 0.26625 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.219914 * safezoneH;
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			text = ""; //--- ToDo: Localize;
			x = 0.51375 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.219914 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Add Item >>>"; //--- ToDo: Localize;
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = []call ClientModules_fnc_methAddItem;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "<<< Remove Item"; //--- ToDo: Localize;
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.42303 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = []call ClientModules_fnc_methRemoveItem;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = ""; //--- ToDo: Localize;
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.620952 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscListbox_1502: RscListbox
		{
			idc = 1502;
			text = ""; //--- ToDo: Localize;
			x = 0.6375 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.219914 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Products"; //--- ToDo: Localize;
			x = 0.6375 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Your Items"; //--- ToDo: Localize;
			x = 0.26625 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Meth Lab's Items"; //--- ToDo: Localize;
			x = 0.51375 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Take Product"; //--- ToDo: Localize;
			x = 0.6375 * safezoneW + safezoneX;
			y = 0.543983 * safezoneH + safezoneY;
			w = 0.09625 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_methTake;
		};
	};
};