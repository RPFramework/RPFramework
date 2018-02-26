/*
    File : fn_addHotkey.sqf
    Author: Dardo
    Description:
    Add an hotkey

    Arguments:
        1 - Direct Input Keyboard Code <Int> ( https://community.bistudio.com/wiki/DIK_KeyCodes )
        2 - Statement to execute <Code>
        3 - Shift,Ctrl,alt or nothing <String>
*/
params [["_DIKKey",0,[0]],["_statement",{},[{}]],["_additionalKey","",["shift","ctrl","alt"]]];
private _condition = "";

if not (_additionalKey in ["shift","ctrl","alt"]) then {
    _additionalKey = ""
};

//Manipulate _condition
if (_additionalKey isEqualTo "") then {
    _condition = format["if not((_this select 1) isEqualTo %1) exitWith {};",_DIKKey];
} else {
    private _condKeyHoldIdx = switch (_additionalKey) do
    {
        case "shift" : {2};
        case "ctrl" : {3};
        case "alt" : {4};
    };

     _condition = format["if not(((_this select 1) isEqualTo %1) && (_this select %2)) exitWith {};",_DIKKey,_condKeyHoldIdx];
};

private _finalStatement = compile(_condition + endl + "_this call " + str(_statement));

_return = (findDisplay 46) displayAddEventHandler ["KeyDown",_finalStatement];

_return;
