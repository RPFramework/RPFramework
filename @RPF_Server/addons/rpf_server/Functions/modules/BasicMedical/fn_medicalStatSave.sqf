/*
Author: Kerkkoh
Last Edit: 15.4.2018
*/

params ["_player", "_position"];

[0, format ["updatePlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", [[], [], [], ["ItemMap","ItemCompass"]], ["U_C_Poloshirt_blue", "", "", ""], [], 0, _player getVariable "bank", _position, 0, 0, getPlayerUID _player]] call ExternalS_fnc_ExtDBquery;
