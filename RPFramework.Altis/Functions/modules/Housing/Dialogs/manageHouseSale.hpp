/* #Zuwose
$[
	1.063,
	["managesell",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1800,"",[1,"",["0.396875 * safezoneW + safezoneX","0.379047 * safezoneH + safezoneY","0.20625 * safezoneW","0.197923 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[1,"Currently not for sale",["0.408333 * safezoneW + safezoneX","0.401039 * safezoneH + safezoneY","0.183333 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"",[1,"Price",["0.408333 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.183333 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1400,"",[1,"100000",["0.408333 * safezoneW + safezoneX","0.467013 * safezoneH + safezoneY","0.183333 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Sell",["0.408333 * safezoneW + safezoneX","0.510996 * safezoneH + safezoneY","0.0859375 * safezoneW","0.0439828 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[1,"Stop selling",["0.408333 * safezoneW + safezoneX","0.510996 * safezoneH + safezoneY","0.0859375 * safezoneW","0.0439828 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"",[1,"Set price",["0.505729 * safezoneW + safezoneX","0.510996 * safezoneH + safezoneY","0.0859375 * safezoneW","0.0439828 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class manageHouseSale
{
	idd = 1081;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.396875 * safezoneW + safezoneX;
			y = 0.379047 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.197923 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = $STR_RPF_MODULES_HOUSING_NOTFORSALE;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.401039 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = $STR_RPF_MODULES_HOUSING_PRICEMANAGE;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.434026 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = "";
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.467013 * safezoneH + safezoneY;
			w = 0.183333 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_HOUSING_SELL;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.510996 * safezoneH + safezoneY;
			w = 0.0859375 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject, 0]call ClientModules_fnc_manageHouseSale;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = $STR_RPF_MODULES_HOUSING_STOPSELLING;
			x = 0.408333 * safezoneW + safezoneX;
			y = 0.510996 * safezoneH + safezoneY;
			w = 0.0859375 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject, 1]call ClientModules_fnc_manageHouseSale;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = $STR_RPF_MODULES_HOUSING_SETPRICE;
			x = 0.505729 * safezoneW + safezoneX;
			y = 0.510996 * safezoneH + safezoneY;
			w = 0.0859375 * safezoneW;
			h = 0.0439828 * safezoneH;
			action = [cursorObject, 0]call ClientModules_fnc_manageHouseSale;
		};
	};
};
