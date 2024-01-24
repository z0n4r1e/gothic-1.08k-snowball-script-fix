
func void B_AssessQuietSound()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessQuietSound");
	PrintGlobals(PD_ZS_FRAME);
	if(Npc_GetDistToItem(self,item) > PERC_DIST_DIALOG)
	{
		PrintDebugNpc(PD_ZS_FRAME,"... слишком далеко");
		return;
	};
	if(Npc_CanSeeSource(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...можно увидеть Источник шума!");
		if(Snd_IsSourceNpc(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...Источник шума это SC!");
			if(Npc_GetTempAttitude(self,other) == ATT_HOSTILE)
			{
				PrintDebugNpc(PD_ZS_Check,"...SC ВРАЖДЕБНЫЙ!");
				Npc_ClearAIQueue(self);
				AI_StartState(self,ZS_AssessEnemy,0,"");
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...источник шума НЕ виден!");
		if(Snd_IsSourceNpc(self))
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_AssessQuietSound,0,"");
		};
	};
};

