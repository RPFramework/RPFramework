/*
Author: Kerkkoh
First Edit: 23.11.2015

Additional Information:
You add the module init files in:
	Functions/modules/CONFIG/moduleInit.hpp
*/

{
	[] call (call compile _x);
	true;
}count ((missionConfigFile >> "RPF_initModules") call BIS_fnc_getCfgData);
