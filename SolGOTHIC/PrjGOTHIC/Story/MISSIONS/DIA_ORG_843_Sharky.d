
instance Org_843_Sharky_Exit(C_Info)
{
	npc = ORG_843_Sharky;
	nr = 999;
	condition = Org_843_Sharky_Exit_Condition;
	information = Org_843_Sharky_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Org_843_Sharky_Exit_Condition()
{
	return 1;
};

func void Org_843_Sharky_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Org_843_Sharky_Fisk(C_Info)
{
	npc = ORG_843_Sharky;
	nr = 2;
	condition = Org_843_Sharky_Fisk_Condition;
	information = Org_843_Sharky_Fisk_Info;
	permanent = 0;
	description = "����� �� ������� ������ ����� ����� ���������.";
	trade = 1;
};


func int Org_843_Sharky_Fisk_Condition()
{
	if(Fisk_GetNewHehler == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void Org_843_Sharky_Fisk_Info()
{
	AI_Output(other,self,"Org_843_Sharky_Fisk_Info_15_00");	//����� �� ������� ������ ����� ����� ���������.
	AI_Output(self,other,"Org_843_Sharky_Fisk_Info_10_01");	//� ������ �� ������������� �� ���� ���?
	AI_Output(other,self,"Org_843_Sharky_Fisk_Info_15_02");	//�����, ��� �� �������� �������� ������� ����.
	AI_Output(self,other,"Org_843_Sharky_Fisk_Info_10_03");	//������ �� � ���... ������� �����, ��� ��������� ��������� ���� �� ����� ������������ �� ����.
};


instance Org_843_Sharky_TRADE(C_Info)
{
	npc = ORG_843_Sharky;
	condition = Org_843_Sharky_TRADE_Condition;
	information = Org_843_Sharky_TRADE_Info;
	important = 0;
	permanent = 1;
	description = "��� ���-��� �����...";
	trade = 1;
};


func int Org_843_Sharky_TRADE_Condition()
{
	if(Npc_KnowsInfo(hero,Org_843_Sharky_GREET))
	{
		return TRUE;
	};
};

func void Org_843_Sharky_TRADE_Info()
{
	AI_Output(other,self,"Org_843_Sharky_TRADE_Info_15_01");	//��� ���-��� �����...
};


instance Org_843_Sharky_GREET(C_Info)
{
	npc = ORG_843_Sharky;
	condition = Org_843_Sharky_GREET_Condition;
	information = Org_843_Sharky_GREET_Info;
	important = 0;
	permanent = 0;
	description = "��, ��� ����?";
};


func int Org_843_Sharky_GREET_Condition()
{
	return TRUE;
};

func void Org_843_Sharky_GREET_Info()
{
	AI_Output(other,self,"Org_843_Sharky_GREET_Info_15_01");	//��, ��� ����?
	AI_Output(self,other,"Org_843_Sharky_GREET_Info_10_02");	//������ ������ ���-������?
	Log_CreateTopic(GE_TraderNC,LOG_NOTE);
	B_LogEntry(GE_TraderNC,"��� ����� ���������� ������� � ������� ��������. ������ �� �������� �� ������ ������.");
};

