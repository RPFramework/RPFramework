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

class RPF_serverConfig {
	// 1 (true) if we use a loop to constantly save player data
	statSaveLoop = 1;
	// How often it should loop in seconds
	statSaveLoopTime = 300;
};

#include "Functions\modules\CONFIG\moduleConfigs.hpp"

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
		class Vehicle
		{
			file = "RPF_Server\Functions\core\Vehicle";
			class destroyedHandler {};
			class updateVehicle {};
			class insertVehicle {};
	        class deleteVehicle {};
	        class setupVehicle {};
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
			class initModules {};
			class firstLogin {};
		};
		#include "Functions\modules\CONFIG\moduleFunctions.hpp"
	};
};
