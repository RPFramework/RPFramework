/*
    File : fn_updateHouseTrunk.sqf
    Module: Housing
    Author: Dardo
    Description:
    Save house's trunk to the database

    Arguments:
        1 - House <Object>
*/

params ["_house"];

//[_randID, _class, _vars]
private _houseID = _house getVariable "id";
private _trunk = _house getVariable "trunk";

private _query = format ["updateHouseTrunk:%1:%2", _trunk, _houseID];

if !(_trunk isEqualTo []) then {
    [0, _query] call ExternalS_fnc_ExtDBquery;
};
