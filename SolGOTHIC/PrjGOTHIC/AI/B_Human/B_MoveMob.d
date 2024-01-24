
func void B_MoveMob()
{
	var string door;
	PrintDebugNpc(PD_ZS_FRAME,"B_MoveMob");
	door = Npc_GetDetectedMob(self);
	PrintDebugNpc(PD_ZS_Check,ConcatStrings("...mob: ",door));
	if(Hlp_StrCmp(door,"DOOR"))
	{
		PrintDebugNpc(PD_ZS_Check,"...mob это дверь!");
		if(self.aivar[AIV_MOVINGMOB] == 0)
		{
			PrintDebugNpc(PD_ZS_Check,"...Дверь еще НЕ пытались открыть!");
			self.aivar[AIV_MOVINGMOB] = 1;
			Npc_ClearAIQueue(self);
			AI_UseMob(self,door,1);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Дверь уже пытаются открыть -> вероятно, не получится!");
			Npc_PercDisable(self,PERC_MOVEMOB);
			self.aivar[AIV_MOVINGMOB] = 0;
			AI_StartState(self,ZS_WaitForPassage,0,"");
		};
	};
};

