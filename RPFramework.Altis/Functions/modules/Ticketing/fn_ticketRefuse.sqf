/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
params ["_officer"];
closeDialog 0;
[["Ticketed person REFUSED to pay the ticket!"], "Client_fnc_hintMP", _officer, false] spawn BIS_fnc_MP;