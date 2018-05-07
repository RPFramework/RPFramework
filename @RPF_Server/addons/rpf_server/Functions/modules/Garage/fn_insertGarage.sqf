/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params ["_vehicle", "_player", ["_krand",nil,[""]]];

//Let's check if the krand is NOT defined
if (isNil "_krand") then {
    //Create a new key and assign it
    _krand = [_vehicle,_player] call Server_fnc_insertKey;
};

[0, format["insertVehicle:%1:%2:%3:%4:%5", typeOf _vehicle, getPlayerUID _player, ((getAllHitPointsDamage _vehicle) select 2), _krand, getPlateNumber _vehicle]] call ExternalS_fnc_ExtDBquery;
