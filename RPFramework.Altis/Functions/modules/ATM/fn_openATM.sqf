/*
Author: Kerkkoh
First Edit: 17.4.2016
Last Edit: 26.02.2018
*/
createDialog "ATM";

ctrlSetText [1000, format [(localize "STR_RPF_MODULES_ATM_TITLEACC"), str (player getVariable "bankAccount")]];

ctrlSetText [1002, [(player getVariable "bank")] call BIS_fnc_numberText];

ctrlSetText [1004, [(player getVariable "cash")] call BIS_fnc_numberText];