
func void B_Story_ReturnedFromUrShak()
{
	var C_Npc riordian;
	B_LogEntry(CH4_FindOrcShaman,"������ ������� ������ ������� ���, ��� � ����� �� ��-����. ��� ���������� ���� ����� � ��������� �����, ����� �������� ����� ��-����.");
	Log_SetTopicStatus(CH4_FindOrcShaman,LOG_SUCCESS);
	Log_CreateTopic(CH4_EnterTemple,LOG_MISSION);
	Log_SetTopicStatus(CH4_EnterTemple,LOG_RUNNING);
	B_LogEntry(CH4_EnterTemple,"� ������� �������� ����, ������� ���������� �������. � �������� ��� ������ ��� � ����������� �������, � �� ��������� ��� ����. ������ ���� ���� ����� �� ������ � ����� ����, ������� ������� ���� ����. �� �������� ���� ������ ���� � ��������� ���� �������.");
	B_GiveXP(XP_ReturnedFromUrShak);
	riordian = Hlp_GetNpc(KDW_605_Riordian);
	Npc_ExchangeRoutine(riordian,"FoundUrShak");
	UrShak_SpokeOfUluMulu = TRUE;
};

