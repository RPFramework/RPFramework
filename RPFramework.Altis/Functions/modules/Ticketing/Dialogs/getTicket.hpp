class getTicket
{
	idd = 1012;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.40375 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.20625 * safezoneW;
			h = 0.285889 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Ticket"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.335064 * safezoneH + safezoneY;
			w = 0.17875 * safezoneW;
			h = 0.0219914 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Amount"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.379047 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Reason"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.445021 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.379047 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.445021 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.0879657 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Pay"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.554979 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = [RPF_TicketOfficer, RPF_TicketAmount]call ClientModules_fnc_ticketPay;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Refuse"; //--- ToDo: Localize;
			x = 0.54125 * safezoneW + safezoneX;
			y = 0.554979 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = [RPF_TicketOfficer]call ClientModules_fnc_ticketRefuse;
		};
	};
};