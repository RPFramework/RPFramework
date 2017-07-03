/*
    File : fn_updateCars.sqf
    Author: Dardo
    Description:
    Update RPF_Cars array
    Arguments:
        1- Object or Array to add to RPF_Cars 
        2- Mode: "Remove","Add" 
*/
params [["_updateVar",[],[[],ObjNull]],["_mode","add",[""]]];



if (typeName _updateVar == "ARRAY" && toLower(_mode) isEqualTo "add") then {
  RPF_Cars = RPF_Cars + _updateVar;  
};
if (typeName _updateVar == "OBJECT" && toLower(_mode) isEqualTo "add") then {
  RPF_Cars pushBack _updateVar; 
};

if (typeName _updateVar == "ARRAY" && toLower(_mode) isEqualTo "remove") then {
  RPF_Cars = RPF_Cars - _updateVar;  
};
if (typeName _updateVar == "OBJECT" && toLower(_mode) isEqualTo "remove") then {
  RPF_Cars = RPF_Cars -  [_updateVar]; 
};






