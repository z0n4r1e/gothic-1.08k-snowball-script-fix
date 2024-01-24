
func void B_Story_ShowedUrizielToXardas()
{
	B_LogEntry(CH4_EnterTemple,"Ксардас был заметно удивлен, тем, что мне удалось пробратся в Подземный Храм. Похоже, он стал считать меня Героем орочьего Пророчества.");
	Log_SetTopicStatus(CH4_EnterTemple,LOG_SUCCESS);
	Log_CreateTopic(CH5_Uriziel,LOG_MISSION);
	Log_SetTopicStatus(CH5_Uriziel,LOG_RUNNING);
	B_LogEntry(CH5_Uriziel,"Ксардас узнал странный Меч, найденный мной в Храме Спящего. Это УРИЗЕЛЬ. По преданию этот Клинок обладал огромной Силой в былые времена, но со временем потерял всю свою магическую Энергию. Мне нужно найти Способ вернуть этому Оружию его прежнюю Силу.");
	B_GiveXP(XP_ShowUrizielToXardas);
};

