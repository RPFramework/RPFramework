params [["_key","",[""]],["_inGarage",nil,[false]]];
if (_key == "") exitWith {};


_parseBool = {
  params ["_int"];
  if (_int isEqualTo 0) exitWith {
      false
  };
    if (_int isEqualTo 1) exitWith {
      true
  };  
    false
};

if (isNil "_inGarage") then {
    //We want to change vehicle's status from the current one
    _inGarage = [0, (format["getVehicleStatus:%1", _key])] call ExternalS_fnc_ExtDBquery;
    _inGarage = [_inGarage] call _parseBool;
    _inGarage = !_inGarage
};

private _futureStatus = parseNumber _inGarage;

//Update status
[0, (format["updateVehicle:%1",_inGarage,_key])] call ExternalS_fnc_ExtDBquery;

