class CfgPatches
{
	class RPF_Server
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

// You need to set your DB name in rpf_server\External\ExtDB\fn_DBSetup.sqf on line 19. It is rpframework by default.

class RPF_serverConfig {
	// 1 (true) if we use a loop to constantly save player data, 0 to only save on disconnect
	// Please set this to 0 or change the looping time on high traffic servers to avoid shitty performance
	statSaveLoop = 1;
	// How often it should loop in seconds
	statSaveLoopTime = 300;
};

#include "Functions\modules\CONFIG\moduleConfigs.hpp"
#include "Functions\modules\CONFIG\moduleInit.hpp"

class CfgFunctions
{
	class Server
	{
		class Save
		{
			file = "RPF_Server\Functions\core\Save";
			class handleDisconnect {};
            class initStats {};
            class statSave {};
            class statSaveLoop {};
            class phoneNumber {};
		};
		class Money
		{
			file = "RPF_Server\Functions\core\Money";
			class replicateMoney {};
			class confirmMoney {};
		};
		class Keys
		{
			file = "RPF_Server\Functions\core\Keys";
			class deleteKey {};
			class deleteKeys {};
			class fetchKeys {};
			class generateKey {};
			class insertKey {};
			class killedHandlerKeys {};
		};
		class Vehicles
		{
			file = "RPF_Server\Functions\core\Vehicles";
			class initVehiclesKilledHandlers {preInit=1};
			class setupVehiclesKilledHandlers {};
		};
		class Init
		{
			file = "RPF_Server\Functions\core\Init";
			class initModules {};
		};
		class Interaction
		{
			file = "RPF_Server\Functions\core\Interaction";
			class initInteractions {};
			class addSubInteractions {};
		};
	};
	class ExternalS
	{
		class ExtDB
		{
			file = "RPF_Server\External\ExtDB";
			class ExtDBasync {};
			class ExtDBinit {};
			class ExtDBstrip {};
			class ExtDBquery {};
			class DBSetup {preinit=1};
		};
	};
	class ServerModules
	{
		class Config
		{
			file = "RPF_Server\Functions\modules\CONFIG";
			class firstLogin {};
		};
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};
