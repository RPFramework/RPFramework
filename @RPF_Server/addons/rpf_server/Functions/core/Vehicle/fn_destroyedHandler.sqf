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

private _idx = [RPF_Cars,_killed] call _recursiveFind;
private _vehID = RPF_Cars select _idx select 1;
RPF_Cars deleteAt _idx;
[_vehID] call Server_fnc_removeVehicle;