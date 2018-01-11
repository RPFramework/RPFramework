/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params ["_house"];

createDialog "houseInfo";

if ((_house getVariable ["price", -1]) != -1) then {
	ctrlSetText[1001, "Yes"];
	ctrlSetText[1003, str (_house getVariable "price")];
	if ((_house getVariable ['owner', '0']) == (getPlayerUID player)) then {
		ctrlEnable[1600, false];
	};
} else {
	if (!(isNil {_house getVariable "owner"})) then {
		ctrlEnable[1600, false];
		ctrlShow [1002, false];
		ctrlShow [1003, false];
	} else {
		ctrlSetText[1001, "Yes"];
		//Select house's price
		private _price = (missionConfigFile >> "RPF_housingModule" >> "Houses" >> (typeOf _house) >> "price") call BIS_fnc_getCfgData;		
		ctrlSetText[1003, str _price];

	};
};
