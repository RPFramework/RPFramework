/*
Author: Kerkkoh
Last Edit: 28.4.2016

This will confirm that the player's money hasn't been tampered with locally and if that's the case we'll log it and revert their money back.
Run this before transactions like buying items and stuff if you're concerned about cheaters and other screwups.
*/
params ["_player", "_localBank", "_localCash"];

private _fetch = [format["playerMoney:%1", _player getVariable "bankAccount"], 2] call ExternalS_fnc_ExtDBasync;

if (_localBank != ((_fetch select 0) select 1)) then {
	_player setVariable ["bank", (_fetch select 0) select 1, true];
	diag_log format["RPFramework error: %1 had a mismatch of money.", getPlayerUID _player];
};
if (_localCash != ((_fetch select 0) select 0)) then {
	_player setVariable ["cash", (_fetch select 0) select 0, true];
	diag_log format["RPFramework error: %1 had a mismatch of cash.", getPlayerUID _player];
};
