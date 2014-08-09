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
[] execVM "nosidechat.sqf";
[] execVM "zlt_fastrope.sqf";

StartProgress = true;

[] execVM "core\real_weather.sqf";
0 = execVM "IgiLoad\IgiLoadInit.sqf";