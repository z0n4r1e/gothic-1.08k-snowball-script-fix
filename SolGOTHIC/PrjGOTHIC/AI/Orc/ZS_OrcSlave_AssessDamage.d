
func void ZS_OrcSlave_AssessDamage()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcSlave_AssessDamage: Убегать ");
	AI_TurnToNPC(self,other);
	AI_Dodge(self);
	AI_PlayAni(self,"T_FRIGHTENED");
	Npc_SetTarget(self,other);
};

func int ZS_OrcSlave_AssessDamage_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcSlave_AssessDamage_Loop: Убегать ");
	if(Npc_GetDistToNpc(self,other) > 1200)
	{
		return LOOP_END;
	};
	AI_Flee(self);
	return LOOP_CONTINUE;
};

func void ZS_OrcSlave_AssessDamage_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcSlave_AssessDamage_End");
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_ContinueRoutine(self);
};

