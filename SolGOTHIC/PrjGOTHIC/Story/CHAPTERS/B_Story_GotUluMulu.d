
func void B_Story_GotUluMulu()
{
	CreateInvItem(hero,UluMulu);
	B_LogEntry(CH4_UluMulu,"Дело сделано. Таррок получил от меня все четыре компонента и изготовил из них Улу-Мулу. Мне остается лишь надеятся, что Орки в городе над Храмом Спящего и в самом деле будут почитать его.");
	Log_SetTopicStatus(CH4_UluMulu,LOG_SUCCESS);
	B_GiveXP(XP_GotUluMulu);
	FreemineOrc_LookingUlumulu = LOG_SUCCESS;
};

