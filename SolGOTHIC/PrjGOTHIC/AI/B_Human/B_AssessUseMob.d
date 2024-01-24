
func void B_AssessUseMob()
{
	var string detectedMob;
	PrintDebugNpc(PD_ZS_FRAME,"B_AssessUseMob");
	detectedMob = Npc_GetDetectedMob(other);
	PrintDebugNpc(PD_ZS_Check,detectedMob);
	if(Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(Npc_IsDetectedMobOwnedByNpc(other,self) || Npc_IsDetectedMobOwnedByGuild(other,self.guild))
		{
			PrintDebugNpc(PD_ZS_Check,"...MOB принадлежит NSC или его Гильдии!");
			if((Npc_GetPermAttitude(self,other) == ATT_FRIENDLY) || (self.guild == other.guild))
			{
				PrintDebugNpc(PD_ZS_Check,"...Манипулятор ДРУЖЕСТВЕН или состоит в одной Гильдии!");
				B_Say(self,other,"$HandsOff");
			}
			else
			{
				PrintGlobals(PD_ZS_Check);
				Npc_SetTempAttitude(self,ATT_HOSTILE);
				Npc_ClearAIQueue(self);
				B_WhirlAround(self,other);
				B_SayOverlay(self,other,"$IWillTeachYouRespectForForeignProperty");
				AI_SetWalkMode(self,NPC_RUN);
				Npc_SetTarget(self,other);
				AI_StartState(self,ZS_Attack,0,"");
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_DETAIL,"не мой MoB");
		};
	}
	else
	{
		PrintDebugNpc(PD_ZS_DETAIL,"SC не виден");
	};
};

