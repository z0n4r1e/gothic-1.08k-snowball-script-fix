
instance DIA_Homer_EXIT(C_Info)
{
	npc = BAU_935_Homer;
	nr = 999;
	condition = DIA_Homer_EXIT_Condition;
	information = DIA_Homer_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Homer_EXIT_Condition()
{
	return 1;
};

func void DIA_Homer_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Homer_Hello(C_Info)
{
	npc = BAU_935_Homer;
	nr = 1;
	condition = DIA_Homer_Hello_Condition;
	information = DIA_Homer_Hello_Info;
	permanent = 0;
	description = "���-������ �����?";
};


func int DIA_Homer_Hello_Condition()
{
	return 1;
};

func void DIA_Homer_Hello_Info()
{
	AI_Output(other,self,"DIA_Homer_Hello_15_00");	//���-������ �����?
	AI_Output(self,other,"DIA_Homer_Hello_02_01");	//� ��� ���� � �������. ������, ��� ���������� ��������� ����.
	AI_Output(self,other,"DIA_Homer_Hello_02_02");	//��� ����� ������ ������ � ������� ����������� ����� � ���������� ����� ��� �����.
	AI_Output(self,other,"DIA_Homer_Hello_02_03");	//���� ��� ����� ������������, ������� ������ ����������.  
};


instance DIA_Homer_BuiltDam(C_Info)
{
	npc = BAU_935_Homer;
	nr = 2;
	condition = DIA_Homer_BuiltDam_Condition;
	information = DIA_Homer_BuiltDam_Info;
	permanent = 0;
	description = "��� �� �������� �������?";
};


func int DIA_Homer_BuiltDam_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Homer_Hello))
	{
		return 1;
	};
};

func void DIA_Homer_BuiltDam_Info()
{
	AI_Output(other,self,"DIA_Homer_BuiltDam_15_00");	//��� �� �������� �������?
	AI_Output(self,other,"DIA_Homer_BuiltDam_02_01");	//��. � �������� ��� �������, ����� �� �������� ����� ������.
	AI_Output(self,other,"DIA_Homer_BuiltDam_02_02");	//�������, ��� ��������, �� � ��� ������� ����������.
};


var int Homer_DamLurker;

instance DIA_Homer_WannaHelp(C_Info)
{
	npc = BAU_935_Homer;
	nr = 1;
	condition = DIA_Homer_WannaHelp_Condition;
	information = DIA_Homer_WannaHelp_Info;
	permanent = 0;
	description = "���� �� � ���-�� ������? ";
};


func int DIA_Homer_WannaHelp_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Homer_Hello))
	{
		return 1;
	};
};

func void DIA_Homer_WannaHelp_Info()
{
	AI_Output(other,self,"DIA_Homer_WannaHelp_15_00");	//���� �� � ���-�� ������? 
	AI_Output(self,other,"DIA_Homer_WannaHelp_02_01");	//�������. ������ ����� ��� ����� �� ����������� ��� �������.
	Homer_DamLurker = LOG_RUNNING;
	Log_CreateTopic(CH1_DamLurker,LOG_MISSION);
	Log_SetTopicStatus(CH1_DamLurker,LOG_RUNNING);
	B_LogEntry(CH1_DamLurker,"����� ������ ���, ��� ���� �� ���� ������ �������. ���� � ����� ���������� ��, �� ����� � ������� ��������.");
};


instance DIA_Homer_Running(C_Info)
{
	npc = BAU_935_Homer;
	nr = 1;
	condition = DIA_Homer_Running_Condition;
	information = DIA_Homer_Running_Info;
	permanent = 0;
	description = "��� � ���� ����� ����� �����?";
};


func int DIA_Homer_Running_Condition()
{
	if(Homer_DamLurker == LOG_RUNNING)
	{
		return 1;
	};
};

func void DIA_Homer_Running_Info()
{
	AI_Output(other,self,"DIA_Homer_Running_15_00");	//��� � ���� ����� ����� �����?
	AI_Output(self,other,"DIA_Homer_Running_02_01");	//� �� ������� �� ������ ������� �����. ���� ����� �� �����. ������ �����, ������ ��� ��������� ������ �����.
	Homer_DamLurker = LOG_RUNNING;
	B_LogEntry(CH1_DamLurker,"� ����� ������ ���� ���� ��� ������ ������� ���-�� � �������� ���� �������.");
};


instance DIA_Homer_Success(C_Info)
{
	npc = BAU_935_Homer;
	nr = 2;
	condition = DIA_Homer_Success_Condition;
	information = DIA_Homer_Success_Info;
	permanent = 0;
	description = "� ���� �����!";
};


func int DIA_Homer_Success_Condition()
{
	var C_Npc Lurker;
	Lurker = Hlp_GetNpc(DamLurker);
	PrintDebugString(PD_MISSION,"name: ",Lurker.name);
	PrintDebugInt(PD_MISSION,"hp: ",Lurker.attribute);
	if((Homer_DamLurker == LOG_RUNNING) && Npc_HasItems(hero,ItAt_DamLurker_01))
	{
		return 1;
	};
};

func void DIA_Homer_Success_Info()
{
	AI_Output(other,self,"DIA_Homer_Success_15_00");	//� ���� �����!
	AI_Output(self,other,"DIA_Homer_Success_02_01");	//�������! ���� ������� ��� � ������ ��������� �����, ����� �������� �������.
	AI_Output(self,other,"DIA_Homer_Success_02_02");	//������, �������-��, � ����� ������� �������.
	Homer_DamLurker = LOG_SUCCESS;
	Log_SetTopicStatus(CH1_DamLurker,LOG_SUCCESS);
	B_LogEntry(CH1_DamLurker,"�� ������ ���������, ����� ����� ����� ����� ��������.");
	B_GiveXP(XP_ReportDeadDamLurker);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
};


instance DIA_Homer_PERM(C_Info)
{
	npc = BAU_935_Homer;
	nr = 2;
	condition = DIA_Homer_PERM_Condition;
	information = DIA_Homer_PERM_Info;
	permanent = 1;
	description = "��� � ������� � ��������?";
};


func int DIA_Homer_PERM_Condition()
{
	if(Homer_DamLurker == LOG_SUCCESS)
	{
		return 1;
	};
};

func void DIA_Homer_PERM_Info()
{
	AI_Output(other,self,"DIA_Homer_PERM_15_00");	//��� � ������� � ��������?
	AI_Output(self,other,"DIA_Homer_PERM_02_01");	//��� �������, ��� ��������, ������� ����� �� ����� ���������.
};

