params ["_house","_unit"];

//Check whether _unit is inside _house

_dimensions = boundingBox _house; 
_WorldDimensionsMax = _house modelToWorld (_dimensions select 1); 
_WorldDimensionsMin = _house modelToWorld (_dimensions select 0); 
 
_unitmin = _WorldDimensionsMin select 0; 
_ymin = _WorldDimensionsMin select 1; 
_zmin = _WorldDimensionsMin select 2; 
 
_zmax = _WorldDimensionsMax select 2; 
_ymax = _WorldDimensionsMax select 1; 
_unitmax = _WorldDimensionsMax select 0; 
 
_unitposx = getpos _unit select 0; 
_unitposy = getpos _unit select 1; 
_unitposz = getpos _unit select 2; 
 

((((_unitposx > _unitmin) && (_unitposx < _unitmax)) && ((_unitposy > _ymin) && (_unitposy < _ymax)) && ((_unitposz > _zmin) && (_unitposz < _zmax))) &&  
(count(lineIntersectsObjs [(getposASL _unit), [(getposASL _unit select 0),(getposASL _unit select 1),((getposASL _unit select 2) + 20)]]) > 0));