
func void B_DrawWeapon(var C_Npc slf,var C_Npc oth)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_DrawWeapon");
	B_SelectWeapon(slf,oth);
};

func void B_RemoveWeapon(var C_Npc slf)
{
	PrintDebugNpc(PD_ZS_DETAIL,"B_RemoveWeapon");
	if(Npc_IsInFightMode(slf,FMODE_MAGIC))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"... приготовлено Заклинание!");
		Npc_ClearAIQueue(slf);
		AI_UnreadySpell(slf);
	}
	else if(Npc_HasReadiedMeleeWeapon(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Извлечено оружие Ближнего боя!");
		Npc_ClearAIQueue(slf);
		AI_RemoveWeapon(slf);
	}
	else if(Npc_HasReadiedRangedWeapon(slf))
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...Извлечено оружие Дальнего боя!");
		Npc_ClearAIQueue(slf);
		AI_StopAim(slf);
		AI_ReadyRangedWeapon(slf);
		AI_RemoveWeapon(slf);
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"...'обнажены' только Кулаки!");
		Npc_ClearAIQueue(slf);
		AI_RemoveWeapon(slf);
	};
};

