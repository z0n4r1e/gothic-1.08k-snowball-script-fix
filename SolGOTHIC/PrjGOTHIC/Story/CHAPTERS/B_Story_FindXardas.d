
func void B_Story_FindXardas()
{
	Log_CreateTopic(CH4_FindXardas,LOG_MISSION);
	Log_SetTopicStatus(CH4_FindXardas,LOG_RUNNING);
	B_LogEntry(CH4_FindXardas,"После того, как Маги Огня были убиты, Сатурас рассказал мне, что руководить созданием Магического Барьера был направлен Тринадцатый Маг. Только этот, ПОСЛЕДНИЙ, может помочь взорвать Кучу Руды.");
	B_LogEntry(CH4_FindXardas,"Этот тринадцатый маг, известный под именем Ксардас, живет в уединении в Башне посреди Орочьих Земель. Я согласился отправиться к нему, чтобы просить о Помощи.");
	Wld_InsertNpc(XardasDemon,"DT_E1_06");
	FindXardas = 1;
};

