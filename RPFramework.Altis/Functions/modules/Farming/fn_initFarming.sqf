/*
Author: Kerkkoh
First Edit: 20.4.2016
*/

private _usables = [
	["RPF_Items_PoppySeed", ['RPF_Items_PoppySeed'], "ClientModules_fnc_plantPlantae"],
	["RPF_Items_CocaSeed", ['RPF_Items_CocaSeed'], "ClientModules_fnc_plantPlantae"],
	["RPF_Items_WeedSeed", ['RPF_Items_WeedSeed'], "ClientModules_fnc_plantPlantae"],
	["RPF_Items_OliveSeed", ['RPF_Items_OliveSeed'], "ClientModules_fnc_plantPlantae"]
];
{
	RPF_Usables pushBack _x;
}forEach _usables;
