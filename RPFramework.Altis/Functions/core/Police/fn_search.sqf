/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
params ["_ct"];

_i = [];
{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_iString = format ["%1 x %2<br/>", _name, _x select 1];
	_i pushBack _iString;
}forEach ([items _ct]call Client_fnc_sortArray);
_iFinal = _i joinString "";

_m = [];
{
	_name = [_x select 0]call Client_fnc_getMagazineName;
	_mString = format ["%1 x %2<br/>", _name, _x select 1];
	_m pushBack _mString;
}forEach ([magazines _ct]call Client_fnc_sortArray);
_mFinal = _m joinString "";

_w = [];
{
	_name = [_x select 0]call Client_fnc_getWeaponName;
	_wString = format ["%1 x %2<br/>", _name, _x select 1];
	_w pushBack _wString;
}forEach ([weapons _ct]call Client_fnc_sortArray);
_wFinal = _w joinString "";

hint (parseText (format ["Searched player has:<br/>%1", ([_iFinal, _mFinal, _wFinal] joinString "")]));