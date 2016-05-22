#define Function(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 0;

        /* Client functions */
        Function(Client_fnc_loadInventory,CLIENT)
        Function(Client_fnc_hintMP,CLIENT)
        Function(Client_fnc_addBank,CLIENT)
        Function(Client_fnc_addCash,CLIENT)
        Function(Client_fnc_cuffTarget,CLIENT)
        Function(Client_fnc_putInCarTarget,CLIENT)
        Function(Client_fnc_unCuffTarget,CLIENT)
        Function(ClientModules_fnc_basicMedicalMarker,CLIENT)
        Function(ClientModules_fnc_ticketGet,CLIENT)

        /* Server functions */
        Function(ServerModules_fnc_destroyPlantae,SERVER)
        Function(ServerModules_fnc_harvestPlantae,SERVER)
        Function(ServerModules_fnc_plantPlantae,SERVER)
        Function(ServerModules_fnc_addFishingnet,SERVER)
        Function(Server_fnc_initStats,SERVER)

        /* Anyone functions */
        Function(Client_fnc_playSound,ANYONE)
    };

    class Commands {
        mode = 1;
        jip = 0;

        Function(setFuel,ANYONE)
    };
};
