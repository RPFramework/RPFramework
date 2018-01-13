/*
    File : fn_insideHouseConditions.sqf
    Module: Housing
    Description:
    Check if the player is actually inside a house 
			
    Arguments:
        1 - House <Object>
*/
params ["_unit"];


lineIntersectsSurfaces [
    getPosWorld _unit, 
    getPosWorld _unit vectorAdd [0, 0, 50], 
    _unit, objNull, true, 1, "GEOM", "NONE"
] select 0 params ["","","","_house"];
if (_house isKindOf "House") exitWith {true};
false