/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params [["_class",""], ["_hit",0], ["_player",objNull], ["_new",true,[true]], ["_isInGarage",false,[true]], ["_rowID",0]];

if (_new) then {
    
    _insert = [0, (format["insertGarage:%1:%2:%3:%4", _class, getPlayerUID _player, _hit, parseNumber(_isInGarage)])] call ExternalS_fnc_ExtDBquery;
    
    _insert;
} else {
    
    [1, (format["statusVehicle:%1:%2", parseNumber(_isInGarage),_rowID])] call ExternalS_fnc_ExtDBquery;

}