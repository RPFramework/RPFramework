/*
    File : fn_initPricesArray.sqf
    Module: ShopSystem
    Author: Dardo
    Description:
    Initializes the Global Prices Array
    Structure
    [
    [ "Item1"                        , "Item2"],
    [ [buyPriceItem1,SellPriceItem1] , [50,20] ]
    ]
*/
private["_pricesArray", "_cfg", "_trackedItems"];

_pricesArray = [[],[]];

_cfg = configFile >> "RPF_shopSystemServerModule";

_trackedItems = "true" configClasses (_cfg >> "trackedItems");

if (count _trackedItems isEqualTo 0) exitWith {}; //Our guy is not using this shit

{
    (_pricesArray select 0) pushBack (configName _x);
    (_pricesArray select 1) pushBack [getNumber(_x >> "buyPrice"), getNumber(_x >> "sellPrice")];
} forEach _trackedItems;

RPF_shopSystemPricesArray = _pricesArray;

publicVariable "RPF_shopSystemPricesArray"
