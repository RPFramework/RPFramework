/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/
private["_uid","_check","_weapons"];
if (((configFile >> "RPF_serverConfig" >> "statSaveLoop") call BIS_fnc_getCfgData) == 1) then {
	for "_i" from 0 to 1 step 0 do {
		sleep ((configFile >> "RPF_serverConfig" >> "statSaveLoopTime") call BIS_fnc_getCfgData);
		{
			_uid = getPlayerUID _x;

			_check = [0, (format["existPlayerInfo:%1", _uid])] call ExternalS_fnc_ExtDBquery;

			if (!(isNil {_x}) && alive _x && ((_check select 0) select 0) && (_x getVariable ["loadedIn", false])) then {
				_weapons = [];
				if (primaryWeapon _x != "") then {
					_weapons pushBack [0, primaryWeapon _x, primaryWeaponMagazine _x, primaryWeaponItems _x, _x ammo (primaryWeapon _x)];
				};
				if (secondaryWeapon _x != "") then {
					_weapons pushBack [1, secondaryWeapon _x, secondaryWeaponMagazine _x, secondaryWeaponItems _x, _x ammo (secondaryWeapon _x)];
				};
				if (handgunWeapon _x != "") then {
					_weapons pushBack [2, handgunWeapon _x, handgunMagazine _x, handgunItems _x, _x ammo (handgunWeapon _x)];
				};
				[0, format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", [(uniformItems _x), (vestItems _x), (backpackItems _x), (assignedItems _x)], [(uniform _x), (vest _x), (backpack _x), (headgear _x)], _weapons, _x getVariable "cash", _x getVariable "bank", getPosATL _x, (_x getVariable "hunger"), (_x getVariable "thirst"), _uid]] call ExternalS_fnc_ExtDBquery;
			};
			true;
		}count allPlayers;
	};
};
