/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];
_recursiveFind = {
    params["_array","_toFind"];
    {
        scopeName "searchLoop";
        private _idx = _x find _toFind;
        if (_idx != -1) then {
            _idx breakOut "searchLoop"
        }
    } forEach _array;
    -1;
};

private _idx = RPF_Cars find _ct;
if (_idx isEqualTo -1) exitWith {};
private _vehID = _ct getVariable "rowID";
RPF_Cars deleteAt _idx;

[_vehID,1,damage _ct] remoteExecCall ["Server_fnc_updateVehicle", 2];

deleteVehicle _ct;