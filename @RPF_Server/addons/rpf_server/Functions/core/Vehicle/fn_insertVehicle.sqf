/*
    File : fn_newVehicle.sqf
    Author: Dardo
    Description:
    Insert a new vehicle in database,and sets to it various variables.
    Arguments:
        1- Vehicle Object
        2- Owner UID
*/

params [["_vehicle",objNull,[objNull]],["_playerUID","",[""]]];

private _insertID = [0, (format["insertVehicle:%1:%2:%3:%4", typeOf _vehicle, _playerUID, [_vehicle] call Client_fnc_vehicleHitGet,0])] call ExternalS_fnc_ExtDBquery;
_insertID = _insertID select 0;

[_vehicle,_insertID,_playerUID] call Server_fnc_setupVehicle;

