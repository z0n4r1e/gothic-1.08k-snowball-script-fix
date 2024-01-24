
func void ZS_ProclaimAndPunish()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ProclaimAndPunish");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_CombatReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_CombatAssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_CombatAssessDefeat);
	Npc_PercEnable(self,PERC_MOVENPC,B_StopGotoHero);
	if(self.aivar[AIV_WASDEFEATEDBYSC] && !C_NpcIsBoss(self) && (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_HOSTILE) && (Npc_GetPermAttitude(self,other) != ATT_HOSTILE))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC уже был побежден SC!");
		B_RemoveWeapon(self);
		AI_StartState(self,ZS_TurnAway,0,"");
		return;
	};
	if((Npc_IsInFightMode(self,FMODE_FAR) || Npc_IsInFightMode(self,FMODE_MAGIC)) && (Npc_GetDistToNpc(self,hero) > PERC_DIST_DIALOG))
	{
		Npc_SetTarget(self,hero);
		AI_StartState(self,ZS_Attack,0,"");
	};
	AI_SetWalkMode(self,NPC_RUN);
};

func int ZS_ProclaimAndPunish_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_ProclaimAndPunish_Loop");
	if(Npc_GetStateTime(self) > HAI_TIME_PURSUIT)
	{
		PrintDebugNpc(PD_ZS_Check,"...Преследование длится слишком долго!");
		AI_ContinueRoutine(self);
	}
	else if(Npc_GetDistToNpc(self,hero) > PERC_DIST_DIALOG)
	{
		PrintDebugNpc(PD_ZS_Check,"...Еще НЕ в пределах диалоговой дистанции!");
		AI_GotoNpc(self,hero);
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...В пределах диалоговой дистанции!");
		B_FullStop(self);
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_ProclaimAndPunish_End()
{
	var int murder_news;
	var C_Npc murder_victim;
	PrintDebugNpc(PD_ZS_FRAME,"ZS_ProclaimAndPunish_End");
	if(C_NpcIsDown(hero))
	{
		PrintDebugNpc(PD_ZS_Check,"...SC в данный момент на Земле!");
		return;
	};
	if(Npc_WasInState(self,ZS_AssessEnemy))
	{
		murder_news = Npc_HasNews(self,NEWS_MURDER,hero,NULL);
		if(murder_news)
		{
			PrintDebugNpc(PD_ZS_Check,"...SC убит...");
			murder_victim = Npc_GetNewsVictim(self,murder_news);
			if(Npc_GetAttitude(self,murder_victim) == ATT_FRIENDLY)
			{
				PrintDebugNpc(PD_ZS_Check,"...а именно друг NSC!");
				B_SayOverlay(self,hero,"$YouKilledOneOfUs");
			};
		}
		else if(Wld_GetGuildAttitude(self.guild,hero.guild) == ATT_HOSTILE)
		{
			PrintDebugNpc(PD_ZS_Check,"...SC это смертельный Враг!");
			B_SayOverlay(self,hero,"$DieMortalEnemy");
		}
		else if(Npc_HasNews(self,NEWS_THEFT,hero,self))
		{
			PrintDebugNpc(PD_ZS_Check,"...SC украл у NSC!");
			B_SayOverlay(self,hero,"$DIRTYTHIEF");
		}
		else if(Npc_HasNews(self,NEWS_DEFEAT,self,hero))
		{
			PrintDebugNpc(PD_ZS_Check,"...Обычная Атака (SC уже был побежден)!");
			B_SayOverlay(self,hero,"$YOUSTILLNOTHAVEENOUGH");
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Обычная Атака (SC еще не был побежден)!");
			B_SayOverlay(self,hero,"$NowWait");
		};
	}
	else if(C_GetAttackReason(self) == AIV_AR_INTRUDER)
	{
		PrintDebugNpc(PD_ZS_Check,"...SC пробил Проход!");
		B_SayOverlay(self,hero,"$NowWaitIntruder");
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...SC атакует Подопечного Стражи!");
		B_SayOverlay(self,hero,"$YouAttackedMyCharge");
	};
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,0,"");
};

