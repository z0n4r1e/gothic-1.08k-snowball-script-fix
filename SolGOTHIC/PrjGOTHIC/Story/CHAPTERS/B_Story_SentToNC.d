
func void B_Story_SentToNC()
{
	var C_Npc angar;
	var C_Npc YBerion;
	var C_Npc gorn;
	angar = Hlp_GetNpc(GUR_1202_CorAngar);
	Npc_ExchangeRoutine(angar,"start");
	YBerion = Hlp_GetNpc(GUR_1200_YBerion);
	Npc_ExchangeRoutine(YBerion,"dead");
	gorn = Hlp_GetNpc(PC_Fighter);
	PrintDebugNpc(PD_MISSION,gorn.name);
	Npc_ExchangeRoutine(gorn,"NCWAIT");
	AI_ContinueRoutine(gorn);
	Log_CreateTopic(CH3_EscapePlanNC,LOG_MISSION);
	Log_SetTopicStatus(CH3_EscapePlanNC,LOG_RUNNING);
	B_LogEntry(CH3_EscapePlanNC,"Ю'Берион, духовный лидер Братства, мертв! Пусть дух его пребудет в покое. В своих последних словах он возложил всю надежду на Спасение из под Барьера на плечи Магов Круга Воды.");
	B_LogEntry(CH3_EscapePlanNC,"Я решился. Пойду в Новый Лагерь и поддержу план побега Магов Воды. Кор Ангар отдал мне Ключ от Сундука в Алхимической Лаборатории Кор Галома. Там, по его словам, должны находиться как Юнитор, так и Альманах, которые я добыл ранее для Братства. Кор Ангар считает, что эти артефакты понадобятся магам из Нового Лагеря для завершения их Плана.");
	CreateInvItem(self,ItArRuneTeleport5);
	B_GiveInvItems(self,hero,ItArRuneTeleport5,1);
	CorAngar_SendToNC = 1;
};

