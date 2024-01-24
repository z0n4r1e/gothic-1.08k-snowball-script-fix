
func void B_AssessEnterRoom()
{
	var int self_guild;
	var int portalguild;
	var int formerportalguild;
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessEnterRoom");
	self_guild = self.guild;
	PrintGlobals(PD_ZS_Check);
	portalguild = Wld_GetPlayerPortalGuild();
	PrintGuild(PD_ZS_Check,portalguild);
	formerportalguild = Wld_GetFormerPlayerPortalGuild();
	PrintGuild(PD_ZS_Check,formerportalguild);
	if(!C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_Check,"Монстр входит в Комнату!");
		B_FullStop(self);
		AI_StartState(self,ZS_AssessMonster,0,"");
	};
	if(!Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC входит в Комнату!");
		return;
	};
	if((self.npcType == npctype_friend) || (Npc_GetAttitude(self,other) == ATT_FRIENDLY))
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC это NPCTYPE_FRIEND или ATT_FRIENDLY");
		return;
	};
	if(Npc_CanSeeNpc(self,other) || (!C_BodyStateContains(other,BS_SNEAK) && (Npc_GetDistToNpc(self,other) < HAI_DIST_HEARROOMINTRUDER)))
	{
		PrintDebugNpc(PD_ZS_Check,"...Nsc видит/слышит Нарушителя!");
		if(C_NpcIsGuard(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...Nsc это Страж!");
			if((portalguild != GIL_None) && (Wld_GetGuildAttitude(self_guild,portalguild) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...вход в комнату Портала принадлежит Гильдии Подопечных!");
				B_FullStop(self);
				AI_StartState(self,ZS_ClearRoom,0,"");
			}
			else if((formerportalguild != GIL_None) && (Wld_GetGuildAttitude(self_guild,formerportalguild) == ATT_FRIENDLY))
			{
				PrintDebugNpc(PD_ZS_Check,"...заброшенная комната с Порталом принадлежит Гильдии Подопечных!");
				B_FullStop(self);
				B_WhirlAround(self,other);
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$HEYYOU");
				AI_StopPointAt(self);
				Npc_PercDisable(self,PERC_MOVENPC);
				AI_SetWalkMode(self,NPC_RUN);
				AI_GotoNpc(self,other);
				B_Say(self,other,"$WHATDIDYOUINTHERE");
			};
		}
		else if(C_NpcIsGuardArcher(self))
		{
			PrintDebugNpc(PD_ZS_Check,"...я страж Стрелок и в принципе игнорирую вход в Комнаты!");
			Npc_PercEnable(self,PERC_OBSERVEINTRUDER,B_ObserveIntruder);
			AI_ContinueRoutine(self);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Nsc это НЕ Страж!");
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_CLEARROOM) && (portalguild != GIL_None) && ((self_guild == portalguild) || (Wld_GetGuildAttitude(self_guild,portalguild) == ATT_FRIENDLY)))
			{
				PrintDebugNpc(PD_ZS_Check,"...SC близко и вход в комнату с Порталом принадлежит Гильдии NSCs");
				B_FullStop(self);
				AI_StartState(self,ZS_ClearRoom,0,"");
				return;
			};
			if((Npc_GetDistToNpc(self,other) < HAI_DIST_CLEARROOM) && (formerportalguild != GIL_None) && ((self_guild == formerportalguild) || (Wld_GetGuildAttitude(self_guild,formerportalguild) == ATT_FRIENDLY)))
			{
				PrintDebugNpc(PD_ZS_Check,"...SC близко и SC покидает собственную комнату с Порталом");
				B_FullStop(self);
				B_WhirlAround(self,other);
				AI_PointAtNpc(self,other);
				B_Say(self,other,"$HEYYOU");
				AI_StopPointAt(self);
				Npc_PercDisable(self,PERC_MOVENPC);
				AI_SetWalkMode(self,NPC_RUN);
				AI_GotoNpc(self,other);
				B_Say(self,other,"$WHATDIDYOUINTHERE");
			};
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_Check,"...NSC не может видеть и не может слышать Нарушителя!");
	};
};

