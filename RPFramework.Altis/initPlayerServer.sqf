private _unit = _this select 0;





//Check if garage module is enabled
if (isClass(missionConfigFile >> "RPF_garageModule")) then {
    //Vehicles Fetching (Garage Module)
    if (!isNil "persistencyLoader") then {
        waitUntil {scriptDone persistencyLoader};
        };
    private _RPF_Cars = (entities[["Car", "Ship", "Air"], [], false, true]) select {
        if (isNil{(_x getVariable 'ownerUID')}) exitWith { false };
        (_x getVariable 'ownerUID') isEqualTo (getPlayerUID _unit)
    };

    if (count(_RPF_Cars) > 0) then {
        [_RPF_Cars] remoteExecCall ["ClientModules_fnc_updateCars", _unit];
    };
};