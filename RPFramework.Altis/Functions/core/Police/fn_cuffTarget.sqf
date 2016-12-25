/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
while {true} do {
	if (!(player getVariable "cuffed")) exitWith {};
	if(!alive player) exitWith {player setVariable ["cuffed",false,true];};
	if (isNull objectParent player) then {player playMove "AmovPercMstpSnonWnonDnon_Ease";};
};
