
instance DIA_Melvin_Exit(C_Info)
{
	npc = VLK_582_Melvin;
	nr = 999;
	condition = DIA_Melvin_Exit_Condition;
	information = DIA_Melvin_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Melvin_Exit_Condition()
{
	return 1;
};

func void DIA_Melvin_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Melvin_Hello(C_Info)
{
	npc = VLK_582_Melvin;
	nr = 1;
	condition = DIA_Melvin_Hello_Condition;
	information = DIA_Melvin_Hello_Info;
	permanent = 0;
	description = "������! �� ���� �� ����� ������, ��?";
};


func int DIA_Melvin_Hello_Condition()
{
	return 1;
};

func void DIA_Melvin_Hello_Info()
{
	AI_Output(other,self,"DIA_Melvin_Hello_15_00");	//������! �� ���� �� ����� ������, ��?
	AI_Output(self,other,"DIA_Melvin_Hello_03_01");	//������ ��� ��! � ���� �� ������� ������ ��� ������ �����. � ���� ��� ������� �������� - �����. � ��������� ��� ����� ������, �� �� ����� ���������.
	Log_CreateTopic(CH1_RecruitDusty,LOG_MISSION);
	Log_SetTopicStatus(CH1_RecruitDusty,LOG_RUNNING);
	B_LogEntry(CH1_RecruitDusty,"������� ������ ������������� � ��������. ��� �������� ����� ���� ���������� � ���, ����� �������� ������ ������.");
};


instance DIA_Melvin_MetDusty(C_Info)
{
	npc = VLK_582_Melvin;
	nr = 1;
	condition = DIA_Melvin_MetDusty_Condition;
	information = DIA_Melvin_MetDusty_Info;
	permanent = 0;
	description = "� ���� ����� - ������������ � ��� ������ �������.";
};


func int DIA_Melvin_MetDusty_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Melvin_Hello) && Npc_KnowsInfo(hero,DIA_Dusty_Hello))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Melvin_MetDusty_Info()
{
	AI_Output(other,self,"DIA_Melvin_MetDusty_15_00");	//� ���� ����� - ������������ � ��� ������ �������.
	AI_Output(self,other,"DIA_Melvin_MetDusty_03_01");	//���� ������� ��� �����, �����, ��� ���������� ��� �����. ����� � ������ ��� �����, ��� � ������ ������, ��� ��� ����� ���������� ��� �������-���������!
	AI_Output(other,self,"DIA_Melvin_MetDusty_15_02");	//� ������� ���, ���� �����.
};

