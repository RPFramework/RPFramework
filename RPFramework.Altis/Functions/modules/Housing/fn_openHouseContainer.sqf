/*
    File : fn_openHouseContainer.sqf
    Module: Housing
    Author: Dardo
    Description:
    Open the container of the respective house 
			
    Arguments:
        1 - House <Object>
*/
params ["_house"];

private _cargo = _house getVariable "container";

//Save original cargo position (This will be used as 'inUse' check)
if (isNil {_cargo getVariable "oldPosition"}) then {
_cargo setVariable ["oldPosition",getPosATL _cargo,true];
};

_cargo setPosAtl (getPosAtl player);
_cargo enableSimulation true;

//Add EH on ContainerClosed for setting cargo back to its original position
_cargo addEventHandler ["ContainerClosed", {
    params ["_cargo"];
    private _oldPosition = _cargo getVariable "oldPosition";
    _cargo setPosATL _oldPosition;
    _cargo setVariable ["oldPosition",nil,true];
    _cargo enableSimulation false;
    [_cargo] remoteExecCall ["ServerModules_fnc_updateHouseContainer",2];
    _cargo removeAllEventHandlers "ContainerClosed";
}];


//Open cargo box
player action ["Gear",_cargo];


