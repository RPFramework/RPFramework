/*
    File : fn_loadPersistency.sqf
    Author: Dardo
    Description:
    Fetch all vehicles from RPF_Vehicles and spawn them.
    DATA:
    - Classname[0](String)
    - Damage[1][Array](Int)
    - Position[2][Array](Int)
    - Textures[3][Array](String)
    - Direction[4](Int)
    - Inventory[5][Array of 2 arrays]
    - Variables[6][Array of arrays] | Format: [["MyVar",2],["My2ndVar",1]]
    
    Keep in mind that variables ,for being saved, have to be added in the config.hpp
    

*/

_TAG_fnc_baseWeapon = {
//Author:Larrow
params ["_weapon",""];
_baseCfg = (configFile >> "cfgWeapons");
_cfg = _baseCfg >> _weapon;

while {isClass (_cfg >> "LinkedItems") } do {
	_parent = configName (inheritsFrom (_cfg));
	_cfg = _baseCfg >> _parent;
};

configName _cfg
};

private _RPF_Vehicles = profileNameSpace getVariable "RPF_Vehicles";

{
    private _className = _x select 0;
    private _damage = _x select 1;
    private _position = _x select 2;
    private _textures = _x select 3;
    private _direction = _x select 4;
    private _inventory = _x select 5;
    private _variables = _x select 6;
    private _vehicle = _className createVehicle [0,0,0];
    {
        private _name = _x select 0;
        private _value = _x select 1;
        _vehicle setVariable [_name,_value,true];
    } forEach _variables; //Set Variables
    {
        _vehicle setObjectTextureGlobal [_forEachIndex,_x]
    } forEach _textures; //Set textures
   
    _vehicle setPos _position;
    _vehicle addMPEventHandler ["killed",{_this call Server_fnc_destroyedHandler}];
    [_damage, _vehicle]call Client_fnc_vehicleHitLoad;
    _vehicle lock 2;
    
    //Inventory handling

        //Main Inventory
        private _mainInventory = _inventory select 0;
        private _mainItems = _mainInventory select 0;
        private _mainWeapons = _mainInventory select 1;
        

        //Main Items Handling
        private _mainItemsClasses = _mainItems select 0;
        private _mainItemsAmounts = _mainItems select 1;
        //Fetch Weapons
        {
            private _curWeapon = [_x select 0] call _TAG_fnc_baseWeapon;
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
            _vehicle addItemCargoGlobal [_curItem,_curAmount];
            };

    //Containers handling
    private _allContainers = _inventory select 1;
    {
        private _containerClass = _x select 0;
        private _cargo = _x select 1;
        
        //Add container to vehicle and grab object
        _vehicle addBackpackCargoGlobal [_containerClass,1];
        private _containerObj = (everyContainer _vehicle) select 0 select 1; //Always first element
        
        
        //Set variables
        private _containerItemsClasses = _cargo select 0;
        private _containerItemsAmounts = _cargo select 1;
        private _containerWeapons = _x select 2;
 
 
 
        //Iterate through weapons
        {
            private _curWeapon = [_x select 0] call _TAG_fnc_baseWeapon;
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
            _vehicle addItemCargoGlobal [_curItem,_curAmount];
        };
    nil;
    } count _allContainers;
nil;
} count _RPF_Vehicles;