/*
    File : fn_updateHouseContainer.sqf
    Module: Housing
    Author: Dardo
    Description:
    Save the container box inventory array on the database by creating an array with the following structure:

    [_inventoryArray,_containersArray]


    -------_inventoryArray-------
    [
    [_inventoryClasses, --> Classes of items
    _inventoryAmounts], --> Number of items of the specified kind at the same index in _inventoryClasses
    _weaponsCargo ---> Weapons
    ]

    -------_containersArray------- //Used for saving backpacks
    [
    _className1 --> Backpack's classname,
    [_inventoryClasses,_inventoryAmounts],_weapons
    ] --> Same structure as _inventoryArray

    Arguments:
        1 - Container <Object>
        2 - House ID <Int>
*/
params ["_container"];
private _id = _container getVariable "id";

//Items + Magazines
    //Classnames merging
        //getItemCargo  + getMagazineCargo  classnames
        private _inventoryClasses = ((getItemCargo _container) select 0) + ((getMagazineCargo _container) select 0);

    //Amount merging
        //getItemCargo  + getMagazineCargo amounts
        private _inventoryAmounts = ((getItemCargo _container) select 1) + ((getMagazineCargo _container) select 1);


//Fetch weapons and attachments
private _weaponsCargo = weaponsItemsCargo _container;


//Look for duplicates
private _backpacksClasses = (everyContainer _container) apply {_x select 0};
private _backpacksObjects = (everyContainer _container) apply {_x select 1};

//Clean duplicates(Backpacks also appear in _inventoryClasses)
if !(_inventoryClasses arrayIntersect _backpacksClasses isEqualTo []) then {
    private _amountsIDXToRemove = [];
    {
    	private _idx = _inventoryClasses find _x;
    	if (_idx != -1) then { _amountsIDXToRemove pushBack _idx };
    	nil;
    } count (_backpacksClasses arrayIntersect _inventoryClasses);
    _inventoryClasses = _inventoryClasses - _backpacksClasses;
    _amountsIDXToRemove sort false;

    {
    	_inventoryAmounts deleteAt _x;
    	nil;
    } count _amountsIDXToRemove;
};


//Format array
private _inventoryArray = [[_inventoryClasses,_inventoryAmounts],_weaponsCargo];

//Setup backpacks array
private _backpacksArray = [];
{
	/* ----
	   _x select 0 --> Backpack classname
	   _x select 1 --> Items array
	   _x select 2 --> weapons Array
	   ----
	*/
	private _className = _backpacksClasses select _forEachIndex;
    private _inventoryClasses = ((getItemCargo _x) select 0) + ((getMagazineCargo _x) select 0);
	private _inventoryAmounts = ((getItemCargo _x) select 1) + ((getMagazineCargo _x) select 1);
	private _weapons = weaponsItemsCargo(_x);
	_backpacksArray pushback [_className,[_inventoryClasses,_inventoryAmounts],_weapons];
} forEach _backpacksObjects;

//Function for checking if the array has actually something in it
private _isEmpty = {
    scopeName "isEmpty";
    private _array = _this;
    private _isItEmpty = true;
    {
      if (typeName _x isEqualTo "ARRAY") then {
          _isItEmpty = _x call _isEmpty;
      } else {
          //There's something in the array
          false breakOut "isEmpty";
      };
      if (!_isItEmpty) then { _isItEmpty breakOut "isEmpty" };
    } count _array;
    _isItEmpty
};

private _updateCondition = not([_inventoryArray,_backpacksArray] call _isEmpty);

if (_updateCondition) then {
    [0, format["updateHouseContainer:%1:%2",[_inventoryArray,_backpacksArray],_id]] call ExternalS_fnc_ExtDBquery;
};
