
func void B_Orc_AssessWarn()
{
	PrintDebugNpc(PD_ORC_FRAME,"B_Orc_AssessWarn");
	if(C_NpcIsOrc(victim))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_AssessWarn: ���������� ����� -> ����� ����");
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_SetWalkMode(self,NPC_RUN);
		if(!Npc_HasReadiedWeapon(self))
		{
			AI_EquipBestMeleeWeapon(self);
			AI_DrawWeapon(self);
		};
		AI_GotoNpc(self,victim);
	};
};

