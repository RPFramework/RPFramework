/*
    File : fn_addHotkey.sqf
    Author: Dardo
    Description:
    Add an hotkey
			
    Arguments:
        1 - Direct Input Keyboard Code <Int> ( https://community.bistudio.com/wiki/DIK_KeyCodes )
        2 - Statement to execute <Code>
*/
params [["_DIKKey",0,[0]],["_Statement",{},[{}]]];

//Manipulate _statement
private _stringCodeArray = toArray(str(_statement));
_stringCodeArray deleteAt 0; //First element
_stringCodeArray deleteAt (count(_stringCodeArray) - 1); //Last element
_stringCode = toString(_stringCodeArray);
private _condition = format["if not((_this select 1) isEqualTo %1) exitWith {};",_DIKKey];

private _finalStatement = compile(_condition + endl + _stringCode);

_return = (findDisplay 46) displayAddEventHandler ["KeyDown",_finalStatement];

_return;