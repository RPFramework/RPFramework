/*
Author: Kerkkoh
First Edit: 17.4.2016
*/
for "_i" from 0 to 1 step 0 do
{
	uiSleep 180;
	{
		private _fishingNet = objectFromNetId _x;
		if (!(isNull _fishingNet)) then {
			if (underwater _fishingNet) then {
				_fishingNet addItemCargoGlobal ["RPF_Items_Salema", (floor random 2) + 1];
			};
		} else {
			[_x, false]call ServerModules_fnc_manageFishingnet;
		};
		true;
	}count RPF_fishingNets;
};
