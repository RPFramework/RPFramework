/*
Author: Kerkkoh
First Edit: 26.11.2015
*/

params ["_class"];

//Check if the class has a custom name
scopeName "Main";
{
    private _className = _x select 0;
    private _name = _x select 1;

    if (_className isEqualTo _class) then {
     _name breakOut "Main"
	 };
		true;
} count RPF_ItemNames;

//Grab name from config
private _return = getText(configFile >> "CfgVehicles" >> _class >> "displayName");

_return
