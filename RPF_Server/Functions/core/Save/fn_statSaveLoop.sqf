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
			_pweapon = primaryWeapon _x;
			_sweapon = handgunWeapon _x;
			_garage = _x getVariable "garage";
			
			_updatestr = format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", _items, _clothes, _pweapon, _sweapon, _cash, _bank, _position, _garage, _uid];
			_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
		};
	}forEach allPlayers;
};