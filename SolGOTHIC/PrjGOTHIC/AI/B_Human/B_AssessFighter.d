
func void B_AssessFighter()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessFighter");
	if(self.npcType == Npctype_ROGUE)
	{
		B_SetRoguesToHostile();
	};
	if(C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...'fighter' ��� �������!");
		if(Npc_IsInCutscene(other))
		{
			PrintDebugNpc(PD_ZS_Check,"...��������� ������ � ��������!");
			return;
		};
		if(Npc_IsInState(other,ZS_MagicSleep))
		{
			PrintDebugNpc(PD_ZS_Check,"...SC ��������� � ���������� ���!");
			return;
		};
		if(!Npc_IsPlayer(other))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC �� �������� �������!");
			return;
		}
		else if(Npc_IsInState(self,ZS_GuardPassage))
		{
			B_CheckForImportantInfo(self,other);
		};
		if(Npc_IsInFightMode(other,FMODE_FIST))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fighter '�������' ������ ������!");
			return;
		};
		if(C_NpcTypeIsFriend(self,other) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
		{
			PrintDebugNpc(PD_ZS_Check,"...NSC ��� NPCTYPE_FRIEND ��� ATT_FRIENDLY!");
			return;
		};
		if(other.aivar[AIV_INVINCIBLE] == TRUE)
		{
			PrintDebugNpc(PD_ZS_Check,"...Fighter ��������� � �������!");
			return;
		};
		if(Npc_IsInFightMode(other,FMODE_MELEE))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fighter ������ ������ �������� ���!");
			if(Npc_GetDistToNpc(self,other) < HAI_DIST_MELEE)
			{
				PrintDebugNpc(PD_ZS_Check,"...� ��������� �� ��������� �������� ���");
				B_FullStop(self);
				Npc_SetTarget(self,other);
				Npc_GetTarget(self);
				AI_StartState(self,ZS_AssessFighter,0,"");
				return;
			};
		};
		if(Npc_IsInFightMode(other,FMODE_FAR))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fighter ������ ������ �������� ���!");
			if(Npc_GetDistToNpc(self,other) < HAI_DIST_RANGED)
			{
				PrintDebugNpc(PD_ZS_Check,"...� ��������� �� ��������� �������� ���!");
				B_FullStop(self);
				AI_StartState(self,ZS_AssessFighter,0,"");
				return;
			};
		};
		if(Npc_IsInFightMode(other,FMODE_MAGIC))
		{
			PrintDebugNpc(PD_ZS_Check,"...Fighter ���������� �����!");
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_RANGED) && (Npc_GetActiveSpellCat(other) == SPELL_BAD))
			{
				PrintDebugNpc(PD_ZS_Check,"...������ ������ ���������� � � �������� ��������� �������� ���!");
				B_FullStop(self);
				AI_StartState(self,ZS_AssessFighter,0,"");
				return;
			}
			else if((Npc_IsInState(self,ZS_GuardPassage) || Npc_WasInState(self,ZS_GuardPassage)) && ((Npc_GetActiveSpell(other) == SPL_SLEEP) || (Npc_GetActiveSpell(other) == SPL_CHARM)))
			{
				PrintDebugNpc(PD_ZS_Check,"...������� ����� ���/���������� �� ������ �������!");
				B_FullStop(self);
				AI_StartState(self,ZS_AssessFighter,0,"");
				return;
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"... 'fighter' ��� �������/���!");
		if(C_NpcIsDangerousMonster(self,other))
		{
			PrintDebugNpc(PD_ZS_Check,"... 'fighter' ��� ������� ������!");
			if(Npc_GetDistToNpc(self,other) < HAI_DIST_ASSESS_MONSTER)
			{
				B_FullStop(self);
				AI_StartState(self,ZS_AssessMonster,0,"");
				return;
			};
		};
	};
};

