
instance DIA_BaalOrun_Exit(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 999;
	condition = DIA_BaalOrun_Exit_Condition;
	information = DIA_BaalOrun_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalOrun_Exit_Condition()
{
	return TRUE;
};

func void DIA_BaalOrun_Exit_Info()
{
	AI_StopProcessInfos(self);
};


var int BaalOrun_Ansprechbar;
var int BaalOrun_Sakrileg;

instance DIA_BaalOrun_NoTalk(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 2;
	condition = DIA_BaalOrun_NoTalk_Condition;
	information = DIA_BaalOrun_NoTalk_Info;
	permanent = 1;
	important = 1;
};


func int DIA_BaalOrun_NoTalk_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BaalOrun_Ansprechbar == FALSE) && (Npc_GetPermAttitude(self,other) != ATT_FRIENDLY))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalOrun_NoTalk_Info()
{
	Info_ClearChoices(DIA_BaalOrun_NoTalk);
	Info_AddChoice(DIA_BaalOrun_NoTalk,DIALOG_ENDE,DIA_BaalOrun_NoTalk_ENDE);
	Info_AddChoice(DIA_BaalOrun_NoTalk,"��� � �������, ��������?",DIA_BaalOrun_NoTalk_Imp);
	Info_AddChoice(DIA_BaalOrun_NoTalk,"�� �������� � ����� ������!",DIA_BaalOrun_NoTalk_Sleeper);
	Info_AddChoice(DIA_BaalOrun_NoTalk,"������! � ����� ���������.",DIA_BaalOrun_NoTalk_Hi);
};

func void DIA_BaalOrun_NoTalk_Hi()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Hi_15_00");	//������! � ����� ���������!
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Hi_12_01");	//�����...
	BaalOrun_Sakrileg = 1;
};

func void DIA_BaalOrun_NoTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Sleeper_15_00");	//�� �������� � ����� ������!
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Sleeper_12_01");	//�����...
	BaalOrun_Sakrileg = 1;
};

func void DIA_BaalOrun_NoTalk_Imp()
{
	AI_Output(other,self,"DIA_BaalOrun_NoTalk_Imp_15_00");	//��� � �������, ��������?
	AI_Output(self,other,"DIA_BaalOrun_NoTalk_Imp_12_01");	//�����...
	BaalOrun_Sakrileg = 1;
};

func void DIA_BaalOrun_NoTalk_ENDE()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalOrun_FirstTalk(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 1;
	condition = DIA_BaalOrun_FirstTalk_Condition;
	information = DIA_BaalOrun_FirstTalk_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalOrun_FirstTalk_Condition()
{
	if(Ghorim_KickHarlok == LOG_SUCCESS)
	{
		BaalOrun_Ansprechbar = 1;
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalOrun_FirstTalk_Info()
{
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_12_00");	//� ������������ � �������. �� ������ ������ �� ����� ������� ������� ������ - � �������� �����.
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_12_01");	//������ ������� �� ��� ������ ��� ���������� ������ ������.
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_12_02");	//��� ������ ��� ��� ������������� ������ ����������� ��������.
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_12_03");	//���� �������� �������� ���� � ����, �� �������� ���. ����������� � ��� � ������� ������� ���� � ����������� ������.
	B_GiveXP(XP_BaalOrunTalks);
	B_LogEntry(CH1_GhorimsRelief,"������ ������� ������. ������ ���-���� ������ ����������.");
	Log_SetTopicStatus(CH1_GhorimsRelief,LOG_SUCCESS);
	Log_CreateTopic(CH1_DeliverWeed,LOG_MISSION);
	Log_SetTopicStatus(CH1_DeliverWeed,LOG_RUNNING);
	B_LogEntry(CH1_DeliverWeed,"������, ���� ������� ��������� ����������� �� ���� ����� �����. ������ � �������� ����� �������� ���� ������ ��������� � �������� � �������� ��� ��� ������.");
	BaalOrun_FetchWeed = LOG_RUNNING;
	Info_ClearChoices(DIA_BaalOrun_FirstTalk);
	Info_AddChoice(DIA_BaalOrun_FirstTalk,"...",DIA_BaalOrun_FirstTalk_MuteEnde);
	Info_AddChoice(DIA_BaalOrun_FirstTalk,"��� � ���� ����� ���� ���������?",DIA_BaalOrun_FirstTalk_Where);
};

func void DIA_BaalOrun_FirstTalk_Where()
{
	AI_Output(other,self,"DIA_BaalOrun_FirstTalk_Where_15_00");	//��� � ���� ����� ���� ���������?
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_Where_12_01");	//� ��� �� �������� ���� �������� �������!
	AI_Output(self,other,"DIA_BaalOrun_FirstTalk_Where_12_02");	//������ �������, ���� ������� �� ���� ���������������� ��������! � ������. ���� ������ ����� ����� ��� ���� ���.
	Info_ClearChoices(DIA_BaalOrun_FirstTalk);
	AI_StopProcessInfos(self);
	BaalOrun_Ansprechbar = 0;
};

func void DIA_BaalOrun_FirstTalk_MuteEnde()
{
	Info_ClearChoices(DIA_BaalOrun_FirstTalk);
	AI_StopProcessInfos(self);
	BaalOrun_Ansprechbar = 0;
};


instance DIA_BaalOrun_GotWeed(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 1;
	condition = DIA_BaalOrun_GotWeed_Condition;
	information = DIA_BaalOrun_GotWeed_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalOrun_GotWeed_Condition()
{
	if(Viran_Bloodflies == LOG_SUCCESS)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalOrun_GotWeed_Info()
{
	AI_Output(self,other,"DIA_BaalOrun_GotWeed_12_00");	//�� ������� ����� ���������...
	AI_Output(self,other,"DIA_BaalOrun_GotWeed_12_01");	//�� �� ������ �������, ��� ���������� �� ����� �������, �� ������� ���� ������ ������ �������.
	AI_Output(self,other,"DIA_BaalOrun_GotWeed_12_02");	//� ������, ��� �� ������� ������ ���� ����������.
	BaalOrun_Ansprechbar = 1;
	Log_CreateTopic(CH1_JoinPsi,LOG_MISSION);
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		Log_SetTopicStatus(CH1_JoinPsi,LOG_RUNNING);
	};
	B_LogEntry(CH1_JoinPsi,"���� ���� ������ ���� ��������� ������ �������, ��������� � ������� ������ ����������� �� ������� �� ������.");
	B_GiveXP(XP_ImpressedBaalOrun);
};


instance DIA_BaalOrun_WeedAtKaloms(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 1;
	condition = DIA_BaalOrun_WeedAtKaloms_Condition;
	information = DIA_BaalOrun_WeedAtKaloms_Info;
	permanent = 0;
	description = "� �������� �������� ��� ������.";
};


func int DIA_BaalOrun_WeedAtKaloms_Condition()
{
	if(BaalOrun_FetchWeed == LOG_SUCCESS)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalOrun_WeedAtKaloms_Info()
{
	AI_Output(other,self,"DIA_BaalOrun_WeedAtKaloms_15_00");	//� �������� �������� ��� ������.
	AI_Output(self,other,"DIA_BaalOrun_WeedAtKaloms_12_01");	//�� ������ ���������. ��� ��������� ������� �� ���� ��������. ������.
	AI_Output(self,other,"DIA_BaalOrun_WeedAtKaloms_12_02");	//��� ���������� ���������� ���. �� ������� ��������������� �� ������ ���� ���, �� � �������, ��� �������� ���� ������� ������.
	BaalOrun_Ansprechbar = 1;
	B_GiveXP(XP_ReportToBaalOrun);
	CreateInvItem(self,ItArScrollSleep);
	B_GiveInvItems(self,other,ItArScrollSleep,1);
};


instance DIA_BaalOrun_Perm(C_Info)
{
	npc = GUR_1209_BaalOrun;
	nr = 2;
	condition = DIA_BaalOrun_Perm_Condition;
	information = DIA_BaalOrun_Perm_Info;
	permanent = 1;
	description = "��� ������������ ������ ���������?";
};


func int DIA_BaalOrun_Perm_Condition()
{
	if(BaalOrun_FetchWeed == LOG_SUCCESS)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_BaalOrun_Perm_Info()
{
	AI_Output(other,self,"DIA_BaalOrun_Perm_15_00");	//��� ������������ ������ ���������?
	AI_Output(self,other,"DIA_BaalOrun_Perm_12_01");	//������ �� ��� �������� �� ������� ����� ���, � � ���������� � ��� ���������� ��������� �� ������ ��� ����������� ���� - �� ���� ������� ��� �� ����� � ������� ��������.
	AI_Output(self,other,"DIA_BaalOrun_Perm_12_02");	//��� ������, ������� ���� ���������� � ����������� �������� �������.
};

