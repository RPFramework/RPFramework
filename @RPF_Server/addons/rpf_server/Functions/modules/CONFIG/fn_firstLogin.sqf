/*
Author: Kerkkoh
First Edit: 23.12.2016

Additional Information:

Here you can add functions to be executed when the player logs into the server for the first time.

Only player is currently passed to every function so remember to include params["_player"]; in your function that you add here.
*/
params["_player"];

private _firstTimeFunctions = [
	"ServerModules_fnc_exampleNewPlayer"
];

{
	[_player] call (call compile _x);
	true;
}count _firstTimeFunctions;
