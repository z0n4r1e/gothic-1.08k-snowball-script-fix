
instance DIA_Skip_Exit(C_Info)
{
	npc = Grd_211_Skip;
	nr = 999;
	condition = DIA_Skip_Exit_Condition;
	information = DIA_Skip_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Skip_Exit_Condition()
{
	return 1;
};

func void DIA_Skip_Exit_Info()
{
	AI_StopProcessInfos(self);
};


var int Skip_TradeFree;

instance DIA_Skip_First(C_Info)
{
	npc = Grd_211_Skip;
	nr = 1;
	condition = DIA_Skip_First_Condition;
	information = DIA_Skip_First_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_Skip_First_Condition()
{
	if(!((Npc_GetTrueGuild(other) == GIL_STT) || (Npc_GetTrueGuild(other) == GIL_GRD) || (Npc_GetTrueGuild(other) == GIL_KDF)))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Skip_First_Info()
{
	AI_Output(other,self,"DIA_Skip_First_15_00");	//��� �� �����������?
	AI_Output(self,other,"DIA_Skip_First_12_01");	//� ��������� ������� ��� ����������.
	AI_Output(other,self,"DIA_Skip_First_15_02");	//�� �������� ������?
	AI_Output(self,other,"DIA_Skip_First_12_03");	//������ ������ � ��� �����.
	if(!Npc_KnowsInfo(hero,DIA_Raven_Equipment))
	{
		Log_CreateTopic(GE_TraderOC,LOG_NOTE);
		B_LogEntry(GE_TraderOC,"�������� ���� �������������� ������� �� ������ �����. �� ������ ��� ����� ������.");
	};
	Info_ClearChoices(DIA_Skip_First);
	Info_AddChoice(DIA_Skip_First,"��� ����. ��������!",DIA_Skip_First_BACK);
	Info_AddChoice(DIA_Skip_First,"���� ������� �����. �� ����� ��� ��������� ������.",DIA_Skip_First_Thorus);
	Info_AddChoice(DIA_Skip_First,"���� ������� �����.",DIA_Skip_First_Gomez);
};

func void DIA_Skip_First_Gomez()
{
	AI_Output(other,self,"DIA_Skip_First_Gomez_15_00");	//���� ������� �����. �� ������, ��� �� ������ ��������� ��� ���� ����������.
	AI_Output(self,other,"DIA_Skip_First_Gomez_12_01");	//��� ������, ��? ����� ������� � ������ ������ �� ����, ��� � ���� ����.
	AI_Output(self,other,"DIA_Skip_First_Gomez_12_02");	//�������� ������, ���� � �� ����������!
	Info_ClearChoices(DIA_Skip_First);
	AI_StopProcessInfos(self);
};

func void DIA_Skip_First_Thorus()
{
	AI_Output(other,self,"DIA_Skip_First_Thorus_15_00");	//���� ������� �����. �� ����� ��� ��������� ������.
	AI_Output(self,other,"DIA_Skip_First_Thorus_12_01");	//��?
	Info_ClearChoices(DIA_Skip_First);
	Info_AddChoice(DIA_Skip_First,"������ �� ���� ������ �� �������� ���? ",DIA_Skip_First_Thorus_AskHim);
	Info_AddChoice(DIA_Skip_First,"����� ������!",DIA_Skip_First_Thorus_KickAss);
	Info_AddChoice(DIA_Skip_First,"�� �����, ����� � ���-��� ������ ��� ����...",DIA_Skip_First_Thorus_Stranger);
};

func void DIA_Skip_First_BACK()
{
	AI_Output(other,self,"DIA_Skip_First_BACK_15_00");	//��� ����. ��������!
	Info_ClearChoices(DIA_Skip_First);
	AI_StopProcessInfos(self);
};

func void DIA_Skip_First_Thorus_Stranger()
{
	AI_Output(other,self,"DIA_Skip_First_Thorus_Stranger_15_00");	//�� �����, ����� � ���-��� ������ ��� ����... ��������� �������, ������� �� �� ����� �� ������ �� ���.
	AI_Output(self,other,"DIA_Skip_First_Thorus_Stranger_12_01");	//��? � �� �� �������� ������ �����, ��� ������� ���� �� ���, �����?
	Info_ClearChoices(DIA_Skip_First);
	Info_AddChoice(DIA_Skip_First,"������ �� ���� ������ �� �������� ���? ",DIA_Skip_First_Thorus_AskHim);
	Info_AddChoice(DIA_Skip_First,"����� ������!",DIA_Skip_First_Thorus_KickAssAGAIN);
};

func void DIA_Skip_First_Thorus_KickAss()
{
	AI_Output(other,self,"DIA_Skip_First_Thorus_KickAss_15_00");	//�� ����� ������ ���� ����� ������� �� ��� ���, ���� �� �� ������ ��� ������.
	AI_Output(self,other,"DIA_Skip_First_Thorus_KickAss_12_01");	//� ����� ����? ��� �������, ���� �� �� ��������� ������ ���������� ������, ��� � ���� ������ ���� �������.
	Info_ClearChoices(DIA_Skip_First);
	AI_StopProcessInfos(self);
};

func void DIA_Skip_First_Thorus_AskHim()
{
	AI_Output(other,self,"DIA_Skip_First_Thorus_AskHim_15_00");	//������ �� ���� ������ �� �������� ���? 
	AI_Output(self,other,"DIA_Skip_First_Thorus_AskHim_12_01");	//������ �� �����������, ������ ��� � � ������. �� �� ������. ������, �� ������� ��������, ��� �� ������� � ���.
	AI_Output(self,other,"DIA_Skip_First_Thorus_AskHim_12_02");	//�� ����, ��� ���� �������, �� �� ����� ����� � �� �������� ������� ������!
	Info_ClearChoices(DIA_Skip_First);
	AI_StopProcessInfos(self);
};

func void DIA_Skip_First_Thorus_KickAssAGAIN()
{
	AI_Output(other,self,"DIA_Skip_First_Thorus_KickAssAGAIN_15_00");	//�� ����� ������ ���� ����� ������� �� ��� ���, ���� �� �� ������ ��� ������.
	AI_Output(self,other,"DIA_Skip_First_Thorus_KickAssAGAIN_12_01");	//�����, ������, ��� ���� �����?
	Info_ClearChoices(DIA_Skip_First);
	Skip_TradeFree = TRUE;
};


instance DIA_Skip_VERPATZT(C_Info)
{
	npc = Grd_211_Skip;
	nr = 1;
	condition = DIA_Skip_VERPATZT_Condition;
	information = DIA_Skip_VERPATZT_Info;
	permanent = 1;
	description = "� �����, ��� ����� �������������� �� ������ ����������...";
};


func int DIA_Skip_VERPATZT_Condition()
{
	if(!((Npc_GetTrueGuild(other) == GIL_STT) || (Npc_GetTrueGuild(other) == GIL_GRD) || (Npc_GetTrueGuild(other) == GIL_KDF)) && (Npc_KnowsInfo(hero,DIA_Skip_First) && (Skip_TradeFree == FALSE)))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Skip_VERPATZT_Info()
{
	AI_Output(other,self,"DIA_Skip_VERPATZT_15_00");	//� �����, ��� ����� ��������� � �������������� �� ������ ����������...
	AI_Output(self,other,"DIA_Skip_VERPATZT_12_01");	//����������!
};


instance GRD_211_Skip_TRADE(C_Info)
{
	npc = Grd_211_Skip;
	condition = GRD_211_Skip_TRADE_Condition;
	information = GRD_211_Skip_TRADE_Info;
	permanent = 1;
	description = "��� ����� ����� ��������� �����.";
	trade = 1;
};


func int GRD_211_Skip_TRADE_Condition()
{
	if((Npc_GetTrueGuild(other) == GIL_STT) || (Npc_GetTrueGuild(other) == GIL_GRD) || (Npc_GetTrueGuild(other) == GIL_KDF) || (Skip_TradeFree == TRUE))
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_211_Skip_TRADE_Info()
{
	AI_Output(other,self,"GRD_211_Skip_TRADE_Info_15_01");	//��� ����� ����� ��������� �����.
	AI_Output(self,other,"GRD_211_Skip_TRADE_Info_12_02");	//� ���� ������� ���� ��� ���.
};


instance GRD_211_Skip_WELCOME(C_Info)
{
	npc = Grd_211_Skip;
	condition = GRD_211_Skip_WELCOME_Condition;
	information = GRD_211_Skip_WELCOME_Info;
	important = 1;
	permanent = 0;
};


func int GRD_211_Skip_WELCOME_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_GRD)
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_211_Skip_WELCOME_Info()
{
	AI_Output(self,other,"GRD_211_Skip_WELCOME_Info_12_01");	//��, � �� ������� ����� ������������ ��� �������!
};

