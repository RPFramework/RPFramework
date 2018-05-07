/*
	File: fn_strip.sqf
	Author: Declan Ireland
	Description:
		Strips : from String
			Needed since extDB2 uses : as seperator character
			i.e Playernames
			Uhis is not needed if you have enabled extDB2 RCon + kicking for Bad Playernames
			Or have a 3rd party Rcon Application that will kick players for have : in thier playername
			But if you allow saving of Player Input i.e messages etc you will still need to parse them for :
	Parameters:
		0: ClientID
*/
params["_string"];
private["_array", "_stripThese"];

_array = toArray _string;
// /\|;{}<>'`
_stripThese = [58, 47, 92, 124, 59, 123, 125, 60, 62, 96, 39];
{
	if (_x in _stripThese) then {
		_array set[_forEachIndex, -1];
	};
}foreach _array;
_array = _array - [-1];
_string = toString _array;
_string
