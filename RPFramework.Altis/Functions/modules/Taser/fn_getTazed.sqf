/*
Author: theflyingjets
*/
hint "Your Tazed!";

player switchmove "AinjPfalMstpSnonWnonDf_carried_fallwc";
disableUserInput true;
sleep 7;
hint "Untased";
player allowDamage true;
player setFatigue 1;
disableUserInput false;
player switchMove "";
