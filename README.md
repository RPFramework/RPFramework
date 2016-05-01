![alt text](http://i.imgur.com/8CJibJN.png "Logo")
## Version 1.0.0 (STABLE)
# RPFramework
Modular roleplaying mission framework for Arma 3. For license, check the LICENSE.txt file. Please note that this is by no means a mission that you can start playing on with your friends. This is a framework that you can build your own mission on. You can join the RPFramework Team simply by forking the repository on github and starting to make changes. Every contribution is appreciated.


## Benefits of a modular approach
So why should you hop on board with the modular approach to this framework? This modular approach isn't a good approach for a normal mission but for a framework it has been proven effective. Think of Arma 3 as a framework and mods as modules; modules can be easily enabled and disabled by the user and, of course, installed easily without messing with the core files of the game. If you got the example you might already think it's a good approach for this framework as proven by Arma. In the RPFramework installing modules isn't as easy as in Arma 3, but it gets pretty close. I have seen the attempts of modifying missions like Altis Life that people have tried to use as a framework and it gets really messy, but this way you keep your modules and original files from the core separated.

## RPFramework Team
* **Kerkko(h)**
* **Elephxnt**
* **You**? Just fork the project and contribute, everybody is allowed in!

## Installing RPFramework
1. Download all the files from github or a mirror if available
2. Read documents called **LICENSE.txt** and **COPYING.txt**
3. Setting up the database
	1. Navigate to folder **External Files**, take out **rpframework.sql** and import it into a MySQL database
	2. Download extDB2 http://www.armaholic.com/page.php?id=26096 and set it up on your server
	3. Replace **extdb-conf.ini** in **@ExtDB2** with the same file provided in folder **External Files** and find line **74** where you should change the mysql details to correspond to your database's.
	4. Drag and drop the **extDB** folder from **External Files** to **@ExtDB2** and choose to replace everything
4. Setting up the mission and server files for RPFramework
	1. Navigate to folder **bin** and move **@RPF_Server** and **@RPFramework** to your server's main Arma 3 Folder
	2. Move **RPFramework.Altis** to your server's MPMissions folder
5. Distribute @RPFramework or the addons inside it to your players
6. **ADDITIONAL INFO: Modifying RPFramework and porting it to another map:**
	1. Change mission's map suffix to .yourMap
	2. Navigate to **RPFramework.yourMap\Functions\core\Init** and open up **fn_miscVariables.sqf**. Here you can change item classes, usable items, vehicle classes, keybinds and physical items that you can pick up.
	3. Glance through every module's init scripts in **RPF_Server\server\modules** and **RPFramework.yourMap\Functions\modules** and change everything that is needed.
	4. Note for people using a default module called **ShopSystem**: Please edit shop positions to correspond to places on your new map in **RPF_Server\server\modules\fn_initShops.sqf**!!

## Installing Modules (General guidelines)
1. **These are general guidelines, you should read the readme provided by the module you are installing**
2. Download all files for the module you are installing and **read the module's readme and license!!**
3. Setting up the database
	1. Refer to the module's readme
4. Setting up addons
	1. Module should have provided a **@RPFramework\Addons** folder where you have addons that you need to distribute to your players
5. Navigate to **RPFramework.yourMap\Functions\modules** and place the module's folder there
6. Navigate to **RPFramework.yourMap\Functions\modules\CONFIG** and open up **fn_initModules.sqf**, **moduleDialogs.hpp**, **moduleFunctions.hpp**, **moduleRscTitles.hpp**, **moduleSounds.hpp**
7. In **fn_initModules.sqf** add an element to array called **_cModules** in format `"ClientModules_fnc_initMODULE"`, remember that the last array element doesn't need a comma after it but every element before it does
8. In **moduleDialogs.hpp**, **moduleFunctions.hpp**, **moduleRscTitles.hpp** and **moduleSounds.hpp** add a new line in format `#include "..\MODULE\CURRENTFILESUFFIX.hpp"` where **CURRENTFILESUFFIX** is the "suffix" of the current file. For **moduleFunctions.hpp** the **CURRENTFILESUFFIX** would be **Functions**.

## Module documentation for 1.0.0

### General
Modules are additional script packages that can depend on the core of RPFramework, but the core never depends on a module. Modules can overwrite settings, add functions, dialogs, sounds and much more. Modules can be distributed under different licenses than the core of RPFramework.
The core is a bunch of basic functionality that creates a fairly limited game experience and loads in modules.

RPFramework has some modules by default, that have been made solely for the purpose of showing module creators how their modules can change the framework. These default modules also make the mission somewhat playable.

### Creating a module
Modules add features to RPFramework. If you are a scripter, you already know how to make modules because they are just bunch of functions, dialogs and sounds for the mission and server. They aren't anything special, but they just make things a bit more modular and easier for the user of the framework.

You can add any functions, sounds, dialogs, titles and database functionalty. It is also very important that you follow the correct module structure and init function name.

When finally releasing your module, please include a readme with proper installing instructions that every user can understand. If you want to release your module under the same license as RPFramework your module can be included in the following RPFramework releases and you will be consired a contributor to the team.

Module structure on mission's side
```
| modules
|_ YourModule
|__ fn_initYourModule.sqf
|__ fn_function1YourModule.sqf
|__ fn_function2YourModule.sqf
|__ Functions.hpp
|__ Dialogs.hpp
|__ RscDialogs.hpp
|__ Sounds.hpp
```
You should include all of these .hpp files in your module so that the user doesn't need to check if your module needs to be included into moduleSounds.hpp and so on.

Module structure example on server's side
```
| modules
|_ YourModule
|__ fn_initYourModule.sqf
|__ fn_serversideFunction1YourModule.sqf
|__ Functions.hpp
```

You can check out the example module or any other module included with RPFramework for more information on structuring

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
		[" vehicle player in RPF_PoliceVehicles ", "player getVariable 'cop' > 0"],
		["Police DB", "[]call ClientModules_fnc_policeComputer"]
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
Check the example module for an example!

Now important step is making sure to include all your functions in the Functions.hpp which will end up in CfgFunctions.

**Proper way of doing the CfgFunctions class:**

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

You can add sounds, dialogs and titles in your Sounds.hpp, Dialogs.hpp and RscTitles.hpp. You can head over to BI wiki to find out more about how these configs work. Sounds and RscTitles will be included inside CfgSounds and RscTitles but Dialogs.hpp will be included straight in to description.ext so this allows you to define other things in to description.ext inside Dialogs.hpp.

RPFramework uses ExtDB2 and its SQL_CUSTOM_V2 protocol to interact with a MySQL database. You can read about this extension and protocol over at https://github.com/Torndeco/extDB2 (Apparently the developer quit developing and took the documentation down..) and include the prepared statements that your module needs with your package.
Here is an example of a prepared statement you could include with your module. You should use `[_query, _mode] call ExternalS_fnc_ExtDBasync;` for database calls, but RPFramework does indeed offer an alternative which does the same thing as ExternalS_fnc_ExtDBasync, it's called with `[_mode, _query] call ExternalS_fnc_ExtDBquery;`.
```
[gangInfo]
SQL1_1 = SELECT id, owner, name, maxmembers, bank, members FROM gangs WHERE active='1' AND members LIKE ?;
SQL1_INPUTS = 1

Number of Inputs = 1  
OUTPUT = 1, 2-String, 3-String, 4, 5, 6
```
