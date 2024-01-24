
func void B_Story_BringFoci()
{
	var C_Npc gorn;
	var C_Npc lester;
	var C_Npc Lestermonster;
	var C_Npc milten;
	var C_Npc diego;
	var C_Npc DiegoMonster;
	var C_Npc sld723;
	var C_Npc sld732;
	CreateInvItems(self,ItWrFocimap,2);
	B_GiveInvItems(self,hero,ItWrFocimap,2);
	Npc_RemoveInvItem(hero,ItWrFocimap);
	CreateInvItem(hero,ItArScrollTeleport2);
	gorn = Hlp_GetNpc(PC_Fighter);
	Npc_ExchangeRoutine(gorn,"RuinWait");
	AI_ContinueRoutine(gorn);
	lester = Hlp_GetNpc(PC_Psionic);
	Npc_ExchangeRoutine(lester,"FORTRESSWAIT");
	AI_ContinueRoutine(lester);
	Lestermonster = Hlp_GetNpc(Bridgegolem);
	if(Npc_IsDead(Lestermonster))
	{
		Wld_InsertNpc(Bridgegolem,"PATH_TO_PLATEAU04_BRIDGE2");
	};
	milten = Hlp_GetNpc(PC_Mage);
	Npc_ExchangeRoutine(milten,"SHWait");
	AI_ContinueRoutine(milten);
	diego = Hlp_GetNpc(PC_Thief);
	Npc_ExchangeRoutine(diego,"TROLLWAIT");
	AI_ContinueRoutine(diego);
	DiegoMonster = Hlp_GetNpc(Troll);
	if(Npc_IsDead(DiegoMonster))
	{
		Wld_InsertNpc(Troll,"LOCATION_12_14");
	};
	sld723 = Hlp_GetNpc(SLD_723_Soeldner);
	sld723.aivar[AIV_PASSGATE] = 1;
	sld732 = Hlp_GetNpc(SLD_732_Soeldner);
	sld732.aivar[AIV_PASSGATE] = 1;
	B_LogEntry(CH3_EscapePlanNC,"Я предложил Сатурасу свою помощь в завершении плана побега. Следующей моей задачей станет розыск оставшихся четырех юниторов.");
	Log_SetTopicStatus(CH3_EscapePlanNC,LOG_SUCCESS);
	Log_CreateTopic(CH3_BringFoci,LOG_MISSION);
	Log_SetTopicStatus(CH3_BringFoci,LOG_RUNNING);
	B_LogEntry(CH3_BringFoci,"После того как я передал Сатурасу Юнитор и Альманах из Болотного Лагеря, он попросил меня найти оставшиеся четыре камня фокусировки, которых пока еще нет у Магов Воды.");
	B_LogEntry(CH3_BringFoci,"Сатурас дал мне Старую Карту, на которой отмечены последние места нахождения Юниторов, а также магический Свиток для Телепортации, который перенесет меня обратно к Магам Воды.");
	B_LogEntry(CH3_BringFoci,"Риордан, один из Магов Воды, приготовил для меня несколько Зелий, которые помогут мне в Походе. Я могу забрать их в его Алхимической Лаборатории на Верхнем уровне Нового Лагеря.");
	Saturas_BringFoci = 1;
};

