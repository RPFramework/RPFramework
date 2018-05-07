/*
Author: Kerkkoh
First Edit: 26.12.2016

Info: This is a mess of a function. Just like, don't touch it, and it should, SHOULD, work.
*/
params ["_house", "_player"];
private["_amount", "_found", "_fetch", "_finalAccount", "_qbankbalance"];

_amount = _house getVariable "price";

_fetch = [format ["houseOwnerBankAccount:%1", _house getVariable "owner"], 2] call ExternalS_fnc_ExtDBasync;
_finalAccount = (_fetch select 0) select 0;

_found = objNull;
{
	if ((_x getVariable "bankAccount") isEqualTo _finalAccount) exitWith {
		_found = _x;
	};
	true;
}count allPlayers;

if (isNull _found) then {
	_qbankbalance = [format ["playerBankBalance:%1", _finalAccount], 2] call ExternalS_fnc_ExtDBasync;

	[0, format ["updatePlayerBalance:%1:%2", ((_qbankbalance select 0) select 0) + _amount, _finalAccount]] call ExternalS_fnc_ExtDBquery;
} else {
	[_found, _found getVariable "bankAccount", _amount, 1, 0]call Server_fnc_replicateMoney;
	["STR_RPF_HOUSING_RECEIVEDMONEY"] remoteExecCall ["Client_fnc_hintMP", _found];
};

[_player, _player getVariable "bankAccount", _amount, 0, 0]call Server_fnc_replicateMoney;

[_house getVariable "id", getPlayerUID _player, -1]call ServerModules_fnc_updateHouse;

_house setVariable ["owner", getPlayerUID _player, true];
_house setVariable ["price", nil, true];

["STR_RPF_HOUSING_WELCOME"] remoteExecCall ["Client_fnc_hintMP", _player];
