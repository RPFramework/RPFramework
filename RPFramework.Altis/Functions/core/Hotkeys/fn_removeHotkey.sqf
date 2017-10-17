/*
    File : fn_removeHotkey.sqf
    Author: Dardo
    Description:
    Removes the Display Event Handler by its reference   
	(Do we really need this?)
			
    Arguments:
        1 - Reference to the EH (Returned by Client_fnc_addHotkey)
*/
params ["_reference"];


(findDisplay 46) displayRemoveEventHandler _reference;