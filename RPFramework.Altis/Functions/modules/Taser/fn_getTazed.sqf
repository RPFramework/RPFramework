/*
Author: theflyingjets
*/
  hint "Your Tazed!";

  [] spawn {player switchmove "AinjPfalMstpSnonWnonDf_carried_fallwc"; disableUserInput true;};
  sleep 1;
  [] spawn {sleep 5; hint "Untased"; player setFatigue 1; disableUserInput false; player switchMove "";};
