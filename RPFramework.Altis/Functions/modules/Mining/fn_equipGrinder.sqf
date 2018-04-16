/*
Author: Kerkkoh
First Edit: 2.2.2017
*/
if (!(isNull RPF_Grinder)) then {
	player addItem "RPF_Mining_Grinder";
	detach RPF_Grinder;
	deleteVehicle RPF_Grinder;
	RPF_Grinder = objNull;
} else {
	player removeItem "RPF_Mining_Grinder";
	RPF_Grinder = createSimpleObject ["a3\structures_f\items\tools\grinder_f.p3d", [0,0,0]];
	{detach _x;}forEach (attachedObjects player);
	RPF_Grinder attachTo [player, [0,-0.1,0.1], "lefthand"];
	RPF_Grinder setVectorDirAndUp [[0,-1,0],[0,0,1]];
};
