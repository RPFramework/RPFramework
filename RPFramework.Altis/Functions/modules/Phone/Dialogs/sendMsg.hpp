class sendMsg
{
	idd = 1090;
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
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.456017 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			onLbSelChanged = []call ClientModules_fnc_phoneContactRefresh;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Send"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.664936 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [false]call ClientModules_fnc_sendText;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Messages"; //--- ToDo: Localize;
			x = 0.56875 * safezoneW + safezoneX;
			y = 0.664936 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = []call ClientModules_fnc_openPhoneMessages;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Add/Update Contact"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.324069 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_addContact;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Name"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 0.494271 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.131771 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Number"; //--- ToDo: Localize;
			x = 0.522917 * safezoneW + safezoneX;
			y = 0.412034 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			x = 0.494271 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.131771 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1402: RscEdit
		{
			idc = 1402;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.229167 * safezoneW;
			h = 0.15394 * safezoneH;
			style = 16;
			lineSpacing = 1;
		};
		class RscEdit_1403: RscEdit
		{
			idc = 1403;
			x = 0.522917 * safezoneW + safezoneX;
			y = 0.456017 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Number"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Contact"; //--- ToDo: Localize;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.412034 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Send Anonymously"; //--- ToDo: Localize;
			x = 0.459896 * safezoneW + safezoneX;
			y = 0.664936 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [true]call ClientModules_fnc_sendText;
		};
	};
};