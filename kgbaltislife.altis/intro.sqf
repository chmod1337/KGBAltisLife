/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
_onScreenTime = 7; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 4; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome To";
_role1names = ["KGB Gaming Altis Life"];
_role2 = "Server Admins:";
_role2names = ["5150 Joker", "Buddytex"];
_role3 = "Life Admins:";
_role3names = ["Jericho", "TheBabbs"];
_role4 = "Developers:";
_role4names = ["BuddyTex", "Chmod1337", "5150 Joker"];
_role5 = "Audio File Contributions:";
_role5names = ["Capt Pie"];
_role6 = "TeamSpeak And Police Chief:";
_role6names = ["The Babbs"];
_role7 = "Lead Tester And Jail Dev:";
_role7names = ["Jericho"];
_role8 = "Textures:";
_role8names = ["The Northern Alex", "5150 Joker"];
_role9 = "Visit Us:";
_role9names = ["Website: www.kgbgaming.com", "TS: ts3.kgbgaming.com"];
_role10 = "Special Thanks:";
_role10names = ["Angerthosenear","Jericho","The Northern Alex"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#B40205' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10,_role10names]
];