private _deArray = {
    scopeName "deArray";
    params ["_probArray"];
    if (typeName _probArray == "ARRAY") then {
        if (count _probArray isEqualTo 1) then {
          _return = _probArray select 0;
          _return breakOut "deArray";
        } else {
        _probArray breakOut "deArray"
        }
    } else {
        _probArray breakOut "deArray"
  }
};


params [["_argument",""],["_caller",objNull,[objNull]]];

if (typeName _argument isEqualTo "OBJECT") then { //It is the vehicle
    
    private _insertID = [0, (format["insertGarage:%1:%2:%3:%4", typeOf _argument, getPlayerUID _player, damage _argument,0] call ExternalS_fnc_ExtDBquery;
    _insertID = [_insertID] call _deArray;
    _argument setVariable ["rowID",_insertID,true];

}; //New vehicle has been bought from a physical shop