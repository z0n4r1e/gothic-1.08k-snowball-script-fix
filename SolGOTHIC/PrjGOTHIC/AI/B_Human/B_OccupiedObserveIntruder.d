
func void B_OccupiedObserveIntruder()
{
	PrintDebugNpc(PD_ZS_FRAME,"B_OccupiedObserveIntruder");
	if(!C_NpcIsHuman(other))
	{
		PrintDebugNpc(PD_ZS_FRAME,"...Nsc ��� ������!");
		B_AssessFighter();
	};
	if(Npc_GetDistToNpc(self,other) < PERC_DIST_CLOSE)
	{
		PrintDebugNpc(PD_ZS_FRAME,"... ���������� ������� ������!");
		if(other.guild != GIL_MEATBUG)
		{
			PrintDebugNpc(PD_ZS_FRAME,"...� �� ������ ���!");
			AI_QuickLook(self,other);
			B_AssessSC();
		};
	};
};

