![alt text](http://i.imgur.com/lXnetLo.png "Logo")
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
	1. Navigate to folder **bin*** and move **@RPF_Server** and **@RPFramework** to your server's main Arma 3 Folder
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
6. Navigate to **RPFramework.yourMap\Functions\modules\CONFIG** and open up fn_initModules.sqf, moduleDialogs.hpp, moduleFunctions.hpp, moduleRscTitles.hpp, moduleSounds.hpp
7. In fn_initModules.sqf add an element to array called _cModules in format `"ClientModules_fnc_initMODULE"`, remember that the last array element doesn't need a comma after it but every element before it does
8. In moduleDialogs.hpp, moduleFunctions.hpp, moduleRscTitles.hpp and moduleSounds.hpp add a new line in format `#include "..\MODULE\CURRENTFILESUFFIX.hpp"` where CURRENTFILESUFFIX is the "suffix" of the current file. For moduleFunctions.hpp the CURRENTFILESUFFIX would be Functions.
