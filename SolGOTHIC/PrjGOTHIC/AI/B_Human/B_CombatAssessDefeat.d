
func void B_CombatAssessDefeat()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CombatAssessDefeat");
	if(Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(C_NpcIsHuman(other) && C_NpcIsHuman(victim))
		{
			PrintDebugNpc(PD_ZS_Check,"...������� ��������� ��������!");
			B_AssessAndMemorize(NEWS_DEFEAT,NEWS_SOURCE_WITNESS,self,other,victim);
			if(Npc_IsInState(self,ZS_ProclaimAndPunish))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC ��������� � ZS_ProclaimAndPunish!");
				if(Hlp_GetInstanceID(victim) == Hlp_GetInstanceID(hero))
				{
					PrintDebugNpc(PD_ZS_Check,"...����������� ����� �������� ����� ����������� �����!");
					B_FullStop(self);
					AI_ContinueRoutine(self);
				};
			};
		};
	};
};

