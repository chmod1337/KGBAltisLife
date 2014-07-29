private["_uniform","_backpack"];


_uniform = uniform player;
_backpack = backpack player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) > 0) then
		{
//			player setObjectTextureGlobal  [0, "images\constable_uniform.jpg"];
		};
		if( (call life_coplevel) > 2) then
		{
//			player setObjectTextureGlobal  [0, "images\corporal_uniform.jpg"];
		}
	};
	case (playerSide == west && _uniform == "U_I_CombatUniform_shortsleeve"):
	{
		if( (call life_coplevel) > 3) then
		{
//			player setObjectTextureGlobal  [0, "images\captain_uniform.jpg"];
		}
	};
	case (playerSide == west && _backpack == "B_Kitbag_mcamo_Eng"):
	{
		if( (call life_coplevel) > 0) then
		{
//			(unitbackpack player) setObjectTextureGlobal [0, "images\csat_kitbag_urban_co.jpg"]; 
		}
	};
	case (playerSide == independent && _uniform == "U_I_CombatUniform_shortsleeve"):
	{
		if( (call life_medicLevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "images\medic_uniform.jpg"]; 
		}
	};
	case (playerSide == civilian and _uniform == "U_C_WorkerCoveralls"):
	{
//		player setObjectTextureGlobal  [0, "images\prisoner.jpg"];
	};
	case (playerSide == civilian and _uniform == "U_C_Poloshirt_blue"):
	{
//		player setObjectTextureGlobal  [0, "images\civ_winnie.jpg"];
	};
};