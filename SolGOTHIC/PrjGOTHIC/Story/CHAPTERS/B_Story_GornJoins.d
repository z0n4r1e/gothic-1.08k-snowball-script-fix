
func void B_Story_GornJoins()
{
	var C_Npc gorn;
	CreateInvItem(hero,ItKe_Freemine);
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE2");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE3");
	Wld_InsertNpc(Razor,"OW_PATH_3001_MOVE4");
	gorn = Hlp_GetNpc(PC_Fighter);
	Npc_ExchangeRoutine(gorn,"FollowToFMC");
	B_GiveXP(XP_GornJoins);
	B_LogEntry(CH4_UluMulu,"Мы с Горном должны провести тайную операцию по возвращению Свободной Шахты. То, что друг Ур-Шака содержится как раз там, можно счесть за благосклонность судьбы.");
	gorn.aivar[AIV_PARTYMEMBER] = 1;
	Gorn_JoinedForFM = 1;
};

