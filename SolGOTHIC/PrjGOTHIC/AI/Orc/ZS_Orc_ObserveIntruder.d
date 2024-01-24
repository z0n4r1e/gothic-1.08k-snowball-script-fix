
func void B_OrcGuard_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Человек в режиме Боя -> Временная Атака +1");
		B_Orc_DrawWeapon();
	};
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_StartState(self,ZS_OrcGuard_ObserveIntruder,0,"");
};

func void B_OrcWarrior_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Человек в режиме Боя -> Временная Атака +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Человек и ВРАЖДЕБНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 2000)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Человек и ЗЛОЙ");
		if(Npc_GetDistToNpc(self,other) < 1200)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 800)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcWarrior_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcWarrior_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_OrcScout_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Человек в режиме Боя -> Временная Атака +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Человек и ВРАЖДЕБНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 1000)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Человек и ЗЛОЙ");
		if(Npc_GetDistToNpc(self,other) < 600)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcScout_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcScout_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_OrcShaman_ObserveIntruder()
{
	if(Npc_HasReadiedWeapon(other) || Npc_IsInFightMode(other,FMODE_FIST))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Человек в режиме Боя -> Временная Атака +1");
		B_Orc_DrawWeapon();
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Человек и ВРАЖДЕБНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 1500)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_ANGRY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Человек и ЗЛОЙ");
		if(Npc_GetDistToNpc(self,other) < 1000)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_NEUTRAL)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 400)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcShaman_ObserveIntruder: Человек и НЕЙТРАЛЬНЫЙ");
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_TurnToNPC(self,other);
			AI_StartState(self,ZS_OrcShaman_ObserveIntruder,0,"");
		};
		return;
	};
};

func void B_Orc_ObserveIntruder()
{
	if((other.guild > GIL_SEPERATOR_ORC) || (other.guild == GIL_ORCDOG))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Орк или Гончая -> игнорировать");
		return;
	};
	if(!Npc_CanSeeNpc(self,other) && C_BodyStateContains(other,BS_SNEAK))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Никто не видит и крадется -> игнорировать");
		return;
	};
	if((other.guild > GIL_SEPERATOR_HUM) && (other.guild < GIL_SEPERATOR_ORC))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Монстер!");
		AI_QuickLook(self,other);
		if((other.guild != GIL_ORCDOG) && (other.guild != GIL_MEATBUG))
		{
			PrintDebugNpc(PD_ORC_FRAME,"B_Orc_ObserveIntruder: Монстр: не Гончая и не Мясной Жук -> Атака");
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_StartState(self,ZS_Orc_Attack,0,"");
		};
		return;
	};
	if(other.guild < GIL_SEPERATOR_HUM)
	{
		if(self.npcType == npctype_guard)
		{
			B_OrcGuard_ObserveIntruder();
		};
		if(self.guild == GIL_ORCWARRIOR)
		{
			B_OrcWarrior_ObserveIntruder();
		};
		if(self.guild == GIL_ORCSCOUT)
		{
			B_OrcScout_ObserveIntruder();
		};
		if(self.guild == GIL_ORCSHAMAN)
		{
			B_OrcShaman_ObserveIntruder();
		};
	};
};

func void ZS_OrcGuard_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
	PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Страж видит игрока");
	if((Npc_GetDistToNpc(self,other) > 900) && (Npc_GetAttitude(self,other) != ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ORC_FRAME,"B_OrcGuard_ObserveIntruder: Страж трубит в Рог -> МИШЕЕЕНЬ!");
		B_Orc_ItemHorn();
	};
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,self);
};

func int ZS_OrcGuard_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_Loop:");
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGUARD_ObserveIntruder_Loop: Страж!");
	if(!Npc_HasReadiedWeapon(self))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_Loop: Орк Страж извлекает Оружие");
		AI_TurnToNPC(self,other);
		AI_EquipBestMeleeWeapon(self);
		AI_DrawWeapon(self);
	};
	if(Npc_GetDistToNpc(self,other) > 1500)
	{
		self.aivar[AIV_WARNTARGET] = 1;
	}
	else
	{
		self.aivar[AIV_WARNTARGET] = 0;
	};
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ВРАЖДЕБНЫЙ");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return LOOP_END;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ЗЛОЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ЗЛОЙ: Атака 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ЗЛОЙ: обнажить Оружие");
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ЗЛОЙ: Атака 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		};
		return LOOP_CONTINUE;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: НЕЙТРАЛЬНЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: НЕЙТРАЛЬНЫЙ: Атака");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: НЕЙТРАЛЬНЫЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder: ДРУЖЕСТВЕННЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 700)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_OrcGuard_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcGuard_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcWarrior_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcWarrior_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder_Loop:");
	if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ВРАЖДЕБНЫЙ");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return LOOP_END;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ЗЛОЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ЗЛОЙ: Атака 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ЗЛОЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ЗЛОЙ: Атака 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if(Npc_GetDistToNpc(self,other) > 1500)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: НЕЙТРАЛЬНЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: НЕЙТРАЛЬНЫЙ: Атака");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: НЕЙТРАЛЬНЫЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder: ДРУЖЕСТВЕННЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 700)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_OrcWarrior_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcWarrior_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcScout_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcScout_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder_Loop:");
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) && (Npc_GetDistToNpc(self,other) < 1000))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ВРАЖДЕБНЫЙ");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return LOOP_END;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ЗЛОЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ЗЛОЙ: Атака 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 400) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ЗЛОЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ЗЛОЙ: Атака 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if(Npc_GetDistToNpc(self,other) > 600)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: НЕЙТРАЛЬНЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 200) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: НЕЙТРАЛЬНЫЙ: Атака");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 400) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: НЕЙТРАЛЬНЫЙ: обнажить Оружие");
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder: ДРУЖЕСТВЕННЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 400)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_OrcScout_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcScout_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

func void ZS_OrcShaman_ObserveIntruder()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder");
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,ZS_Orc_WatchFight);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_ASSESSDEFEAT,B_Orc_AssessDefeat);
	Npc_PercEnable(self,PERC_ASSESSCASTER,B_Orc_AssessSomethingEvil);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSTHREAT,B_Orc_AssessSomethingEvil);
	self.aivar[AIV_OBSERVEINTRUDER] = 0;
	self.aivar[AIV_WARNTARGET] = 0;
};

func int ZS_OrcShaman_ObserveIntruder_Loop()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder_Loop:");
	if((Npc_GetAttitude(self,other) == ATT_HOSTILE) && (Npc_GetDistToNpc(self,other) < 1500))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ВРАЖДЕБНЫЙ");
		B_Say(self,other,"$DIE");
		AI_StartState(self,ZS_Orc_Attack,1,"");
		return LOOP_END;
	}
	else if((Npc_GetAttitude(self,other) == ATT_ANGRY) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ЗЛОЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 500) && ((self.aivar[AIV_OBSERVEINTRUDER] == 1) || (Npc_GetStateTime(self) > 6)))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ЗЛОЙ: Атака 1");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		}
		else if((Npc_GetDistToNpc(self,other) < 1500) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ЗЛОЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if((self.aivar[AIV_OBSERVEINTRUDER] == 1) && (Npc_GetStateTime(self) > 6))
		{
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ЗЛОЙ: Атака 2");
			B_Say(self,other,"$DIE");
			AI_StartState(self,ZS_Orc_Attack,1,"");
		};
		return LOOP_CONTINUE;
	}
	else if((Npc_GetAttitude(self,other) == ATT_NEUTRAL) && (self.aivar[AIV_WARNTARGET] == 0))
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: НЕЙТРАЛЬНЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] > 0))
		{
			if(self.aivar[AIV_OBSERVEINTRUDER] != 2)
			{
				self.aivar[AIV_OBSERVEINTRUDER] = 2;
				AI_Wait(self,3);
			}
			else if(Npc_GetStateTime(self) > 10)
			{
				PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: НЕЙТРАЛЬНЫЙ: Атака");
				AI_StartState(self,ZS_Orc_Attack,1,"");
			};
		}
		else if((Npc_GetDistToNpc(self,other) < 1000) && (self.aivar[AIV_OBSERVEINTRUDER] == 0))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: НЕЙТРАЛЬНЫЙ: обнажить Оружие");
			if(!Npc_HasReadiedWeapon(self))
			{
				AI_EquipBestMeleeWeapon(self);
				AI_DrawWeapon(self);
			};
			B_Say(self,other,"$LOOKINGFORTROUBLEEH");
		}
		else if(Npc_GetStateTime(self) > 15)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetAttitude(self,other) == ATT_FRIENDLY)
	{
		PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder: ДРУЖЕСТВЕННЫЙ");
		B_Orc_SmartTurn();
		if((Npc_GetDistToNpc(self,other) < 300) && (self.aivar[AIV_OBSERVEINTRUDER] != 1))
		{
			self.aivar[AIV_OBSERVEINTRUDER] = 1;
			B_Say(self,other,"$WHAT");
		};
		if(Npc_GetDistToNpc(self,other) > 400)
		{
			return LOOP_END;
		};
		return LOOP_CONTINUE;
	}
	else if(Npc_GetDistToNpc(self,other) > 2000)
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_OrcShaman_ObserveIntruder_End()
{
	PrintDebugNpc(PD_ORC_FRAME,"ZS_OrcShaman_ObserveIntruder_End");
	if(Npc_HasReadiedWeapon(self))
	{
		AI_RemoveWeapon(self);
	};
	AI_StopLookAt(self);
	AI_ContinueRoutine(self);
};

