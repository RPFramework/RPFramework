/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
params ["_ct"];
private ["_itemarray", "_iFinal", "_mFinal"];

_itemarray = items _ct;
_itemarray append (weapons _ct);
if (RPF_Holstered isEqualTo 1) then {
	_itemarray pushBack (RPF_Holster select 0);
};

_iFinal	= "";
{
	_iFinal = format ["%1%2 x %3<br/>", _iFinal, [_x select 0]call Client_fnc_getWeaponName, _x select 1];
	true;
}count ([_itemarray]call Client_fnc_sortArray);

_mFinal = "";
{
	_mFinal = format ["%1%2 x %3<br/>", _mFinal, [_x select 0]call Client_fnc_getMagazineName, _x select 1];
	true;
}count ([magazines _ct]call Client_fnc_sortArray);

hint (parseText format [(localize "STR_RPF_CORE_POLICE_SEARCHEDHAS"),format["%1%2", _iFinal, _mFinal]]);
