/*
Author: Kerkkoh
First Edit: 25.12.2016

Additional Information:
Basic medical module supplied with RPFramework by default, but it can be disabled easily in case you want to use ACE or another medical system

*/

player addEventHandler ["Killed",{
	_this spawn ClientModules_fnc_basicMedicalUnconscious;
}];