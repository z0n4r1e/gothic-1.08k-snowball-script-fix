
func void B_Story_GotUluMulu()
{
	CreateInvItem(hero,UluMulu);
	B_LogEntry(CH4_UluMulu,"�������. ������ ������� ��� ������ ���������� � ������ �� ��� ���-����. ��� �������� ���� ��������, ��� ���� ������ ��� ������ ������� � � ����� ���� ����� ������� ���.");
	Log_SetTopicStatus(CH4_UluMulu,LOG_SUCCESS);
	B_GiveXP(XP_GotUluMulu);
	FreemineOrc_LookingUlumulu = LOG_SUCCESS;
};

