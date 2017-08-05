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
_pricesArray = [[],[]];

_trackedItems = "true" configClasses (configFile >> "RPF_shopSystemServerModule" >> "trackedItems");
_mC = "RPF_shopSystemServerModule";
if (count _trackedItems isEqualTo 0) exitWith {}; //Our guy is not using this shit
{
    private _className = configName _x;
    private _buyPrice = (configFile >> _mC >> "trackedItems" >> _className >> "buyPrice") call BIS_fnc_getCfgData;
    private _sellPrice = (configFile >> _mC >> "trackedItems" >> _className >> "sellPrice") call BIS_fnc_getCfgData;
    (_pricesArray select 0) pushBack _className;    
    (_pricesArray select 1) pushBack [_buyPrice,_sellPrice];    
} forEach _trackedItems;

RPF_shopSystemPricesArray = _pricesArray;

publicVariable "RPF_shopSystemPricesArray"