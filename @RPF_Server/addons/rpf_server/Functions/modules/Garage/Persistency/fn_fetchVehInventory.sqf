/*
    File : fn_fetchVehInventory.sqf
    Author: Dardo
    Description:
    Fetch all cargo items in the wanted vehicle
*/

params ["_vehicle"];
private _standardInventory = getItemCargo _vehicle + getMagazineCargo _vehicle;


//Class merging
    //getItemCargo  + getMagazineCargo   classes
    private _inventoryClasses = ((getItemCargo _vehicle) select 0) + ((getMagazineCargo _vehicle) select 0);
 
//Amount merging
    //getItemCargo  + getMagazineCargo amounts
    private _inventoryAmounts = ((getItemCargo _vehicle) select 1) + ((getMagazineCargo _vehicle) select 1);


//Fetch weapons and attachments
private _weaponsCargo = weaponsItemsCargo _vehicle;


//Look for duplicates
private _containersClasses = (everyContainer _vehicle) apply {_x select 0};
private _containersObjects = (everyContainer _vehicle) apply {_x select 1};

//Clean duplicates
if !(_inventoryClasses arrayIntersect _containersClasses isEqualTo []) then {
private _amountsIDXToRemove = []; 
{
	private _idx = _inventoryClasses find _x;
	if (_idx != -1) then { _amountsIDXToRemove pushBack _idx };
	nil;
} count (_containersClasses arrayIntersect _inventoryClasses);
_inventoryClasses = _inventoryClasses - _containersClasses;
_amountsIDXToRemove sort false;

{
	_inventoryAmounts deleteAt _x;
	nil;
} count _amountsIDXToRemove;
};


//Format array
private _inventoryArray = [[_inventoryClasses,_inventoryAmounts],_weaponsCargo];

//Setup containers array 
private _containersArray = [];
{
	/* ----
	   _x select 0 --> ContainerObject
	   _x select 1 --> Items array
	   _x select 2 --> weapons Array
	   ----
	*/
	private _className = _containersClasses select _forEachIndex;
    private _inventoryClasses = ((getItemCargo _x) select 0) + ((getMagazineCargo _vehicle) select 0);
	private _inventoryAmounts = ((getItemCargo _x) select 1) + ((getMagazineCargo _vehicle) select 1);
	private _weapons = (weaponsItemsCargo(_x));
	_containersArray pushback [_className,[_inventoryClasses,_inventoryAmounts],_weapons];
} forEach _containersObjects;

[_inventoryArray,_containersArray];