
func void B_Story_CuredOrc()
{
	var C_Npc tarrok;
	B_LogEntry(CH4_UluMulu,"С той поры как я вернул орку рабу Тарроку его Особое Лекарство, он проявляет готовность помогать мне.");
	B_GiveXP(XP_CuredOrcSlave);
	tarrok = Hlp_GetNpc(FreemineOrc);
	tarrok.name[0] = "Таррок";
	FreemineOrc_SuchePotion = LOG_SUCCESS;
	FreemineOrc_LookingUlumulu = LOG_RUNNING;
	Knows_GetUluMulu = 1;
};

