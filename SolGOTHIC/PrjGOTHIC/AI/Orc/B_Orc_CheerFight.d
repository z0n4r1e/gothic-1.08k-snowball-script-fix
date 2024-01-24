
func void B_Orc_CheerFight()
{
	var int h;
	PrintDebugNpc(PD_ORC_FRAME,"B_Orc_CheerFight");
	h = Hlp_Random(20);
	if((Npc_GetTempAttitude(self,victim) == ATT_FRIENDLY) || (victim.guild > GIL_SEPERATOR_ORC))
	{
		PrintDebugNpc(PD_ORC_CHECK,"B_Orc_CheerFight: Жертва мой Друг / Орк -> Горе");
		B_Say(self,NULL,"$OOH");
		if(h < 6)
		{
			AI_PlayAni(self,"T_FRIGHTENED");
		};
	}
	else
	{
		PrintDebugNpc(PD_ORC_CHECK,"B_Orc_CheerFight: Жертва мне не Друг -> Радость");
		B_Say(self,NULL,"$CHEERFIGHT");
		if(h < 6)
		{
			AI_PlayAni(self,"T_HAPPY");
		};
	};
};

