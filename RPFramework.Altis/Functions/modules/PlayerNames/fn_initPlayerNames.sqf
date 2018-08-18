/*
Author: Kerkkoh
First Edit: 18.12.2016
*/

RPF_savedNames = [];

onEachFrame {
	{
		if ((alive _x) && !(isNull _x) && !(_x isEqualTo player)) then {
			private["_y","_name", "_ypos"];
			_y = _x;
			_name = "";
			{
				if ((_x select 0) == (getPlayerUID _y)) exitWith {
					_name = (_x select 1);
				};
			}forEach RPF_savedNames;
			if ((goggles _x) in ((missionConfigFile >> "RPF_playerNamesModule" >> "hideIdentityMasks") call BIS_fnc_getCfgData)) then {
				_name = (localize "STR_RPF_MODULES_PLAYERNAMES_MASKED");
			};
			if ((_name != "")&& (([objNull, "VIEW"] checkVisibility [eyePos player, eyePos _x]) > 0)) then {
				_ypos = getPosATL _y;
				drawIcon3D ["", [0, 0, 0, 1], [_ypos select 0, _ypos select 1, (_ypos select 2) + 2.1], 1, 1, 0, _name, 0, 0.042, "PuristaSemiBold"];
			};
		};
		true;
	}count (player nearEntities getNumber(missionConfigFile >> "RPF_playerNamesModule" >> "drawDistance"));
};
