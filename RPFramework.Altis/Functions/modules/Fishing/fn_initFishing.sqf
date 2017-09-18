/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Just adding the fishing net object to physical items in a module, what a waste of space, right?

RPF_Fishingnet variable is used out of the module so we'll let it stay here and not put it completely in the config
*/

RPF_Fishingnet = ((missionConfigFile >> "RPF_fishingModule" >> "fishingNet") call BIS_fnc_getCfgData);

RPF_ItemNames pushBack [RPF_Fishingnet, "Fishing net"];

//Add conditions and statements to the buyPhysicalShop script
[
{( (not(isNil {RPF_Fishingnet})) && {_class == RPF_Fishingnet} )},	
{
   [netId _newfurn, 0] remoteExecCall ["ServerModules_fnc_manageFishingnet", 2];
   _newfurn setVariable ["action", [true, "[%1, 1] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]", "[%1, 0] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]"]];
   
   _vars pushBack ["action", [true, "[%1, 1] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]", "[%1, 0] remoteExecCall ['ServerModules_fnc_manageFishingnet', 2]"]];
   _newfurn setVariable ["vars", _vars, true];
},
2 //Furniture block
] spawn ClientModules_fnc_buyPhysicalShopStatement;