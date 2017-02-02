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
	"ServerModules_fnc_initShopSystem",
	"ServerModules_fnc_initATM",
	"ServerModules_fnc_initMethLab",
	"ServerModules_fnc_initDeliverySystem",
	"ServerModules_fnc_initJail",
	"ServerModules_fnc_initPhone",
	"ServerModules_fnc_initPolicePlus",
	"ServerModules_fnc_initHousing",
	"ServerModules_fnc_initGarage",
	"ServerModules_fnc_initMining"
];

{
	[] call (call compile _x);
}forEach _sModules;