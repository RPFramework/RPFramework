/* #Hoxili
$[
	1.063,
	["checktasks",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1800,"",[1,"",["0.385417 * safezoneW + safezoneX","0.225107 * safezoneH + safezoneY","0.240625 * safezoneW","0.571777 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[1,"Unit:",["0.396875 * safezoneW + safezoneX","0.247099 * safezoneH + safezoneY","0.217708 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"",[1,"Officers:",["0.396875 * safezoneW + safezoneX","0.291081 * safezoneH + safezoneY","0.217708 * safezoneW","0.0879657 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1002,"",[1,"Callout:",["0.396875 * safezoneW + safezoneX","0.390043 * safezoneH + safezoneY","0.217708 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1003,"",[1,"Description:",["0.396875 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.217708 * safezoneW","0.208919 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Add officer",["0.396875 * safezoneW + safezoneX","0.686927 * safezoneH + safezoneY","0.0916667 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[1,"Remove Officer",["0.396875 * safezoneW + safezoneX","0.73091 * safezoneH + safezoneY","0.0916667 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2100,"",[1,"",["0.5 * safezoneW + safezoneX","0.65394 * safezoneH + safezoneY","0.114583 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"",[1,"Register Unit",["0.5 * safezoneW + safezoneX","0.697923 * safezoneH + safezoneY","0.114583 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1603,"",[1,"UnRegister Unit",["0.5 * safezoneW + safezoneX","0.741906 * safezoneH + safezoneY","0.114583 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/


class checkDispatchs
{
	idd = 1087;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.385417 * safezoneW + safezoneX;
			y = 0.225107 * safezoneH + safezoneY;
			w = 0.240625 * safezoneW;
			h = 0.571777 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_MODULES_POLICEPLUS_UNIT;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.217708 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.291081 * safezoneH + safezoneY;
			w = 0.217708 * safezoneW;
			h = 0.0879657 * safezoneH;
			text = "";
			style = 16;
			lineSpacing = 1;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = $STR_RPF_MODULES_POLICEPLUS_CALLOUT;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.217708 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.434026 * safezoneH + safezoneY;
			w = 0.217708 * safezoneW;
			h = 0.208919 * safezoneH;
			text = "";
			style = 16;
			lineSpacing = 1;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_POLICEPLUS_ADDOFFICER;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.686927 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0]call ClientModules_fnc_policePlusDmanageOfficer;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = $STR_RPF_MODULES_POLICEPLUS_REMOVEOFFICER;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.73091 * safezoneH + safezoneY;
			w = 0.0916667 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1]call ClientModules_fnc_policePlusDmanageOfficer;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 2100;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.65394 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = $STR_RPF_MODULES_POLICEPLUS_REGUNIT;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.697923 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0]call ClientModules_fnc_policePlusDmanageCar;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = $STR_RPF_MODULES_POLICEPLUS_UNREGUNIT;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.741906 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1]call ClientModules_fnc_policePlusDmanageCar;
		};
	};
};