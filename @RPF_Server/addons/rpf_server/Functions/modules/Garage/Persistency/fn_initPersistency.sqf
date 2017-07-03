/*
    File : fn_initPersistency.sqf
    Author: Dardo
    Description:
    Check whether RPF_Vehicles is defined in the profileNameSpace
*/

//Check if RPF_Vehicles is defined
_isDefined = not(isNil{profileNameSpace getVariable "RPF_Vehicles"});

//Spawn vehicles(If any)
if (_isDefined) then {
  persistencyLoader = [] spawn ServerModules_fnc_loadPersistency;
};


//Launch savings handler
persistencyHandler = [] execFSM "RPF_Server\Functions\modules\Garage\Persistency\savePersistency.fsm";
