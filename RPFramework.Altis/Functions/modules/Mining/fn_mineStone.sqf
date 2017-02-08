/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

params["_c"];

RPF_Mining = true;

for "_i" from 1 to 20 step 1 do {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	uisleep 0.833;
};
deleteVehicle _c;
for "_x" from 1 to (1 + (floor random 3)) step 1 do {
	player addItem "RPF_Mining_Minerals";
};

RPF_Mining = nil;
