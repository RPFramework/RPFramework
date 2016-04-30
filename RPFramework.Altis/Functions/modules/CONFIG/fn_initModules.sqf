/*
Author: Kerkkoh
First Edit: 23.11.2015

Additional Information:
Adding modules, creating modules -> Check README.md
Module init function adding syntax: ClientModule_fnc_initYourModule
Check out RPFramework's README.md or module's Readme file for info on module installation.
*/

_cModules = [
	"ClientModules_fnc_initExample",
	"ClientModules_fnc_initTaser",
	"ClientModules_fnc_initTicketing",
	"ClientModules_fnc_initFishing",
	"ClientModules_fnc_initFarming",
	"ClientModules_fnc_initShopSystem",
	"ClientModules_fnc_initBasicMedical"
];



{
	[] call (call compile _x);
}forEach _cModules;