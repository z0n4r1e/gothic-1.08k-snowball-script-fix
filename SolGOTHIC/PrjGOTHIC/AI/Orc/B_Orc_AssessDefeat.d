
func void B_Orc_AssessDefeat()
{
	PrintDebugNpc(PD_ORC_FRAME,"B_Orc_AssessDefeat");
	if((Npc_GetPermAttitude(self,victim) == ATT_HOSTILE) || (Npc_GetPermAttitude(self,victim) == ATT_ANGRY))
	{
		if(Hlp_GetInstanceID(other) == Hlp_GetInstanceID(self))
		{
			PrintDebugNpc(PD_ORC_CHECK,"B_Orc_AssessDefeat: ������������ ������������");
			AI_TurnToNPC(self,victim);
			AI_FinishingMove(self,victim);
		};
	};
	if(Npc_HasReadiedRangedWeapon(other) && (other.guild < GIL_SEPERATOR_ORC) && ((victim.guild > GIL_SEPERATOR_ORC) || (victim.guild == GIL_ORCDOG)))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_AssessDefeat: �������� ������ �������� ��� - ������");
		AI_StartState(self,ZS_Orc_Attack,0,"");
	};
	if(Npc_GetTempAttitude(self,other) == ATT_HOSTILE)
	{
		Npc_SetTempAttitude(self,ATT_ANGRY);
	};
	if(Npc_GetTempAttitude(self,victim) == ATT_HOSTILE)
	{
		Npc_SetTempAttitude(self,ATT_ANGRY);
	};
};

