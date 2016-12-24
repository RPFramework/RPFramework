/*
Author: Kerkkoh
Last Edit: 26.11.2015
*/

for "_i" from 0 to 1 step 0 do {
	sleep 300;
	{
		_uid = getPlayerUID _x;
		
		_checkstr = format ["existPlayerInfo:%1", _uid];
		_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
		_booli = (_check select 0) select 0;
		
		_loadedIn = _x getVariable "loadedIn";
		
		if (!(isNil {_x}) && alive _x && _booli && _loadedIn) then {
			_cash = _x getVariable "cash";
			_bank = _x getVariable "bank";
			_position = position _x;
			_items = [(uniformItems _x), (vestItems _x), (backpackItems _x), (assignedItems _x)];
			_clothes = [(uniform _x), (vest _x), (backpack _x), (headgear _x)];
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
			
			_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7", _items, _clothes, _weapons, _cash, _bank, _position, _uid];
			_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
		};
	}forEach allPlayers;
};