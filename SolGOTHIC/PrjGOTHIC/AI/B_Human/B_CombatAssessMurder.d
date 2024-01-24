
func void B_CombatAssessMurder()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatAssessMurder");
	PrintGlobals(PD_ZS_Check);
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen");
		if(C_NpcIsHuman(other) && C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen // Оба люди");
			B_AssessAndMemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,victim);
			if(Npc_IsInState(self,ZS_ProclaimAndPunish))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC находится в ZS_ProclaimAndPunish!");
				if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(hero))
				{
					PrintDebugNpc(PD_ZS_Check,"...Убитый также является своей собственной Целью!");
					B_FullStop(self);
					AI_ContinueRoutine(self);
				};
			};
		};
		if((Npc_GetTempAttitude(self,victim) == ATT_FRIENDLY) && !C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder seen // дружелюбен к жертве ::");
			Npc_SetTempAttitude(self,ATT_HOSTILE);
		};
	}
	else if(C_NpcIsHuman(other) && C_NpcIsHuman(victim))
	{
		PrintDebugNpc(PD_ZS_Check,"B_CombatAssessMurder // только слышал");
		B_AssessAndMemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,NULL,victim);
	};
};

