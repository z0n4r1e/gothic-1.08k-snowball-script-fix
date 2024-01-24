
func void B_GreetUpcoming()
{
	var int greet;
	PrintDebugNpc(PD_ZS_FRAME,"B_GreetUpcoming");
	if(Npc_CanSeeNpc(self,other))
	{
		PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming смотри // Первое");
		if(Npc_CanSeeNpc(other,self))
		{
			PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming смотри // Второе");
			if(Npc_GetDistToNpc(self,other) < PERC_DIST_DIALOG)
			{
				PrintDebugNpc(PD_ZS_Check,"B_GreetUpcoming смотри Диалог");
				B_AssessSC();
				B_GuildGreetings();
				return;
			};
		};
	};
};

