/*
    File : fn_updateItemPrice.sqf
    Module: ShopSystem
    Author: Dardo
    Description:
    Update buy/sell price of the passed itemClass by updating it in the Global Prices Array

    Arguments:
        1 - Item Classname <String>
        2 - New Price <Int>
        3 - Buy or Sell price? <Binary> <0 - Buy | 1 - Sell>
*/

params [["_itemClass","",[""]],["_newPrice",0,[0]],["_buySell",0,[0]]];

scopeName "Main";
waitUntil { uiSleep 1; isNil "shopSystem_priceUpdate";};
shopSystem_priceUpdate = true;

private _globalIndex = (RPF_shopSystemPricesArray select 0) find _itemClass;
if (_globalIndex < 0) then {
    diag_log format ["RPFramework error: The price of the item %1 could not be updated because the item is not present in the Global Prices Array",_itemClass];
    breakOut "Main"
};
if (_buySell isEqualTo 0) then {
    //We are updating buy price
    (RPF_shopSystemPricesArray select 1 select _globalIndex) set [0,_newPrice];
} else {
     //We are updating sell price
    (RPF_shopSystemPricesArray select 1 select _globalIndex) set [1,_newPrice];
};

publicVariable "RPF_shopSystemPricesArray";

uiSleep 1;

shopSystem_priceUpdate = nil;
