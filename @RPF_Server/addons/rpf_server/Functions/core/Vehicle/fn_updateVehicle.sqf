/*
Author: Kerkkoh
First Edit: 6.9.2016
*/

params [["_rowID",0], ["_isInGarage",false,[true,1]], ["_hit",[],[[]]]];


[1,(format["updateVehicle:%1:%2:%3",parseNumber(_isInGarage),_hit,_rowID])] call ExternalS_fnc_ExtDBquery;

if (_isInGarage && !(isNil "persistencyHandler") && ((missionConfigFile >> "RPF_garageModule" >> "switch_mode") call BIS_fnc_getCfgData) isEqualTo 1) then {
    private _pushbackFSM = {
    params ["_handle","_var","_item"] ; 
    private _curValue = _handle getFSMVariable _var;
    if (typeName _curValue != "ARRAY") exitWith { _handle setFSMVariable [_var,[]]; };
    private _finalValue=_curValue;
    _finalValue pushBack _item;
    _handle setFSMVariable [_var,_finalValue];
    };
    
    [persistencyHandler,"_toRemove",_rowID] call _pushbackFSM;
    
};