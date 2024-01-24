
func void ZS_PickRice()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PickRice");
	B_SetPerception(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(!Npc_IsOnFP(self,"PICKRICE"))
	{
		AI_GotoWP(self,self.wp);
	};
	if(Wld_IsFPAvailable(self,"PICKRICE"))
	{
		AI_GotoFP(self,"PICKRICE");
		AI_AlignToFP(self);
	};
	self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
};

func void ZS_PickRice_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_PickRice_Loop");
	if((Npc_GetStateTime(self) >= self.aivar[AIV_ITEMFREQ]) && Hlp_Random(2))
	{
		PrintDebugNpc(PD_TA_DETAIL,"PickRice Наклон с перемещением Места");
		if(Npc_IsOnFP(self,"PICKRICE_1") && Wld_IsFPAvailable(self,"PICKRICE_1"))
		{
			PrintDebugNpc(PD_TA_DETAIL,"Смена Места на Уровне 1");
			AI_GotoNextFP(self,"PICKRICE_1");
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
			Npc_SetStateTime(self,0);
		}
		else if(Npc_IsOnFP(self,"PICKRICE_2") && Wld_IsFPAvailable(self,"PICKRICE_2"))
		{
			PrintDebugNpc(PD_TA_DETAIL,"Смена Места на Уровне 2");
			AI_GotoNextFP(self,"PICKRICE_2");
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
			Npc_SetStateTime(self,0);
		}
		else if(Npc_IsOnFP(self,"PICKRICE_3") && Wld_IsFPAvailable(self,"PICKRICE_3"))
		{
			PrintDebugNpc(PD_TA_DETAIL,"Смена Места на Уровне 3");
			AI_GotoNextFP(self,"PICKRICE_3");
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
			Npc_SetStateTime(self,0);
		}
		else if(Npc_IsOnFP(self,"PICKRICE"))
		{
			PrintDebugNpc(PD_TA_DETAIL,"свободного FP не найдено!");
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
			Npc_SetStateTime(self,0);
		};
		AI_SetWalkMode(self,NPC_WALK);
	}
	else if(Npc_GetStateTime(self) >= self.aivar[AIV_ITEMFREQ])
	{
		PrintDebugNpc(PD_TA_DETAIL,"PickRice Наклониться вперед");
		if(Npc_IsOnFP(self,"PICKRICE"))
		{
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = Hlp_Random(5) + 5;
			Npc_SetStateTime(self,0);
		};
		AI_SetWalkMode(self,NPC_WALK);
	};
	if(!Npc_IsOnFP(self,"PICKRICE") && Wld_IsFPAvailable(self,"PICKRICE"))
	{
		AI_GotoFP(self,"PICKRICE");
	};
	AI_Wait(self,1);
};

func void ZS_PickRice_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_PickRice_End");
};

