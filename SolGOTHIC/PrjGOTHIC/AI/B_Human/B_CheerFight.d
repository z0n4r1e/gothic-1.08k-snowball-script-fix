
func void B_CheerFight()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_CheerFight");
	if(Npc_GetStateTime(self) > 5)
	{
		Npc_SetStateTime(self,0);
		if(Npc_GetTempAttitude(self,victim) == ATT_FRIENDLY)
		{
			PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Дружелюбная жертва");
			if((Npc_GetTempAttitude(self,other) == ATT_NEUTRAL) || (Npc_GetTempAttitude(self,other) == ATT_ANGRY))
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Дружественная жертва // нейтральный атакующий");
				B_Say(self,NULL,"$OOH");
				AI_PlayAni(self,"T_WATCHFIGHT_OHNO");
			}
			else if(Npc_GetTempAttitude(self,other) == ATT_FRIENDLY)
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Дружественная жертва // Дружественный атакующий");
				B_Say(self,NULL,"$CHEERFIGHT");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			};
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Нет дружественной жертвы");
			if(Npc_GetTempAttitude(self,other) == ATT_FRIENDLY)
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight // Нет дружественной жертвы // дружественный агрессор");
				B_Say(self,NULL,"$CHEERFRIEND");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			}
			else
			{
				PrintDebugNpc(PD_ZS_Check,"B_CheerFight / НЕТ Дружественной жертвы // НЕТ дружественного агрессора");
				B_Say(self,NULL,"$CHEERFIGHT");
				AI_PlayAni(self,"T_WATCHFIGHT_YEAH");
			};
		};
	};
};

