
func void B_Story_FoundUrShak()
{
	var C_Npc riordian;
	B_LogEntry(CH4_FindOrcShaman,"� ���� ���� ������ �� ����� ��-��� �� ����� ��� �������������. � �������� ������������� �� ��������� ��� ���������� ����� ������� �������. ������ � ���� ��������� � �������� � ��������� ���� ������.");
	Log_CreateTopic(CH4_UluMulu,LOG_MISSION);
	Log_SetTopicStatus(CH4_UluMulu,LOG_RUNNING);
	B_LogEntry(CH4_UluMulu,"��-���, ��������� �����, ��������� ��� ������������ ������, ��� ���������� � ��������� ���� ������� ��� ������� �����, �� ���������� � ��� �� ����� ������ �����. ��� ����������� ���-����, ��� ������ ���� ��������� ����, ���������� ����� ������. ���� ��-����, ������� � ����� �����, ����� ������ � ������������ ����� �����.");
	B_GiveXP(XP_FoundOrcShaman);
	riordian = Hlp_GetNpc(KDW_605_Riordian);
	Npc_ExchangeRoutine(riordian,"FoundUrShak");
	UrShak_SpokeOfUluMulu = 1;
};

