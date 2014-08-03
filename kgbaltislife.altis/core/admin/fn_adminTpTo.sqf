#include <macro.h>
/*
	File: fn_adminTpHere.sqf
	Author: ColinM9991
	
	Description:
	Teleport you to selected player.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_unit == player) exitWith {hint localize "STR_Admin_Error";};

[[player, _unit], "life_fnc_adminTpToServer", false] spawn life_fnc_MP;
hint format["You have teleported to %1's location.",_unit getVariable["realname",name _unit]];