/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params ["_contacts"];

_contacts pushBack [name player, player getVariable "phone", -1];

lbClear 2100;
{
	_x params ["_name","_number","_id"];
	private _new = lbAdd [2100, _name];
	lbSetData [2100, _new, str [_number, _id]];
	true;
}count _contacts;

lbSetCurSel [2100, 0];

RPF_phoneContacts = _contacts;
