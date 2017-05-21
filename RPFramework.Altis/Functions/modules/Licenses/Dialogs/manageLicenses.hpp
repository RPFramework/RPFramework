/* #Jizagi
$[
	1.063,
	["dfdfsdsf",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1800,"",[1,"",["0.419792 * safezoneW + safezoneX","0.313073 * safezoneH + safezoneY","0.171875 * safezoneW","0.351863 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"",[1,"",["0.43125 * safezoneW + safezoneX","0.324069 * safezoneH + safezoneY","0.148958 * safezoneW","0.274893 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Grant",["0.43125 * safezoneW + safezoneX","0.609957 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[1,"Revoke",["0.534375 * safezoneW + safezoneX","0.609957 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class manageLicenses
{
	idd = 1091;
	class controls
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.419792 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.171875 * safezoneW;
			h = 0.351863 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.324069 * safezoneH + safezoneY;
			w = 0.148958 * safezoneW;
			h = 0.274893 * safezoneH;
			onLbSelChanged = "if ((lbColor [1500, lbCurSel 1500]) isEqualTo [1,0,0,1]) then {ctrlShow [1600, true];ctrlShow [1601, false]} else {ctrlShow [1600, false];ctrlShow [1601, true]}";
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = $STR_RPF_MODULES_LICENSES_GRANT;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.609957 * safezoneH + safezoneY;
			w = 0.0458333 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_grantLicense;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = $STR_RPF_MODULES_LICENSES_REVOKE;
			x = 0.534375 * safezoneW + safezoneX;
			y = 0.609957 * safezoneH + safezoneY;
			w = 0.0458333 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = []call ClientModules_fnc_revokeLicense;
		};
	};
};
