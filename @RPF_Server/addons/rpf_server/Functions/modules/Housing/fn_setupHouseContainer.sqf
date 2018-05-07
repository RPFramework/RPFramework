/*
    File : fn_setupHouseContainer.sqf
    Module: Housing
    Author: Dardo
    Description:
    Create a container and 'link' it with the respective house

    Arguments:
        1 - House <Object>
        2 - House position <Array>
        3 - Inventory <Array>
*/
params ["_house",["_pos",[],[[]]],["_inventory",[],[[]]]];

if (_pos isEqualTo []) then {
	_pos = getPos _house;
};

//Grab container class
private _containerClass = (missionConfigFile >> "RPF_housingModule" >> "Houses" >> (typeOf _house) >> "containerClass") call BIS_fnc_getCfgData;

//Handle creation of storage box (For arma items)
private _newContainer = _containerClass createVehicle [0,0,0];

//Populate container inventory
[_newContainer,_inventory] call ServerModules_fnc_setupHouseContainerInventory;

//Hide the container and disallow damage
_newContainer allowDamage false;
_newContainer hideObjectGlobal true;

//Move the container (Under the house)
_newContainer setPos [_pos select 0,_pos select 1,(_pos select 2) - 15];


_newContainer enableSimulation false; //We don't want weird things to happen

//Set house id on container
_newContainer setVariable ["id",_house getvariable "id"];

//Attach the container reference to the house
_house setVariable ["container",_newContainer,true];
