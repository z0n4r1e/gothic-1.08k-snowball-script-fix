
func void B_Story_GotoOrcGraveyard()
{
	var C_Npc Kalom;
	var C_Npc Novize;
	var C_Npc Novize_1;
	var C_Npc Novize_2;
	var C_Npc Novize_3;
	var C_Npc Novize_4;
	var C_Npc Novize_5;
	var C_Npc Novize_6;
	var C_Npc Novize_7;
	var C_Npc Novize_8;
	var C_Npc Novize_9;
	var C_Npc Novize_10;
	var C_Npc Novize_11;
	Log_CreateTopic(CH3_OrcGraveyard,LOG_MISSION);
	Log_SetTopicStatus(CH3_OrcGraveyard,LOG_RUNNING);
	B_LogEntry(CH3_OrcGraveyard,"������� ��������� �� ������ ������� �� ��������� ��������. ���� ����� ���� ������ ������������ ������� ����� � �� �����. �'������, �������� ����� ��������, ���� � ������� � ���������� ���������� ������, ����������� � ���� ���������.");
	B_LogEntry(CH3_OrcGraveyard,"��� �����, ����� �������, �������� ���� ����������� �� ������ ��������, ��� ���������� �� ��������� ������. ���� ���� ����� ��� ���������� ���� � ���������� ��������, ����� ���������� ����� ������ ������� �� �����.");
	Wld_InsertNpc(OrcBiter,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc(OrcBiter,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc(OrcBiter,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc(OrcBiter,"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc(OrcScout,"OW_PATH_198_ORCGRAVEYARD5");
	Wld_InsertNpc(OrcScout,"OW_PATH_198_ORCGRAVEYARD6");
	Wld_InsertNpc(OrcScout,"OW_PATH_198_ORCGRAVEYARD7");
	Wld_InsertNpc(OrcScout,"OW_PATH_198_ORCGRAVEYARD8");
	Wld_InsertNpc(Tpl_1463_Templer,"OW_PATH_198_ORCGRAVEYARD8");
	Kalom = Hlp_GetNpc(GUR_1201_CorKalom);
	Npc_ExchangeRoutine(Kalom,"FLEE");
	CorAngar_GotoOGY = TRUE;
	Novize = Hlp_GetNpc(NOV_1319_Novize);
	Npc_ExchangeRoutine(Novize,"START");
	AI_ContinueRoutine(Novize);
	Novize_1 = Hlp_GetNpc(NOV_1320_Novize);
	Npc_ExchangeRoutine(Novize_1,"START");
	AI_ContinueRoutine(Novize_1);
	Novize_2 = Hlp_GetNpc(NOV_1343_Novize);
	Npc_ExchangeRoutine(Novize_2,"START");
	AI_ContinueRoutine(Novize_2);
	Novize_3 = Hlp_GetNpc(NOV_1344_Novize);
	Npc_ExchangeRoutine(Novize_3,"START");
	AI_ContinueRoutine(Novize_3);
	Novize_4 = Hlp_GetNpc(NOV_1339_Novize);
	Npc_ExchangeRoutine(Novize_4,"START");
	AI_ContinueRoutine(Novize_4);
	Novize_5 = Hlp_GetNpc(NOV_1341_Novize);
	Npc_ExchangeRoutine(Novize_5,"START");
	AI_ContinueRoutine(Novize_5);
	Novize_6 = Hlp_GetNpc(NOV_1346_Novize);
	Npc_ExchangeRoutine(Novize_6,"START");
	AI_ContinueRoutine(Novize_6);
	Novize_7 = Hlp_GetNpc(NOV_1347_Novize);
	Npc_ExchangeRoutine(Novize_7,"START");
	AI_ContinueRoutine(Novize_7);
	Novize_8 = Hlp_GetNpc(NOV_1348_Novize);
	Npc_ExchangeRoutine(Novize_8,"START");
	AI_ContinueRoutine(Novize_8);
	Novize_9 = Hlp_GetNpc(NOV_1349_Novize);
	Npc_ExchangeRoutine(Novize_9,"START");
	AI_ContinueRoutine(Novize_9);
	Novize_10 = Hlp_GetNpc(NOV_1338_Novize);
	Npc_ExchangeRoutine(Novize_10,"START");
	AI_ContinueRoutine(Novize_10);
	Novize_11 = Hlp_GetNpc(NOV_1337_Novize);
	Npc_ExchangeRoutine(Novize_11,"START");
	AI_ContinueRoutine(Novize_11);
};

