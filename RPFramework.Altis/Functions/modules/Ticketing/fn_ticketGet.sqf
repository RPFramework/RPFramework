/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
RPF_TicketOfficer = _this select 0;
RPF_TicketAmount = _this select 1;
_reason = _this select 2;

createDialog "getTicket";

ctrlSetText [1003, str(RPF_TicketAmount)];

ctrlSetText [1004, _reason];