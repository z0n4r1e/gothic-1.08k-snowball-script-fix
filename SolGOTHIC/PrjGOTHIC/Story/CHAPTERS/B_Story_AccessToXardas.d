
func void B_Story_AccessToXardas()
{
	CreateInvItem(hero,ItArRuneTeleport3);
	B_LogEntry(CH4_FindXardas,"��� ��� ������ ������� � ����� ������ ������. ������ � ������� ���������� ���� ������������. ���������, ���� ��� ���� ��������.");
	B_GiveXP(XP_DeliveredGolemhearts);
	FindGolemHearts = 4;
};

