
func void ZS_Listen()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_LISTEN");
	self.aivar[AIV_FOUNDPERSON] = 0;
	OccupiedPerception();
	if(!C_BodyStateContains(self,BS_SIT))
	{
		AI_GotoWP(self,self.wp);
	};
};

func void ZS_Listen_Loop()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_LISTEN");
	if(self.aivar[AIV_FOUNDPERSON] == FALSE)
	{
		PrintDebugNpc(PD_TA_CHECK,"...Говорящий пока не найден...!");
		B_GotoFP(self,"LISTEN");
		Npc_PerceiveAll(self);
		if(Wld_DetectNpc(self,-1,ZS_Teaching,-1))
		{
			PrintDebugNpc(PD_TA_CHECK,"...но ТЕПЕРЬ нашолся оратора...!");
			if(Npc_GetDistToNpc(self,other) <= PERC_DIST_DIALOG)
			{
				PrintDebugNpc(PD_TA_CHECK,"...это достаточно близко!");
				AI_TurnToNPC(self,other);
				AI_PlayAniBS(self,"T_STAND_2_SIT",BS_SIT);
				C_LookAtNpc(self,other);
				self.aivar[AIV_FOUNDPERSON] = 1;
			};
		};
	};
	AI_Wait(self,1);
};

func void ZS_Listen_End()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Listen_End");
	if(C_BodyStateContains(self,BS_SIT))
	{
		AI_PlayAniBS(self,"T_SIT_2_STAND",BS_STAND);
		C_StopLookAt(self);
	};
};

