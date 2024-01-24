
func void B_AssessEnemy()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessEnemy");
	PrintGlobals(PD_ZS_Check);
	if(Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(C_NpcIsHuman(other))
		{
			PrintDebugNpc(PD_ZS_FRAME,"...���� ��� �������!");
			if(self.aivar[AIV_TALKBEFOREATTACK])
			{
				PrintDebugNpc(PD_ZS_Check,"...'��������� ���������' ��� �����!");
				if(B_CheckForImportantInfo(self,other))
				{
					return;
				};
			};
			if(C_NpcTypeIsFriend(self,other) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...NSC ��� NPCTYPE_FRIEND ��� ATT_FRIENDLY!");
				return;
			};
			if(C_OtherIsToleratedEnemy(self,other))
			{
				PrintDebugNpc(PD_ZS_Check,"...���� ����������!");
				B_TolerateEnemy(self,other);
				return;
			};
			if(other.aivar[AIV_INVINCIBLE])
			{
				PrintDebugNpc(PD_ZS_Check,"...���� ������� ����� ������!");
				AI_ContinueRoutine(self);
				return;
			};
			if(Npc_IsInCutscene(other))
			{
				PrintDebugNpc(PD_ZS_Check,"...���� ��������� � ��������!");
				return;
			};
			B_FullStop(self);
			AI_StartState(self,ZS_AssessEnemy,0,"");
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"... 'enemy' ��� �������/���!");
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_ASSESS_MONSTER) && C_NpcIsDangerousMonster(self,other))
			{
				B_FullStop(self);
				AI_StartState(self,ZS_AssessMonster,0,"");
				return;
			};
		};
	};
};

