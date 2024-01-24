
func void ZS_GetBackItem()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem");
	C_ZSInit();
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,ZS_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,B_AssessFightSound);
	Npc_PercEnable(self,PERC_CATCHTHIEF,ZS_CatchThief);
	Npc_PercEnable(self,PERC_ASSESSTALK,B_RefuseTalkAngry);
	Npc_PercEnable(self,PERC_ASSESSITEM,B_GetBackItem_Seen);
	Npc_PercEnable(self,PERC_DRAWWEAPON,ZS_GetBackItem_DrawWeapon);
	Npc_SetPercTime(self,1);
	B_Say(self,other,"$GIVEITTOME");
	Npc_SendPassivePerc(self,PERC_NPCCOMMAND,self,other);
	if(Hlp_IsValidNpc(other))
	{
		PrintDebugNpc(PD_ZS_Check,"other");
	};
};

func int ZS_GetBackItem_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP,"ZS_GetBackItem_Loop");
	if((Npc_GetStateTime(self) > 7) && Npc_IsPlayer(other))
	{
		PrintDebugNpc(PD_ZS_LOOP,"ZS_GetBackItem_Loop // ����� 3 ������ �����");
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,0,"");
		return LOOP_END;
	}
	else if(Npc_GetStateTime(self) > 7)
	{
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_GetBackItem_End()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_End");
};

func void B_GetBackItem_Seen()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_GetBackItem_Seen");
	Npc_PercDisable(self,PERC_ASSESSITEM);
	if(self.aivar[AIV_WANTEDITEM] == Hlp_GetInstanceID(item))
	{
		PrintDebugNpc(PD_ZS_FRAME,"B_GetBackItem_Seen ���� ���");
		Npc_ClearAIQueue(self);
		AI_TakeItem(self,item);
		B_Say(self,other,"$WISEMOVE");
		AI_ContinueRoutine(self);
	};
};

func void B_GetBackItem_Given()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_Given");
	if(self.aivar[AIV_WANTEDITEM] == Hlp_GetInstanceID(item))
	{
		PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_Given // ���� ��� ����, ������ ��� ��� ���");
		Npc_ClearAIQueue(self);
		Npc_GiveItem(other,item,self);
		B_Say(self,other,"$WISEMOVE");
		AI_ContinueRoutine(self);
	}
	else
	{
		if(C_WantItem())
		{
			PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_Given // ���� �����, ������ ��� ��� ��������");
			Npc_ClearAIQueue(self);
			Npc_GiveItem(other,item,self);
			B_Say(self,other,"$OKAYTOO");
		}
		else
		{
			PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_Given �� ���� ����� ������");
			B_Say(self,other,"$YOUWANNAFOOLME");
			if(C_AmIStronger(self,other))
			{
				PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_Given �� ���� ����� ������ // �������");
				Npc_ClearAIQueue(self);
				Npc_SetTarget(self,other);
				AI_StartState(self,ZS_Attack,0,"");
			};
		};
		AI_ContinueRoutine(self);
	};
};

func void ZS_GetBackItem_DrawWeapon()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_GetBackItem_DrawWeapon");
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	B_Say(self,other,"$YOUASKEDFORIT");
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,0,"");
};

