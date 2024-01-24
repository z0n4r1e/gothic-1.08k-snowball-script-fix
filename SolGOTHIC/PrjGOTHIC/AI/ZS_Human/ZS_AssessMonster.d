
func void ZS_AssessMonster()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessMonster");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalk);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,ZS_AssessSurprise);
	Npc_SetPercTime(self,0.5);
	PrintGlobals(PD_ZS_Check);
	if(C_NpcIsGuard(self) || C_NpcIsGuardArcher(self) || C_NpcIsBoss(self))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC является СТРАЖЕМ (ближнего/дальнего боя) или БОССОМ!");
		B_FullStop(self);
		B_SayOverlay(self,NULL,"$DieMonster");
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,0,"");
		return;
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check," ...NSC не является ни СТРАЖЕМ, ни БОССОМ!");
		if(C_AmIStronger(self,other))
		{
			PrintDebugNpc(PD_ZS_Check," ...но все же сильнее Монстра!");
			B_FullStop(self);
			B_DrawWeapon(self,other);
			return;
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check," ...и к тому же слабее Монстра!");
			B_FullStop(self);
			B_WhirlAround(self,other);
			Npc_SetTarget(self,other);
			B_SayOverlay(self,NULL,"$ShitWhatAMonster");
			Npc_GetTarget(self);
			AI_StartState(self,ZS_Flee,0,"");
		};
	};
};

func int ZS_AssessMonster_Loop()
{
	var int distance;
	PrintDebugNpc(PD_ZS_LOOP,"ZS_AssessMonster_Loop");
	distance = Npc_GetDistToNpc(self,other);
	if(Npc_GetStateTime(self) > 1)
	{
		PrintDebugNpc(PD_ZS_Check,"...1 Секунда в цикле -> Проверка Оружия!");
		B_SmartTurnToNpc(self,other);
		B_SelectWeapon(self,other);
		Npc_SetStateTime(self,0);
	};
	if(Npc_IsInFightMode(self,FMODE_FAR) || Npc_IsInFightMode(self,FMODE_MAGIC))
	{
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,0,"");
	};
	if(distance < HAI_DIST_ATTACK_MONSTER)
	{
		PrintDebugNpc(PD_ZS_Check,"...Монстр подошел слишком близко!");
		Npc_SetTarget(self,other);
		B_SayOverlay(self,NULL,"$DieMonster");
		AI_StartState(self,ZS_Attack,0,"");
	}
	else if(distance > HAI_DIST_ABORT_ASSESS_MONSTER)
	{
		PrintDebugNpc(PD_ZS_Check,"...Монстр снова достаточно далеко!");
		return LOOP_END;
	}
	else if(C_NpcIsDown(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...Монстр готов к бою!");
		return LOOP_END;
	}
	else
	{
		return LOOP_CONTINUE;
	};
	return LOOP_CONTINUE;
};

func void ZS_AssessMonster_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_AssessMonster_End");
	B_RemoveWeapon(self);
	AI_ContinueRoutine(self);
};

