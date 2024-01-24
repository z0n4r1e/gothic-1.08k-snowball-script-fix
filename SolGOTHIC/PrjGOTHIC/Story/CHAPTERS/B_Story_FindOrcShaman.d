
func void B_Story_FindOrcShaman()
{
	B_LogEntry(CH4_FindXardas,"Наконец-то я встретился с Ксардасом. Однако встреча прошла совершенно не так, как я ожидал. Его совершенно не интересовала куча руды, вместо этого он рассказал мне первую часть истории Спящего. Не знаю теперь как мне сообщить Сатурасу об этой беседе.");
	Log_CreateTopic(CH4_FindOrcShaman,LOG_MISSION);
	Log_SetTopicStatus(CH4_FindOrcShaman,LOG_RUNNING);
	B_LogEntry(CH4_FindOrcShaman,"Ксардас хочет вновь Испытать меня. Чтобы узнать вторую часть истории о Спящем мне придется посетить изгнанного Орка Шамана в Руинах Замка. Он стоит на вершине Высокой Горы к востоку от Башни Ксардаса. Мне не совсем понятно, как я могу помешать Шаману кидать в меня Огненные Шары. Придет время, придет и решение.");
	Wld_InsertNpc(ORC_2200_Shaman,"CASTLE_06");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(OrcWarrior4,"CASTLE_07");
	Wld_InsertNpc(StoneGolem,"CASTLE_04");
	FindOrcShaman = LOG_RUNNING;
};

