
func void B_Story_FindXardas()
{
	Log_CreateTopic(CH4_FindXardas,LOG_MISSION);
	Log_SetTopicStatus(CH4_FindXardas,LOG_RUNNING);
	B_LogEntry(CH4_FindXardas,"��� ���� ���� ���� �����. ����� ������. ������� ��������� ���, ��� � �������� ������� ����������� ���������� �����. ������ ����, ���������, ����� ������ �������� ����.");
	B_LogEntry(CH4_FindXardas,"����������� ���, ��������� ��� ������ �������, ����� ��������� ����� ������� ������� ������. � ���������� ����� ����, ����� ������� � ������.");
	Wld_InsertNpc(XardasDemon,"DT_E1_06");
	FindXardas = TRUE;
};

