
func void B_Story_LoadSword()
{
	var C_Npc milten;
	B_LogEntry(CH5_Uriziel,"������� ������ ���������� �������. ������ ��� ����� ��-���������� ������� �������� ���������� ������� � ���, ������� ����� ��� ��������. � �������, � ������� ���� ����� ��������, ���������� ����� ��������, � ��� �������� � ����� ������ ����");
	B_GiveXP(XP_ReturnedFromSunkenTower);
	CreateInvItem(hero,Scroll4Milten);
	milten = Hlp_GetNpc(PC_Mage);
	Npc_ExchangeRoutine(milten,"LSWait");
	LoadSword = TRUE;
};

