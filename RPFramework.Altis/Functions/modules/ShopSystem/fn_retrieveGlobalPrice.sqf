/*
    File : fn_retrieveGlobalPrice.sqf
    Module: ShopSystem
    Author: Dardo
    Description:
    Analyzes the passed class array and check if the price is specified.
    Otherwise grab the one from the Global Prices Array , or throw an exception if the item is not in either of them.
			
    Arguments:
        1 - Class Array <Array>
        2 - Buy or Sell price? <Binary>
*/

params [["_classArray",[],[[]]],["_BuySell",0,[0]]];

scopeName "Main";
private _className = _classArray select 0;
private _grabPrice = {
    private "_price";
    //The price is specified on the config,use it
    _price = _classArray select 1;
    _price;
};

//Check immediately if RPF_shopSystemPricesArray is Nil
if (count _classArray > 1 && isNil "RPF_shopSystemPricesArray") then {
    private _price = call _grabPrice;
    if (isNil "_price") then {
        diag_log format ["RPFramework error: The item %1 has not a price set in the config. Report this error",_className];
        0 breakOut "Main";
    };
    _price breakOut "Main";
};

private _trackedItems = RPF_shopSystemPricesArray select 0;
private _buysellPrices = RPF_shopSystemPricesArray select 1;
private _globalIndex = _trackedItems find _className;

if (_globalIndex >= 0) then {
    private "_price";
    //We have found our classname in the global array
    private _pricesPack = _buysellPrices select _globalIndex;
    if (_BuySell isEqualTo 0) then {
        // We want the buy price
        _price = _pricesPack select 0;
    } else {
        // We want the sell price
        _price = _pricesPack select 1;
    };
    _price breakOut "Main";
} else {
    if (!isNil {call _grabPrice}) then {
        private _price = call _grabPrice;
        _price breakOut "Main";
    } else {
        //This means that the item is not present in the global prices array
        diag_log format ["RPFramework error: The item %1 has not a price in neither the config or the Global Prices Array. Report this error",_className];
        0 breakOut "Main";
    };
};