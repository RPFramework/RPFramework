/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
Basic medical module supplied with RPFramework by default, but it can be disabled easily in case you want to use ACE or another medical system

RPF_UnconsciousTime is the time (in seconds) that the player has to wait until he can finally exit this cruel world unless the medics come and revive the player.
The unconscious time tries to make it a bit more challenging for the medic faction to get to their location in time.

*/
RPF_UnconsciousTime = 300;

[] call ClientModules_fnc_initBasicMedicalMenu;

player addEventHandler ["Killed",{
	_this spawn ClientModules_fnc_basicMedicalUnconscious;
}];