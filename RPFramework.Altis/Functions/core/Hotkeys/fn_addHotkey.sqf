/*
    File : fn_addHotkey.sqf
    Author: Dardo
    Description:
    Add an hotkey
			
    Arguments:
        1 - Direct Input Keyboard Code <Int> ( https://community.bistudio.com/wiki/DIK_KeyCodes )
        2 - Statement to execute <Code>
*/
params [["_DIKKey",0,[0]],["_statement",{},[{}]]];

//Manipulate _condition
private _condition = format["if not((_this select 1) isEqualTo %1) exitWith {};",_DIKKey];

private _finalStatement = compile(_condition + endl + "_this call " + str(_statement));

_return = (findDisplay 46) displayAddEventHandler ["KeyDown",_finalStatement];

_return;