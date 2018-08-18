/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

params["_rock"];

RPF_Mining = true;

for "_i" from 1 to 15 step 1 do {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	uisleep 0.833;
};
private _amt = 1 + (floor random 3);
if (!(player canAdd ["RPF_Mining_Minerals", _amt])) exitWith {
	hint localize "STR_RPF_CORE_CANTADDITEM";
};
for "_x" from 1 to _amt step 1 do {
	player addItem "RPF_Mining_Minerals";
};
deleteVehicle _rock;

RPF_Mining = nil;
