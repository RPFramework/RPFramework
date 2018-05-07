/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_player", "_name", "_number"];

[0, format ["insertPhoneContact:%1:%2:%3", getPlayerUID _player, _name, _number]] call ExternalS_fnc_ExtDBquery;
