private _unit = _this select 0;





//Vehicles Fetching
private _userVehicles = (entities[["Car", "Ship", "Air"], ["Tank"], false, true]) select {(_x getVariable 'ownerUID') isEqualTo (getPlayerUID _unit)};
if (count(_userVehicles) > 0) then {
    if (!isNil "persistencyLoader") then {
        waitUntil {scriptDone persistencyLoader};
    };
    private _rpf_cars = _userVehicles;

    [_rpf_cars] remoteExecCall["ClientModules_fnc_updateCars", _unit];

};