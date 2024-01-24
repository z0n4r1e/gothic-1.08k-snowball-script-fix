
func int ZS_AssessQuietSound()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessQuietSound");
	C_ZSInit();
	if(self.guild == GIL_MEATBUG)
	{
		AI_ContinueRoutine(self);
		return TRUE;
	};
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_AssessFighter);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,ZS_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,ZS_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,B_AssessTheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalk);
	Npc_PercEnable(self,PERC_ASSESSENTERROOM,B_AssessEnterRoom);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,B_AssessUseMob);
	AI_TurnToNPC(self,other);
	return FALSE;
};

func int ZS_AssessQuietSound_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_AssessQuietSound_Loop");
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_LOOP,"...SC ���������!");
		B_AssessSC();
		if((Npc_GetDistToNpc(self,other) < PERC_DIST_FLEE) && !other.aivar[AIV_INVINCIBLE])
		{
			PrintDebugNpc(PD_ZS_LOOP,"...SC � ������� ������!");
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_ObserveIntruder,0,"");
		}
		else
		{
			PrintDebugNpc(PD_ZS_LOOP,"...SC ��� ������� ������ ��� � ���������!");
			return LOOP_END;
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_LOOP,"...SC ��� ��� �� ���������!");
		if(Npc_GetStateTime(self) > 5)
		{
			PrintDebugNpc(PD_ZS_LOOP,"...���������� ��������� 5 ������!");
			return LOOP_END;
		}
		else
		{
			AI_Wait(self,1);
			return LOOP_CONTINUE;
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_AssessQuietSound_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessQuietSound_End");
};

