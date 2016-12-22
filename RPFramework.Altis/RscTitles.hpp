class RscTitles
{
	#include "Functions\modules\CONFIG\moduleRscTitles.hpp"
	class  HUD
	{
		idd = 1000;
		onLoad = "uiNamespace setVariable ['HUD',_this select 0]";
		name = "HUD";
		duration = 999999999999;
		movingEnable = 0;
		fadein = 0;
		fadeout = 0;

		class controls
		{
			class RscPicture_1200: RscPicture
			{
				idc = -1;
				text = "RPF_General\data\cashIcon.paa";
				x = 0.91 * safezoneW + safezoneX;
				y = 0.774893 * safezoneH + safezoneY;
				w = 0.0286458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscPicture_1201: RscPicture
			{
				idc = -1;
				text = "RPF_General\data\hpIcon.paa";
				x = 0.91 * safezoneW + safezoneX;
				y = 0.829871 * safezoneH + safezoneY;
				w = 0.0286458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscPicture_1202: RscPicture
			{
				idc = -1;
				text = "RPF_General\data\hungerIcon.paa";
				x = 0.91 * safezoneW + safezoneX;
				y = 0.88485 * safezoneH + safezoneY;
				w = 0.0286458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscPicture_1203: RscPicture
			{
				idc = -1;
				text = "RPF_General\data\thirstIcon.paa";
				x = 0.91 * safezoneW + safezoneX;
				y = 0.939828 * safezoneH + safezoneY;
				w = 0.0286458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscPicture_1204: RscPicture
			{
				idc = -1;
				text = "RPF_General\data\rpframework.paa";
				x = 0.0015625 * safezoneW + safezoneX;
				y = -0.00580276 * safezoneH + safezoneY;
				w = 0.200521 * safezoneW;
				h = 0.30788 * safezoneH;
			};
			class RscText_1000: RscText
			{
				idc = 1000;
				x = 0.944375 * safezoneW + safezoneX;
				y = 0.774893 * safezoneH + safezoneY;
				w = 0.0386458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscText_1001: RscText
			{
				idc = 1001;
				x = 0.944375 * safezoneW + safezoneX;
				y = 0.829871 * safezoneH + safezoneY;
				w = 0.0386458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscText_1002: RscText
			{
				idc = 1002;
				x = 0.944375 * safezoneW + safezoneX;
				y = 0.88485 * safezoneH + safezoneY;
				w = 0.0386458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
			class RscText_1003: RscText
			{
				idc = 1003;
				x = 0.944375 * safezoneW + safezoneX;
				y = 0.939828 * safezoneH + safezoneY;
				w = 0.0386458 * safezoneW;
				h = 0.0439828 * safezoneH;
			};
		};
	};
};