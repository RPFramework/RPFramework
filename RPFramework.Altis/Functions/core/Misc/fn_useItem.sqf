/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
private["_dataS", "_data", "_item", "_success"];

if ((lbCurSel 1500) isEqualTo -1) exitWith {};
_dataS = lbData [1500, lbCurSel 1500];
if (isNil "_dataS") exitWith {};
_data = parseSimpleArray _dataS;
_item = _data select 0;

_success = true;

{
	if ((_x select 0) isEqualTo _item) then {
		if ((_x select 2) in ((missionConfigFile >> "RPF_Config" >> "usableWhitelist") call BIS_fnc_getCfgData)) then {
			(_x select 1) call (missionNamespace getVariable format ["%1", (_x select 2)]);
			player removeItem _item;
		} else {
			diag_log format ["RPFramework error: Function %1 not whitelisted (Usables)",(_x select 2)];
			_success = false;
		};
	};
	true;
}count RPF_Usables;

if (!_success) exitWith {};

lbClear 1500;

{
	private _y = _x;
	{
		if ((_y select 0) isEqualTo (_x select 0)) then {
			_item = lbAdd [1500, format["%1 x %2", [_y select 0]call Client_fnc_getWeaponName, _y select 1]];
			lbSetData [1500, _item, str _y];
		};
		true;
	}count RPF_Usables;
	true;
}count ([items player]call Client_fnc_sortArray);

lbSortByValue ((findDisplay 1019) displayCtrl 1500);
