# RPFramework


[![DISCORD](https://img.shields.io/discord/256904748509298688.svg)](https://discord.gg/JvRRuTm)
[![TRELLO](https://img.shields.io/badge/Trello-View-0079BF.svg)](https://trello.com/b/eqwxQ4hr/rpframework)
[![Website](https://img.shields.io/website-up-down-green-red/https/rpframework.github.io.svg)](https://rpframework.github.io/)
[![GitHub release](https://img.shields.io/github/release/RPFramework/RPFramework.svg)](https://github.com/RPFramework/RPFramework/releases)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/RPFramework/RPFramework/master/LICENSE.txt)

## Discontinuation Notice & Wartorn announcement

It warms my heart to see how RPFramework has gained popularity within Arma 3 RP communities and beyond. I am truly grateful for the opportunity to have worked on this project alongside such amazing contributors. The extensible plugin system is still my favorite part of the framework. When beginning development, this project truly filled a void in the Arma 3 framework world. I grew frustrated at trying to remove, change, or add features to existing projects and it was hours and hours of coding. RPFramework solved that issue for many developers. I would have loved to continue development, but I went to university in 2018, and I simply no longer had time and my interest had shifted to DayZ modding like developing [Nyheim](https://github.com/kerkkoh/nyheim). That being said, RPFramework should be fully functional if you still wish to use it in Arma 3.

Since then, I've been deeply engrossed in Arma Reforger, specifically its Enfusion Engine, as I've developed my new project named [WARTORN](https://wartorn.io/). The development process for WARTORN mirrors that of RPFramework. Initially, we'll work on it privately, and subsequently, we will release it to the public on the [WARTORN GitHub](https://github.com/WAR-TORN) under the MIT License. WARTORN not only serves as the spiritual successor to RPFramework but also introduces a novel game mode for Arma. Its source code will be freely available, and it will emphasize RP elements. We will be unveiling more about WARTORN on the [WARTORN Discord](https://discord.gg/GjBCxWfmc6), where we'll also launch the first WARTORN servers, all focused on roleplay and player interaction.

Sincerely, Lumi (@kerkkoh)

---

RPFramework is a modular roleplaying mission framework for Arma 3. For the license, check the LICENSE.txt file. Please note that this is by no means a mission that you can start playing on with your friends. This is a framework that you can build your own mission on. You can join the RPFramework Team simply by forking the repository on Git Hub and starting to make changes. Every contribution is appreciated. You can find new modules and submit your own ones on our [website](https://rpframework.github.io/).


## Benefits of a modular approach
So why should you hop on board with the modular approach to this framework? This modular approach isn't a good approach for a normal mission but for a framework it has been proven effective. Think of Arma 3 as a framework and mods as modules; modules can be easily enabled and disabled by the user and, of course, installed easily without messing with the core files of the game. If you got the example you might already think it's a good approach for this framework as proven by Arma. In the RPFramework installing modules isn't as easy as in Arma 3, but it gets pretty close. I have seen the attempts of modifying missions like Altis Life that people have tried to use as a framework and it gets really messy, but this way you keep your modules and original files from the core separated.

## RPFramework Team // Contributors
* **Kerkko(h)**
* **Elephxnt**
* **NiiRoZz**
* **InnovativeStudios / J. Schmidt**
* **TheFlyingJets**
* **Optix**
* **Dardo**
* **chick69**
* **devcjax50**
* **HoST**
* **Heisen**
* **You**? Just fork the project and contribute, everybody is allowed in!

## Installing RPFramework
1. Download all the files from GitHub or a mirror if available
2. Read documents called **LICENSE.txt**, **extDB3-License.txt** and **extDB3-License-FLOSS-Exception.txt**
3. Setting up the database
	1. Navigate to folder **SQL**, take out **rpframework.sql** and import it into a MySQL database. You can use programs like MAMP to host a MySQL server.
	2. **IMPORTANT!!** If you choose another name for your database than rpframework, **you need to modify rpf_server\External\ExtDB\fn_DBSetup.sqf**. You need to change "rpframework" to "yourDB" on line 19.
	3. Install Visual Studio C++ Redistributable 2015 32bit + 64bit version https://www.microsoft.com/en-us/download/details.aspx?id=48145 (Required for ExtDB3)
    4. If you have problems with the database, try using the root user, but in the long run, it isn't the best idea ever.
4. Setting up the mission and server files for RPFramework and ExtDB3
	1. Drag and drop everything from the **bin** folder into your Arma 3 folder (Or the folder in which you have all your mods and the MPMissions folder)
    2. The included ExtDB3 version will be outdated and you can get the most recent one from https://bitbucket.org/torndeco/extdb3/downloads/
5. Distribute @RPFramework or the addons inside it to your players
6. Testing RPFramework
    1. Enable @RPFramework, @RPF_Server and @ExtDB3 on your server. If you're using TADST, your parameters should look like this ` -port=2302 "-config=armaLocation\Arma 3\TADST\rpf\TADST_config.cfg" "-cfg=armaLocation\Arma 3\TADST\rpf\TADST_basic.cfg" "-profiles=armaLocation\Arma 3\TADST\rpf" -name=rpf -pid=pid.log -ranking=ranking.log "-mod=@extDB3;@RPF_Server;@RPFramework"`
	2. You should use the arma3server_x64.exe to run the server
    3. Enable @RPFramework in Arma 3 mods, start up the server, and try joining it
    4. If something is wrong, head over to our [discord server](https://discord.gg/JvRRuTm) and ask for support
7. **ADDITIONAL INFO: Modifying RPFramework and porting it to another map:**
	1. Change the mission's map suffix to .yourMap
	2. Go through RPF_Server/Functions/modules and look at each module's config file and change the locations of the markers and shops for example to match the new map. **If you're using ShopSystem/Mining/Delivery modules, remember to change the shop and marker locations in their config on the server side!** You can also do general configuration in the RPFramework server & mission config files.
8. You can localize marker names etc. in @RPF_Server\addons\rpf_server\stringtable.xml
	
## Installing Modules
* Visit our [website](https://rpframework.github.io/) to get more modules or submit your own!
https://github.com/RPFramework/RPFramework/wiki/Installing-modules

## Module documentation
https://github.com/RPFramework/RPFramework/wiki/Module-Documentation

## Wiki
https://github.com/RPFramework/RPFramework/wiki/
