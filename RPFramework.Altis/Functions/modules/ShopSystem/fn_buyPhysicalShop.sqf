/*
Author: Kerkkoh
First Edit: 22.4.2016
*/
params ["_ct"];

(_ct getVariable "buyableThing") params ["_class", "_price", "_type"];


switch (_type) do {
	case 0: { //Vehicle
		if ([1, _price] call Client_fnc_checkMoney) then {
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
			//Execute buyShopStatements
			{
				private _condition = call(_x select 0);
				private _statement = _x select 1;
				if (_condition) then { call _statement };
				true;
			} count ((call RPF_buyPhysicalShopStatements) select 0);
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTNEWCAR");
			[_ct, clientOwner] remoteExec ["setOwner", 2];
			_ct allowDamage true;
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 1: { //Item
		private ["_amount","_amountPrice"];
		_amount = parseNumber (ctrlText 1400);
		_amountPrice = _price * _amount;
		if ([1, _amountPrice] call Client_fnc_checkMoney) then {
			[_amountPrice] call Client_fnc_removeCash;
			closeDialog 0;
			//Execute buyShopStatements
			{
				private _condition = call(_x select 0);
				private _statement = _x select 1;
				if (_condition) then { call _statement };
				true;
			} count ((call RPF_buyPhysicalShopStatements) select 1);
			if (!(player canAdd [_class, _amount])) exitWith {
				hint localize "STR_RPF_CORE_CANTADDITEM";
			};
			for "_i" from 1 to _amount step 1 do {
				player addItem _class;
			};
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEMS");
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
	case 2: { //Furniture
		if ([1, _price] call Client_fnc_checkMoney) then {
			[_price] call Client_fnc_removeCash;
			closeDialog 0;
			private _newfurn = _class createVehicle position player;
			[_newfurn] call Client_fnc_pickUp;
			RPF_ownedFurniture pushBack _newfurn;
			private _vars = _ct getVariable ["vars", []];
			//Execute buyShopStatements
			{
				private _condition = call(_x select 0);
				private _statement = _x select 1;
				if (_condition) then { call _statement };
				true;
			} count ((call RPF_buyPhysicalShopStatements) select 2);
			_newfurn setVariable ["vars", _vars, true];
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_BOUGHTITEM");
		} else {
			closeDialog 0;
			hint (localize "STR_RPF_MODULES_SHOPSYSTEM_NOTENOUGHCASH");
		};
	};
};
