/*
    File : fn_openHouseTrunk.sqf
    Module: Housing
    Author: Dardo
    Description:
    Access the trunk of the respective house.
    Spawn a thread for checking when the player closes house's trunk dialog.
			
    Arguments:
        1 - House <Object>
*/

params [["_house",cursorObject,[objNull]]];

private _trunk = (missionConfigFile >> "RPF_housingModule" >> "Houses" >> (typeOf _house) >> "trunksize") call BIS_fnc_getCfgData;
[_house,_trunk] call Client_fnc_openTrunk;
    
[_house] spawn {
    scriptName "houseTrunkUpdateHandler";
    waitUntil {
        uiSleep 0.5;
        (isNull (findDisplay 1020))
    };
        //The player closed the trunk inventory
        //Let's sync the house inventory with the database
        _this remoteExecCall ["ServerModules_fnc_updateHouseTrunk",2];
};
