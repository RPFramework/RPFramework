/*
Author: Kerkkoh
First Edit: 16.4.2015

Additional Information:
You need to add your module inits to moduleInit.hpp into the array in there. This file only runs those functions.
*/

uiSleep 1;
{
	[] call (call compile _x);
	true;
}count ((configFile >> "RPF_initModules") call BIS_fnc_getCfgData);
