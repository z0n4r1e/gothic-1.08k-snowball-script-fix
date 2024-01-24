
func void B_Story_AccessToXardas()
{
	CreateInvItem(hero,ItArRuneTeleport3);
	B_LogEntry(CH4_FindXardas,"Все три Сердца Големов я отдал Демону Стражу. Взамен я получил магическую руну телепортации. Посмотрим, куда она меня приведет.");
	B_GiveXP(XP_DeliveredGolemhearts);
	FindGolemHearts = 4;
};

