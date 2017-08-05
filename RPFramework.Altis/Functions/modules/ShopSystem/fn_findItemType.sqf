/*
    File : fn_findItemType.sqf
    Module: ShopSystem
    Author: Dardo
    Description:
    Find the type of the passed item and return the according value (See below)    
    Types:	0 - Item
			1 - Magazine
			2 - Weapon
			3 - Uniform
			4 - Vest
			5 - Headgear
			6 - Backpack
			
    Arguments:
        1 - Item Classname <String>
*/
		
params [["_classname","",[""]]];

private _itemType = ["_classname"] call BIS_fnc_itemType;

//Is it an item? 
if (toLower(_itemType select 0) isEqualTo "item") exitWith { 0 };

//Is it a magazine? 
if (toLower(_itemType select 0) isEqualTo "magazine") exitWith { 1 };

//Is it a weapon? 
if (toLower(_itemType select 0) isEqualTo "weapon") exitWith { 2 };

//Is it a unicorn... I meant a uniform? 
if (toLower(_itemType select 1) isEqualTo "uniform") exitWith { 3 };

//Is it a vest? 
if (toLower(_itemType select 1) isEqualTo "vest") exitWith { 4 };

//Is it an headgear? 
if (toLower(_itemType select 1) isEqualTo "headgear") exitWith { 5 };

//Is it a backpack? 
if (toLower(_itemType select 1) isEqualTo "backpack") exitWith { 6 };