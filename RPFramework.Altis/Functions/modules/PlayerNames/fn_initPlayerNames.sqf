/*
Author: Kerkkoh
First Edit: 18.12.2016
*/

[] call ClientModules_fnc_initPlayerNamesMenu;

RPF_savedNames = [];

RPF_hideIdentityMasks = [
	"G_Bandanna_tan",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_khk",
	"G_Bandanna_shades",
	"G_Bandanna_sport"
];

onEachFrame {
	_units = player nearEntities 10;
	{
		if ((alive _x) && !(isNull _x)) then {
			_y = _x;
			_name = "";
			{
				if ((_x select 0) == (getPlayerUID _y)) exitWith {
					_name = (_x select 1);
				};
			}forEach RPF_savedNames;
			if ((goggles _x) in RPF_hideIdentityMasks) then {
				_name = "Masked";
			};
			if (_name != "") then {
				_ypos = getPosATL _y;
				drawIcon3D ["", [0, 0, 0, 1], [_ypos select 0, _ypos select 1, 2.1], 1, 1, 0, _name, 0, 0.042, "PuristaSemiBold"];
			};
		};
	}forEach _units;
};
