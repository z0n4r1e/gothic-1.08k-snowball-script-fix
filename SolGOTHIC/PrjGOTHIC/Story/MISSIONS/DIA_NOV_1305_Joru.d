
instance DIA_Joru_Exit(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 999;
	condition = DIA_Joru_Exit_Condition;
	information = DIA_Joru_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Joru_Exit_Condition()
{
	return 1;
};

func void DIA_Joru_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Joru_Greet(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 1;
	condition = DIA_Joru_Greet_Condition;
	information = DIA_Joru_Greet_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_Joru_Greet_Condition()
{
	return 1;
};

func void DIA_Joru_Greet_Info()
{
	AI_Output(other,self,"DIA_Joru_Greet_15_00");	//��� �� �����������?
	AI_Output(self,other,"DIA_Joru_Greet_07_01");	//� ���� �������� ����� �������.
	AI_Output(self,other,"DIA_Joru_Greet_07_02");	//� ��� ���� ��� �����, �� ����� � ���� ������ - ����� �� ����.
	AI_Output(self,other,"DIA_Joru_Greet_07_03");	//� ���� ������� � ����� �`��������. �� - ���������. �� ������ ���, ��� ���� � ���� ����� ���������, � ������ ��� ����� ����������.
	AI_Output(self,other,"DIA_Joru_Greet_07_04");	//�� � �� ��������� � ����. ���������� � ���� ����� � ����� ������, ���������?
	AI_Output(self,other,"DIA_Joru_Greet_07_05");	//� ���� ��� �������� �� ����, ������� � ��������� ������.
};


instance DIA_Joru_Tester(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 1;
	condition = DIA_Joru_Tester_Condition;
	information = DIA_Joru_Tester_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_Joru_Tester_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Joru_Greet))
	{
		return 1;
	};
};

func void DIA_Joru_Tester_Info()
{
	AI_Output(other,self,"DIA_Joru_Tester_15_00");	//��� �� �����������?
	AI_Output(self,other,"DIA_Joru_Tester_07_01");	//������ � ����� �������� � ��������� ����� ��������, ������� ��� ����� ������� � ����� �����������.
	AI_Output(self,other,"DIA_Joru_Tester_07_02");	//��� � ��������� ���� ��� �������� ������ ��� ����� �������. � �� ���������� ��.
	AI_Output(self,other,"DIA_Joru_Tester_07_03");	//��� ����� ���������� ���� ��������. ������ ���������� ����, �� ������ �������� �� ������.
};


instance DIA_Joru_SleeperContact(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 1;
	condition = DIA_Joru_SleeperContact_Condition;
	information = DIA_Joru_SleeperContact_Info;
	permanent = 0;
	description = "� �� �����-������ ������� �� ������?";
};


func int DIA_Joru_SleeperContact_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Joru_Tester))
	{
		return 1;
	};
};

func void DIA_Joru_SleeperContact_Info()
{
	AI_Output(other,self,"DIA_Joru_SleeperContact_15_00");	//� �� �����-������ ������� �� ������?
	AI_Output(self,other,"DIA_Joru_SleeperContact_07_01");	//���. ��� ���. � ��� ������, ��� ��� �� ������� ����� ��������.
	AI_Output(self,other,"DIA_Joru_SleeperContact_07_02");	//��� ������ ���������� ������ ���������, � ��� ������, ��� ��� �������, ��� �� �������� �����.
	AI_Output(self,other,"DIA_Joru_SleeperContact_07_03");	//���� ������ ��������� ������� ��������, �� ����� �������� ��� ����...
	AI_Output(self,other,"DIA_Joru_SleeperContact_07_04");	//�� ����� � � ��� ����� ����, � �����, �������� �������� �� �������, � ���� ����� �������� ����� �������.
};


var int Joru_BringJoints;

instance DIA_Joru_JoinPsi(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 5;
	condition = DIA_Joru_JoinPsi_Condition;
	information = DIA_Joru_JoinPsi_Info;
	permanent = 0;
	description = "� ����� �� �������������� � ������ ������. �� ��� �� ��� ������?";
};


func int DIA_Joru_JoinPsi_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Joru_Greet) && (Npc_GetTrueGuild(hero) == GIL_None))
	{
		return 1;
	};
};

func void DIA_Joru_JoinPsi_Info()
{
	AI_Output(other,self,"DIA_Joru_JoinPsi_15_00");	//� ����� �� �������������� � ������ ������. �� ��� �� ��� ������?
	AI_Output(self,other,"DIA_Joru_JoinPsi_07_01");	//�� ������ �������������� � ���? ������! ������-��... ��, �����, ��� � ����� ���� ������.
	AI_Output(self,other,"DIA_Joru_JoinPsi_07_02");	//� ���� ��� �� ����, �� ������� ������������ �������� � ��������.
	AI_Output(self,other,"DIA_Joru_JoinPsi_07_03");	//������ ��� ���������. �� ���� ��� ������� � �������?
	Info_ClearChoices(DIA_Joru_JoinPsi);
	Info_AddChoice(DIA_Joru_JoinPsi,"���.",DIA_Joru_JoinPsi_Nein);
	Info_AddChoice(DIA_Joru_JoinPsi,"��.",DIA_Joru_JoinPsi_Ja);
};

func void DIA_Joru_JoinPsi_Ja()
{
	AI_Output(self,other,"DIA_Joru_JoinPsi_Ja_07_00");	//����� �� ������ ��� �������� ���� ������� ����. ���� �� ������ �� ���, � ���������� ���� ������.
	AI_Output(other,self,"DIA_Joru_JoinPsi_Ja_15_01");	//� ������� �� ����.
	Joru_BringJoints = LOG_RUNNING;
	Info_ClearChoices(DIA_Joru_JoinPsi);
};

func void DIA_Joru_JoinPsi_Nein()
{
	AI_Output(self,other,"DIA_Joru_JoinPsi_Nein_07_00");	//��� ��� � ���� � ������ ���� ������� ����. ���� �� ������ ��� ���� ��������, � ���������� ������ ����.
	AI_Output(other,self,"DIA_Joru_JoinPsi_Nein_15_01");	//� ������� �� ����.
	Joru_BringJoints = LOG_RUNNING;
	Log_CreateTopic(CH1_JoinPsi,LOG_MISSION);
	Log_SetTopicStatus(CH1_JoinPsi,LOG_RUNNING);
	B_LogEntry(CH1_JoinPsi,"���� ����� �� �������� ��� ������ ���������, ������� � ���� � �������.");
	Info_ClearChoices(DIA_Joru_JoinPsi);
};


instance DIA_Joru_JointsRunning(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 5;
	condition = DIA_Joru_JointsRunning_Condition;
	information = DIA_Joru_JointsRunning_Info;
	permanent = 1;
	description = "�������� � ����. ������ ��������.";
};


func int DIA_Joru_JointsRunning_Condition()
{
	if(Joru_BringJoints == LOG_RUNNING)
	{
		return 1;
	};
};

func void DIA_Joru_JointsRunning_Info()
{
	AI_Output(other,self,"DIA_Joru_JointsRunning_15_00");	//�������� � ����. ������ ��������.
	if(Npc_HasItems(other,ItMiJoint_2) >= 3)
	{
		AI_Output(self,other,"DIA_Joru_JointsRunning_07_01");	//������! ��, ������ ����, �������, ��� ����� �� ���� �� ����� � ����� �������������.
		AI_Output(self,other,"DIA_Joru_JointsRunning_07_02");	//����� �������� ������, ����� ���������� �� ��� �����������. � �������� ����, ��� ��� �������.
		B_GiveInvItems(other,self,ItMiJoint_2,3);
		Joru_BringJoints = LOG_SUCCESS;
		B_GiveXP(XP_WeedForJoru);
	}
	else
	{
		AI_Output(self,other,"DIA_Joru_JointsRunning_NO_JOINTS_07_00");	//�������, �� ������� �� ���� ������� '��������� �������'?! ����� ��� ��������, � ����� � ������ ����!
	};
};


var int Joru_Tips;

instance DIA_Joru_ImpressGurus(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 5;
	condition = DIA_Joru_ImpressGurus_Condition;
	information = DIA_Joru_ImpressGurus_Info;
	permanent = 1;
	description = "��� ���������� ����������� �� ����?";
};


func int DIA_Joru_ImpressGurus_Condition()
{
	if(Joru_BringJoints == LOG_SUCCESS)
	{
		return 1;
	};
};

func void DIA_Joru_ImpressGurus_Info()
{
	AI_Output(other,self,"DIA_Joru_ImpressGurus_15_00");	//��� ���������� ����������� �� ����?
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_01");	//���� ����� ���������� �������� � ����� �������.
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_02");	//���� ������, ����� �� ������� �� ���� ��������, ��������� �����.
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_03");	//������ �� ������� ���������� �� ��� ����� �����! ������� ����-������ �� �������� � ��� ��� ������ ��� ���-������ ����� �����.
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_04");	//������� ����� ����� � ������ ������� - ��� ��� ��� � ������� �����. �����, ����� ���� ������ ������ ������. �������� � ���, ����� ��� ��������� �� ����� ����������.
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_05");	//���� � ���������� ���� ������� ���� �� ������ - ������ ���������� ���� ��������.
	AI_Output(other,self,"DIA_Joru_ImpressGurus_15_06");	//��������� �� �����.
	AI_Output(self,other,"DIA_Joru_ImpressGurus_07_07");	//��� - ������ ���� ������!
	if(Joru_JoinPsi == FALSE)
	{
		B_LogEntry(CH1_JoinPsi,"���� ����� ����� �������, ���� � ����� ���������� ���������� ��� �� ��� ���������.");
		B_LogEntry(CH1_JoinPsi,"���� �������� � �������, ��� ��� ������� ����� ������. ��� ����� ����� � ������� �����. ���� ���������, ��� ����� ��� �� ������ ����.");
		Joru_JoinPsi = TRUE;
	};
	Joru_Tips = TRUE;
};


instance DIA_Joru_GetMagic(C_Info)
{
	npc = NOV_1305_Joru;
	nr = 5;
	condition = DIA_Joru_GetMagic_Condition;
	information = DIA_Joru_GetMagic_Info;
	permanent = 1;
	description = "��� ��������� ����� �������?";
};


func int DIA_Joru_GetMagic_Condition()
{
	if(Joru_Tips == TRUE)
	{
		return 1;
	};
};

func void DIA_Joru_GetMagic_Info()
{
	if(Joru_Tips_Mage == FALSE)
	{
		Log_CreateTopic(GE_TraderPSI,LOG_NOTE);
		B_LogEntry(GE_TraderPSI,"���� ����� ������� ���� � ������.");
		Joru_Tips_Mage = TRUE;
	};
	AI_Output(other,self,"DIA_Joru_GetMagic_15_00");	//��� ��������� ����� �������?
	AI_Output(self,other,"DIA_Joru_GetMagic_07_01");	//���� ����� ������� ���� � ���������� ������. ������, ���� �� �� ������ � ����� �������������, ����� �� ����� �� �����.
	AI_Output(self,other,"DIA_Joru_GetMagic_07_02");	//��������, ���� ������ ������ ������ ����.
};

