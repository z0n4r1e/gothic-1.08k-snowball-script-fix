
func void B_Story_ReturnedFromUrShak()
{
	var C_Npc riordian;
	B_LogEntry(CH4_FindOrcShaman,"Похоже Ксардас был весьма доволен тем, что мне удалось узнать от Ур-Шака. Мой дальнейший путь лежит теперь в Свободную Шахту, чтобы отыскать друга Ур-Шака.");
	Log_SetTopicStatus(CH4_FindOrcShaman,LOG_SUCCESS);
	Log_CreateTopic(CH4_EnterTemple,LOG_MISSION);
	Log_SetTopicStatus(CH4_EnterTemple,LOG_RUNNING);
	B_LogEntry(CH4_EnterTemple,"Постепенно я начинаю понимать цель, которую преследует Ксардас. Я попросил его Помочь мне с разрушением Барьера, и он действительно подсказал мне путь. Однако этот путь никак не связан с Горой Руды, которую собрали Маги Воды. Вместо этого он отправил меня искать путь в подземный Храм Спящего.");
	B_GiveXP(XP_ReturnedFromUrShak);
	riordian = Hlp_GetNpc(KDW_605_Riordian);
	Npc_ExchangeRoutine(riordian,"FoundUrShak");
	UrShak_SpokeOfUluMulu = 1;
};

