/*
Author: Kerkkoh
First Edit: 17.4.2016
*/
diag_log (localize "STR_RPF_FISHING_INIT");

//Add conditions and statements to the buyPhysicalShop script
//Spawn a thread and wait a bit before calling shopSystem's module function
[] spawn {
   waitUntil{uiSleep 0.1; !(isNil "RPF_buyPhysicalShopStatements")};
   uiSleep 2;
   [
	   {( (not(isNil "RPF_Fishingnet")) && {_class == RPF_Fishingnet} )},
	   {
		  [_newfurn, true]call ClientModules_fnc_manageFishingNet;
		  _newfurn setVariable ["action", [true, [[false],"ClientModules_fnc_manageFishingNet"], [[true],"ClientModules_fnc_manageFishingNet"]]];

		  _vars pushBack ["action", [true, [[false],"ClientModules_fnc_manageFishingNet"], [[true],"ClientModules_fnc_manageFishingNet"]]];
		  _newfurn setVariable ["vars", _vars, true];
	   },
	   2
   ] call ServerModules_fnc_buyPhysicalShopStatement;
};

RPF_fishingNets = [];

[] spawn ServerModules_fnc_fishingLoop;
