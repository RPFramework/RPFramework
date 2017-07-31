/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
params ["_ct"];

_array = _ct getVariable "buyableThing";
_class = _array select 0;
_price = _array select 1;
_type = _array select 2;

switch (true) do {
	case (_type == 0): {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			_ct setVariable ["buyableThing", nil, true];
			closeDialog 0;
			
			//Add vehicle to database (If garage module is installed)
			if (!isNil "RPF_GarageModule") then {
				[_ct,player] remoteExecCall ["ServerModules_fnc_insertGarage", 2];
			} else {
				//Garage module is not enabled,just insert the key
				[_ct, player] remoteExecCall ["Server_fnc_insertKey", 2];
			};

			//Setup mpkilled EHs
			[_ct] remoteExecCall ["Server_fnc_setupVehiclesKilledHandlers", 2];

			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTNEWCAR");
			[_ct, clientOwner] remoteExec ["setOwner", 2];
			_ct allowDamage true;
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case (_type == 1): {
		_amount = parseNumber (ctrlText 1400);
		_amountPrice = _price * _amount;
		_check = [1, _amountPrice] call Client_fnc_checkMoney;
		if (_check) then {
			[_amountPrice] call Client_fnc_removeCash;
			closeDialog 0;
			for "_i" from 1 to _amount step 1 do {
				player addItem _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEMS");
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case (_type == 2): {
		_check = [1, _price] call Client_fnc_checkMoney;
		if (_check) then {
			[_price] call Client_fnc_removeCash;
			closeDialog 0;
			_newfurn = _class createVehicle position player;
			[_newfurn] call Client_fnc_pickUp;
			RPF_ownedFurniture pushBack _newfurn;
			if (!(isNil {_ct getVariable 'methLab'})) then {
				_newfurn setVariable ["methLab", 1, true];
			};
			_vars = _ct getVariable ["vars", []];
			if (!(isNil {RPF_Fishingnet})) then {
				if (_class == RPF_Fishingnet) then {
					[netId _newfurn, 0] remoteExecCall ["ServerModules_fnc_manageFishingnet", 2];
					_newfurn setVariable ["action", [true, "[%1, 1] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]", "[%1, 0] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]"]];
					
					_vars pushBack ["action", [true, "[%1, 1] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]", "[%1, 0] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]"]];
					_newfurn setVariable ["vars", _vars, true];
				};
			};
			_newfurn setVariable ["vars", _vars, true];
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEM");
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
};
