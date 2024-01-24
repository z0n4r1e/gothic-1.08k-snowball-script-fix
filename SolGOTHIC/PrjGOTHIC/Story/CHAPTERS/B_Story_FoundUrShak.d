
func void B_Story_FoundUrShak()
{
	var C_Npc riordian;
	B_LogEntry(CH4_FindOrcShaman,"Я спас Орка Шамана по имени Ур-Шак от Гнева его Соплеменников. В качестве Благодарности он рассказал мне Оставшуюся Часть истории Спящего. Теперь я могу вернуться к Ксардасу и завершить свою миссию.");
	Log_CreateTopic(CH4_UluMulu,LOG_MISSION);
	Log_SetTopicStatus(CH4_UluMulu,LOG_RUNNING);
	B_LogEntry(CH4_UluMulu,"Ур-Шак, Изгнанный Шаман, рассказал мне единственный Способ, как проникнуть в Подземный Храм Спящего под Городом Орков, не ввязываясь в бой со всеми Орками сразу. Мне понадобится УЛУ-МУЛУ, это своего рода Священный Знак, почитаемый всеми Орками. Друг Ур-Шака, пленный в шахте людей, может помочь в изготовлении этого Знака.");
	B_GiveXP(XP_FoundOrcShaman);
	riordian = Hlp_GetNpc(KDW_605_Riordian);
	Npc_ExchangeRoutine(riordian,"FoundUrShak");
	UrShak_SpokeOfUluMulu = 1;
};

