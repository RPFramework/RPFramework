/*
Author: Kerkkoh
First Edit: 16.4.2015

Additional Information:
Adding modules, creating modules -> Check README.md
Module init function adding syntax: ServerModule_fnc_initYourModule
Check out RPFramework's README.md or module's Readme file for info on module installation.
*/
_sModules = [
	"ServerModules_fnc_initExample",
	"ServerModules_fnc_initFishing",
	"ServerModules_fnc_initFarming",
	"ServerModules_fnc_initShopSystem"
];

{
	[] call (call compile _x);
}forEach _sModules;