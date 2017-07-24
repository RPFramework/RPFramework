/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_vehicle", "_player", ["_krand",nil,[""]]];
private _class = typeOf _vehicle;
private _playerUID = getPlayerUID _player;
private _hit = [_vehicle] call Client_fnc_vehicleHitGet;


//Let's check if the krand is NOT defined
if (isNil "_krand") then {
    //Create a new key and assign it
    _krand = [_vehicle,_player] call Server_fnc_insertKey;
};

_insert = [0, format["insertVehicle:%1:%2:%3:%4", _class, _playerUID, _hit, _krand]] call ExternalS_fnc_ExtDBquery;