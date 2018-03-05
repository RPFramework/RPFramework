/*
Author: Kerkkoh
First Edit: 18.12.2016
*/

[] call ClientModules_fnc_initPlayerNamesMenu;

RPF_savedNames = [];

onEachFrame {
	_units = player nearEntities ((missionConfigFile >> "RPF_playerNamesModule" >> "drawDistance") call BIS_fnc_getCfgData);
	{
		if ((alive _x) && !(isNull _x)) then {
			_y = _x;
			_name = "";
			_visibility = [objNull, "VIEW"] checkVisibility [eyePos player, eyePos _x];
			{
				if ((_x select 0) == (getPlayerUID _y)) exitWith {
					_name = (_x select 1);
				};
			}forEach RPF_savedNames;
			if ((goggles _x) in ((missionConfigFile >> "RPF_playerNamesModule" >> "hideIdentityMasks") call BIS_fnc_getCfgData)) then {
				_name = (localize "STR_RPF_MODULES_PLAYERNAMES_MASKED");
			};
			if ((_name != "")&& (_visibility > 0)) then {
				_ypos = getPosATL _y;
				drawIcon3D ["", [0, 0, 0, 1], [_ypos select 0, _ypos select 1, (_ypos select 2) + 2.1], 1, 1, 0, _name, 0, 0.042, "PuristaSemiBold"];
			};
		};
	}forEach _units;
};
