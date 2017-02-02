/*
Author: Kerkkoh
First Edit: 2.2.2017
*/

createDialog "processMinerals";

ctrlSetText [1000, format["You have %1 minerals", {_x == "RPF_Mining_Minerals"} count (items player)]];
