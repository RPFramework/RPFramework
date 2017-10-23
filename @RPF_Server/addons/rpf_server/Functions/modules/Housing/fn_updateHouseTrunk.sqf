params ["_house"];

//[_randID, _class, _vars]
private _houseID = _house getVariable 'id';
private _trunk = _house getVariable 'trunk';

private _query = format ["updateHouseTrunk:%1:%2", _houseID, _trunk];

_fetch = [0, _query] call ExternalS_fnc_ExtDBquery;





