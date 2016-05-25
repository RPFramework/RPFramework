/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
player setVariable ["cuffed", true, true];

for "_i" from 0 to 1 step 0 do 
{
	if (!(player getVariable "cuffed")) exitWith {false};
	if (isNull objectParent player) then
	{
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	if(!alive player) exitWith {player setVariable ["cuffed",false,true];};
};