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

class CfgFunctions 
{
	class Server
	{
		class Save
		{
			file = "RPF_Server\server\core\Save";
			class handleDisconnect {};
            class initStats {};
            class statSave {};
            class statSaveLoop {};
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
		};
	};
	class ServerModules
	{
		class Config
		{
			file = "RPF_Server\server\modules\CONFIG";
			class initModules {};
		};
		#include "server\modules\CONFIG\moduleFunctions.hpp"
	};
};