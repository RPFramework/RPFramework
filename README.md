## Version 1.0.0 (STABLE)
# RPFramework
Modular roleplaying mission framework for Arma 3. For license, check the LICENSE.txt file.


## Benefits of a modular approach
So why should you hop on board with the modular approach to this framework? 
This modular approach isn't a good approach for a normal mission but for a framework it has been proven effective. Think of Arma 3 as a framework and mods as modules; modules can be easily enabled and disabled by the user and, of course, installed easily without messing with the core files of the game. If you got the example you might already think it's a good approach for this framework as proven by Arma. In the RPFramework installing modules isn't as easy as in Arma 3, but it gets pretty close. I have seen the attempts of modifying missions like Altis Life that people have tried to use as a framework and it gets really messy, but this way you keep your modules and original files from the core separated.

## RPFramework Team
Kerkko(h)
Elephxnt

You? Just fork the project and contribute, everybody is allowed in!

## Module documentation for 0.0.1

### General
Modules are additional script packages that might depend on the core modules, but the core never depends on the module. Modules can overwrite settings, add functionality, add interaction menu items/options and much more. Modules can be distributed under different licenses than the core of RPFramework.
The core is a bunch of basic functionality that creates a fairly limited game experience and loads in modules.

Modules are divided into "Default Modules" and "Additional Modules". Default modules add default functionality to the framework, but can be easily disabled if one wants to change their functionality by an additional module. The difference between core and Default Modules is that core is standalone, but Default Modules depend on core and default modules can, of course, be disabled and it won't break the core.

### Installing modules
Installing additional modules should be instructed by the module creator as different modules might have different features but there is a general instruction:
1. Move module's files to mission>Functions>modules and RPF_Server>server>modules
2. Add module's function class into mission>Functions.hpp in the class ClientModules and into RPF_Server>config.cpp in the class ServerModules
3. Open up mission>Functions>core>init>fn_initModules.sqf and RPF_server>server>core>init>fn_initModules.sqf and in the mission's file add your module's init function to the additional modules array in format "ClientModule_fnc_initNameOfYourModule" and in the server's file add your module's init function to the additional modules array in format "ServerModule_fnc_initNameOfYourModule".
4. Your module should be installed properly.

### Creating a module
Modules add features to the RPFramework. If you are a scripter, you already know how to make modules because they are just bunch of functions to the mission and server.

Modules aren't anything special, but they just make things a bit more modular and easier for the user of the framework.

You can add any functions, sounds and dialogs if you just make sure to instruct the user of your module to add them properly. It is also very important that you follow the correct module structure and init function name.

Module structure example on mission's side
```
| modules
|_ YourModule
|__ fn_initYourModule.sqf
|__ fn_function1YourModule.sqf
|__ fn_function2YourModule.sqf
```

Module structure example on server's side
```
| modules
|_ YourModule
|__ fn_initYourModule.sqf
|__ fn_serversideFunction1YourModule.sqf
```

You can check out the example module for more information on structuring

You can also add actions to the interaction menu in any of your scripts, but it should be done in your init file or by calling another function initializing menu actions first in your init.
Interaction menu used is RPFramework's internal interaction system. Adding interaction menu items happens by adding an array in correct format to the master array of RPFramework's interaction system called RPF_InteractionMenuItems. In this array format first array inside the array has conditions that all have to be true for the menu items to show up. Second array inside the array has the text of the menu button first and then the code action being run when you click the interaction button.
Example of adding menu actions.
```javascript
_menuItems = [
	[
		["condition1", "condition2"],
		["Button text", "code action"]
	],
	[
		["cursorTarget isKindOf 'Man'", "!alive cursorTarget"],
		["Try to wake up the dead guy", "hint 'Good try, but you can not wake up the dead'"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
```
Check the example module for a good example!

Now important step is making sure to include a class with your functions that will be added to the mission's Functions.hpp or server's config.cpp.
Proper way of doing the CfgFunctions class:
Basically, your classes correspond to the filenames in your module's folder without the fn_ part and .sqf ending. For the CfgFunctions part in the mission, you will have a different path than the server to your module folder so make sure you notice this when you write the file line of your class.
RPFramework's system has a moduleFunctions.hpp inside mission/server > Functions > modules > CONFIG where the user of RPFramework will include your module's own Functions.hpp. So when you are making a module, you have to put all your functions into your module's folder in a file called Functions.hpp. By using this kind of structure and strict naming, we hope to make it easier for the user to add modules to RPFramework.

This would go to mission > Functions > modules > YourModule > Functions.hpp
```C++
class YourModule {
  file = "Functions\modules\YourModule";
  class initYourModule {};
  class function1YourModule {};
  class function2YourModule {};
};
```

This one would go to RPF_server > server > modules > YourModule > Functions.hpp
```C++
class YourModule {
  file = "RPF_server\server\modules\YourModule";
  class initYourModule {};
  class serversideFunction1YourModule {};
};
```

RPFramework uses ExtDB2 and its SQL_CUSTOM_V2 protocol to interact with a MySQL database. You can read about this extension and protocol over at https://github.com/Torndeco/extDB2 and include the prepared statements that your module needs with your package.
Here is an example of a prepared statement you could include with your module. You should use `[_query, _mode] call ExternalS_fnc_ExtDBasync;` for database calls, but RPFramework does indeed offer an alternative which does the same thing as ExternalS_fnc_ExtDBasync, it's called with `[_mode, _query] call ExternalS_fnc_ExtDBquery;`.
```
[gangInfo]
SQL1_1 = SELECT id, owner, name, maxmembers, bank, members FROM gangs WHERE active='1' AND members LIKE ?;
SQL1_INPUTS = 1

Number of Inputs = 1  
OUTPUT = 1, 2-String, 3-String, 4, 5, 6
```
