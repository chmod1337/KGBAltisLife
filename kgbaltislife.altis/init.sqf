enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];
if (isServer) then {[] execVM "scripts\kgb.sqf";};
life_versionInfo = "Altis Life RPG v3.1.4";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";
 
"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this select 1];
};
 
//Start server fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};
[] execVM "nosidechat.sqf";
[] execVM "zlt_fastrope.sqf";

StartProgress = true;

[] execVM "core\real_weather.sqf";
0 = execVM "IgiLoad\IgiLoadInit.sqf";