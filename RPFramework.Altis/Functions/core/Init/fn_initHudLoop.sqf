/*
Author: Kerkkoh
First Edit: 15.3.2016
*/
disableSerialization;
for "_i" from 0 to 1 step 0 do {
	private _hud = uiNamespace getVariable ["HUD",displayNull];

	if(isNull _hud) then
	{
		2 cutRsc ["HUD","PLAIN"];
	};

	(_hud displayCtrl 1001) ctrlSetText (str (round (100 - ((damage player) * 100))));

	(_hud displayCtrl 1000) ctrlSetText ([(player getVariable "cash")] call BIS_fnc_numberText);

	(_hud displayCtrl 1002) ctrlSetText (str (player getVariable "hunger"));

	(_hud displayCtrl 1003) ctrlSetText (str (player getVariable "thirst"));

	sleep 0.5;
};
