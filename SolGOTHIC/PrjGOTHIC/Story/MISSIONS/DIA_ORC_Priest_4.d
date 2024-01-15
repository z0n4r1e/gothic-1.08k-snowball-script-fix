
instance Info_HighPriest4(C_Info)
{
	npc = ORC_Priest_4;
	nr = 1;
	condition = Info_HighPriest4_Condition;
	information = Info_HighPriest4_Info;
	permanent = 0;
	important = 1;
};


func int Info_HighPriest4_Condition()
{
	return 1;
};

func void Info_HighPriest4_Info()
{
	B_SelectWeapon(self,other);
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"Info_HighPriest4_17_01");	//������ �������� ������ ������� ��������� ��������!!!
	AI_Output(self,other,"Info_HighPriest4_17_02");	//���������� ��������� �������� � �������!!!
	AI_Output(other,self,"Info_HighPriest4_15_03");	//����������, ��� ���� ��� �� ������� �� ����!
	B_LogEntry(CH4_EnterTemple,"������-�����, ���� �� ������� �������, ������� ��� ������. �� �� �� ������ ��� ��������, �� ���� � �������� �����!");
	AI_StopProcessInfos(self);
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
};

