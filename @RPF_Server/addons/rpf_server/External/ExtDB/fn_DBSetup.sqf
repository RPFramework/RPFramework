/*
	File: fn_DBSetup.sqf
	Author: Conner 'Optix'

	Description:
    - SetsUp DB, From the server.
  Purpose:
    - Removes Config calling causing issues on some clients.

	SendParameters:
		0: STRING Database name
		1: STRING Protocol to enable
		2: STRING Optional Protocol Options i.e db_conf name for DB_CUSTOM
*/

scriptName "fn_DBSetup";
#define __filename "fn_DBSetup.sqf"

["rpframework", "SQL_CUSTOM", "rpframework.ini"] spawn ExternalS_fnc_ExtDBinit;
