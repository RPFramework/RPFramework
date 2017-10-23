



params [["_house",cursorObject,[objNull]],["_unit",player,objNull]];

private _trunk = ((missionConfigFile >> "RPF_Housing" >> "Houses" >> (typeOf _house) >> "trunksize") call BIS_fnc_getCfgData);
[_house,_trunk] call Client_fnc_openTrunk;
    
[_house] spawn {
    scriptName "houseTrunkUpdateHandler";
    waitUntil {
        uiSleep 0.5;
          if (isNull (findDisplay 1020)) then {
            //The player closed the trunk inventory
            //Let's sync the house inventory with the database
            [_this select 0] remoteExecCall ["ServerModules_fnc_updateHouseTrunk"];
        };
    };
};
