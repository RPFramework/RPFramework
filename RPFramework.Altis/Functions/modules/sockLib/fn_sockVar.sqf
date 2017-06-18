if (isNil "sockVars") then { sockVars = []; publicVariable "sockVars"};
private _plate;

for "_i" from 0 to 1 step 0 do {
    _plate = floor random 1000000;   //Random number
    if not(_plate in sockVars) exitWith {}; //Isn't the var in the global array? That's good
};
private _varName = format ["sock_%1",_plate]; //Random var , e.g: sock_122143

sockVars pushBack _varName; //Pushback the varname into a global array (We don't want things to overlap)
publicVariable "sockVars";

[_varName] spawn {
    scriptName "sockPlate_Cleanup";
    sleep 20;
    private _idx = sockVars find _varName;
    private _code = format["%1 = nil;",_this select 0]; //Cleanup
    sockVars deleteAt _idx;
    publicVariable "sockVars";
};

_varName;