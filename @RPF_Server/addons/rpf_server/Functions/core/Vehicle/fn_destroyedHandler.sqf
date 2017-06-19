params ["_killed"];

_recursiveFind = {
    params["_array","_toFind"];
    {
        scopeName "searchLoop";
        private _idx = _x find _toFind;
        if (_idx != -1) then {
            _idx breakOut "searchLoop"
        }
    } forEach _array;
};

private _idx = RPF_Cars find _killed;
private _vehID = _killed getVariable "rowID";
RPF_Cars deleteAt _idx;
[_vehID] call Server_fnc_removeVehicle;