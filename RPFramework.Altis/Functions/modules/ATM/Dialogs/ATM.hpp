class ATM
{
	idd = 1015;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.171875 * safezoneW;
			h = 0.38485 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_MODULES_ATM_TITLE;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = $STR_RPF_MODULES_ATM_BALANCE;
			x = 0.402604 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "";
			x = 0.471354 * safezoneW + safezoneX;
			y = 0.280086 * safezoneH + safezoneY;
			w = 0.0859375 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = $STR_RPF_MODULES_ATM_CASH;
			x = 0.402604 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "";
			x = 0.471354 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.0859375 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1005: RscText
		{
			idc = 1005;
			text = $STR_RPF_MODULES_ATM_AMOUNT;
			x = 0.402604 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = "";
			x = 0.465625 * safezoneW + safezoneX;
			y = 0.357056 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_ATM_WITHDRAW;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.401039 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_atmWithdraw;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = $STR_RPF_MODULES_ATM_DEPOSIT;
			x = 0.488542 * safezoneW + safezoneX;
			y = 0.401039 * safezoneH + safezoneY;
			w = 0.06875 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_atmDeposit;
		};
		class RscText_1006: RscText
		{
			idc = 1006;
			text = $STR_RPF_MODULES_ATM_SENDMONEY;
			x = 0.414167 * safezoneW + safezoneX;
			y = 0.456017 * safezoneH + safezoneY;
			w = 0.0702917 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscText_1007: RscText
		{
			idc = 1007;
			text = $STR_RPF_MODULES_ATM_AMOUNT;
			x = 0.402604 * safezoneW + safezoneX;
			y = 0.489004 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			text = "";
			x = 0.465625 * safezoneW + safezoneX;
			y = 0.489004 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1008: RscText
		{
			idc = 1008;
			text = $STR_RPF_MODULES_ATM_ACCOUNT;
			x = 0.402604 * safezoneW + safezoneX;
			y = 0.521991 * safezoneH + safezoneY;
			w = 0.0572917 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1402: RscEdit
		{
			idc = 1402;
			text = "";
			x = 0.465625 * safezoneW + safezoneX;
			y = 0.521991 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = $STR_RPF_MODULES_ATM_SENDMONEY;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.565974 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_atmTransfer;
		};
	};
};