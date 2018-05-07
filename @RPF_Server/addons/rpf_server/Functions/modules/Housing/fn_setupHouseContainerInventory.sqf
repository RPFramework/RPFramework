/*
    File : fn_setupHouseContainerInventory.sqf
    Module: Housing
    Author: Dardo
    Description:
    Populate with the passed inventory array the container set in _containerBox variable

    Arguments:
        1 - Container <Object>
        2 - Inventory <Array>
*/
params [["_containerBox",objNull,[objNull]],["_inventory",[],[[]]]];
private["_fnc_baseWeapon", "_baseCfg", "_cfg", "_parent"];

//Clean up the content of the container
clearItemCargoGlobal _containerBox;
clearWeaponCargoGlobal _containerBox;
clearMagazineCargoGlobal _containerBox;

if (_inventory isEqualTo []) exitWith {};


_fnc_baseWeapon = {
    params ["_weapon"];
    _baseCfg = (configFile >> "cfgWeapons");
    _cfg = _baseCfg >> _weapon;

		for "_i" from 0 to 1 step 0 do {
			if (!isClass (_cfg >> "LinkedItems")) exitWith {};
	    _parent = configName (inheritsFrom (_cfg));
	    _cfg = _baseCfg >> _parent;
		};

    configName _cfg
};

//Main Inventory
        private _mainInventory = _inventory select 0;
        private _mainItems = _mainInventory select 0;
        private _mainWeapons = _mainInventory select 1;


        //Main Items Handling
        private _mainItemsClasses = _mainItems select 0;
        private _mainItemsAmounts = _mainItems select 1;

        //Fetch Weapons
        {
            private _curWeapon = [_x select 0] call _fnc_baseWeapon;
            private _suppressor = _x select 1;
            private _laser = _x select 2;
            private _optic = _x select 3;
            private _magazine = if not((_x select 4) isEqualTo []) then { _x select 4 select 0 } else { "" };
            private _bipod = _x select 5;
            //Pushbacks
                //Weapon PushBack
                if not(_curWeapon isEqualTo "") then {
                _mainItemsClasses pushBack _curWeapon;
                _mainItemsAmounts pushBack 1;
                };
                //Suppressor pushBack (if any)
                if not(_suppressor isEqualTo "") then {
                _mainItemsClasses pushBack _suppressor;
                _mainItemsAmounts pushBack 1;
                };
                //Laser pushBack (if any)
                if not(_laser isEqualTo "") then {
                _mainItemsClasses pushBack _laser;
                _mainItemsAmounts pushBack 1;
                };
                //Optic pushback (if any)
                if not(_optic isEqualTo "") then {
                _mainItemsClasses pushBack _optic;
                _mainItemsAmounts pushBack 1;
                };
                //Magazine pushback (if any)
                if not(_magazine isEqualTo "") then {
                _mainItemsClasses pushBack _magazine;
                _mainItemsAmounts pushBack 1;
                };
                if not(_bipod isEqualTo "") then {
                _mainItemsClasses pushBack _bipod;
                _mainItemsAmounts pushBack 1;
                };
            nil;
        } count _mainWeapons;


        //Add ALL Items (weapons,magazines,items,etc.)
         for "_i" from 0 to (count(_mainItemsClasses)-1) do {
         private _curItem = _mainItemsClasses select _i;
         private _curAmount = _mainItemsAmounts select _i;
         _containerBox addItemCargoGlobal [_curItem,_curAmount];
         };



//Backpacks handling
    private _allContainers = _inventory select 1;
    {
        private _containerClass = _x select 0;
        private _cargo = _x select 1;

        //Add container to vehicle and grab object
        _containerBox addBackpackCargoGlobal [_containerClass,1];
        private _containerObj = (everyContainer _containerBox) select 0 select 1; //Always first element(Last added to cargo)


        //Set variables
        private _containerItemsClasses = _cargo select 0;
        private _containerItemsAmounts = _cargo select 1;
        private _containerWeapons = _x select 2;



        //Iterate through weapons
        {
            private _curWeapon = [_x select 0] call _fnc_baseWeapon;
            private _suppressor = _x select 1;
            private _laser = _x select 2;
            private _optic = _x select 3;
            private _magazine = if not((_x select 4) isEqualTo []) then { _x select 4 select 0 } else { "" };
            private _bipod = _x select 5;
            //Pushbacks
                //Weapon PushBack
                if not(_curWeapon isEqualTo "") then {
                _containerItemsClasses pushBack _curWeapon;
                _containerItemsAmounts pushBack 1;
                };
                //Suppressor pushBack (if any)
                if not(_suppressor isEqualTo "") then {
                _containerItemsClasses pushBack _suppressor;
                _containerItemsAmounts pushBack 1;
                };
                //Laser pushBack (if any)
                if not(_laser isEqualTo "") then {
                _containerItemsClasses pushBack _laser;
                _containerItemsAmounts pushBack 1;
                };
                //Optic pushback (if any)
                if not(_optic isEqualTo "") then {
                _containerItemsClasses pushBack _optic;
                _containerItemsAmounts pushBack 1;
                };
                //Magazine pushback (if any)
                if not(_magazine isEqualTo "") then {
                _containerItemsClasses pushBack _magazine;
                _containerItemsAmounts pushBack 1;
                };
                if not(_bipod isEqualTo "") then {
                _containerItemsClasses pushBack _bipod;
                _containerItemsAmounts pushBack 1;
                };
            nil;
        } count _containerWeapons;


        //Final Iteration
        for "_i" from 0 to (count(_containerItemsClasses)-1) do {
            private _curItem = _containerItemsClasses select _i;
            private _curAmount = _containerItemsAmounts select _i;
            _containerObj addItemCargoGlobal [_curItem,_curAmount];
        };
    nil;
    } count _allContainers;
