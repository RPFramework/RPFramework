/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
player setVariable ["cuffed", true, true];

while {true} do
{
	if (!(player getVariable "cuffed")) exitWith {false};
	if (vehicle player == player) then
	{
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	if(!alive player) exitWith {player setVariable ["cuffed",false,true];};
};