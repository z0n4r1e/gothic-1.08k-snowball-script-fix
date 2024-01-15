
instance DIA_Harlok_Exit(C_Info)
{
	npc = NOV_1358_Harlok;
	nr = 999;
	condition = DIA_Harlok_Exit_Condition;
	information = DIA_Harlok_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Harlok_Exit_Condition()
{
	return 1;
};

func void DIA_Harlok_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Harlok_FetchHarlok(C_Info)
{
	npc = NOV_1358_Harlok;
	nr = 1;
	condition = DIA_Harlok_FetchHarlok_Condition;
	information = DIA_Harlok_FetchHarlok_Info;
	permanent = 0;
	description = "���� ������� �����.";
};


func int DIA_Harlok_FetchHarlok_Condition()
{
	if(Ghorim_KickHarlok == LOG_RUNNING)
	{
		return 1;
	};
};

func void DIA_Harlok_FetchHarlok_Info()
{
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_15_00");	//���� ������� �����.
	AI_Output(self,other,"DIA_Harlok_FetchHarlok_01_01");	//���?
	Info_ClearChoices(DIA_Harlok_FetchHarlok);
	Info_AddChoice(DIA_Harlok_FetchHarlok,DIALOG_BACK,DIA_Harlok_FetchHarlok_BACK);
	Info_AddChoice(DIA_Harlok_FetchHarlok,"���� ���� ������� � ������, ��� ��� �������� � ����!",DIA_Harlok_FetchHarlok_OrElse);
	Info_AddChoice(DIA_Harlok_FetchHarlok,"� ������ ��������� ����, ��� �� ������ ��� �������.",DIA_Harlok_FetchHarlok_Please);
};

func int DIA_Harlok_FetchHarlok_Please()
{
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_Please_15_00");	//� ������ ��������� ����, ��� �� ������ ��� �������.
	AI_Output(self,other,"DIA_Harlok_FetchHarlok_Please_01_01");	//��� ���� � ����� �������. ������� ��� �����, ����� � ��������, �����?
};

func int DIA_Harlok_FetchHarlok_OrElse()
{
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_OrElse_15_00");	//���� ���� ������� � ������ ��� ��� �������� � ����!
	AI_Output(self,other,"DIA_Harlok_FetchHarlok_OrElse_01_01");	//������ �������� ��� ��� �������� ���, �����!
	AI_StopProcessInfos(self);
};

func int DIA_Harlok_FetchHarlok_BACK()
{
	AI_Output(other,self,"DIA_Harlok_FetchHarlok_BACK_15_00");	//�����, �����.
	Info_ClearChoices(DIA_Harlok_FetchHarlok);
};


instance DIA_Harlok_HarlokAgain(C_Info)
{
	npc = NOV_1358_Harlok;
	nr = 1;
	condition = DIA_Harlok_HarlokAgain_Condition;
	information = DIA_Harlok_HarlokAgain_Info;
	permanent = 0;
	description = "�� ������ ������� ������ ��������!";
};


func int DIA_Harlok_HarlokAgain_Condition()
{
	if((self.aivar[AIV_WASDEFEATEDBYSC] == FALSE) && Npc_KnowsInfo(hero,DIA_Harlok_FetchHarlok))
	{
		return 1;
	};
};

func void DIA_Harlok_HarlokAgain_Info()
{
	AI_Output(other,self,"DIA_Harlok_HarlokAgain_15_00");	//������ ����� ��������� ����, ��� �� ������ ������� ������ ��������!
	AI_Output(self,other,"DIA_Harlok_HarlokAgain_01_01");	//������! � �� ������ ���� - ����������!
	B_LogEntry(CH1_GhorimsRelief,"������, ������ �� ������ �����, �� � �����. ��������, ��� ����� ������ ���");
};


instance DIA_Harlok_SendHarlok(C_Info)
{
	npc = NOV_1358_Harlok;
	nr = 1;
	condition = DIA_Harlok_SendHarlok_Condition;
	information = DIA_Harlok_SendHarlok_Info;
	permanent = 0;
	description = "��, ������ �� ����� ������� ������ ��������?";
};


func int DIA_Harlok_SendHarlok_Condition()
{
	if((self.aivar[AIV_WASDEFEATEDBYSC] == TRUE) && Npc_KnowsInfo(hero,DIA_Harlok_FetchHarlok))
	{
		return 1;
	};
};

func void DIA_Harlok_SendHarlok_Info()
{
	var C_Npc Ghorim;
	AI_Output(other,self,"DIA_Harlok_SendHarlok_15_00");	//��, ������ �� ����� ������� ������ ��������?
	AI_Output(self,other,"DIA_Harlok_SendHarlok_01_01");	//������� ������ � �������! ������ �� ������� �� � ���� ����?
	AI_Output(other,self,"DIA_Harlok_SendHarlok_15_02");	//������ ���� ������� ���� �� �������.
	AI_Output(self,other,"DIA_Harlok_SendHarlok_01_03");	//�����, ����� - ��� ���... �����!
	B_LogEntry(CH1_GhorimsRelief,"�� ������� �������-�� �����. ������ �� ���������� � �������.");
	B_GiveXP(XP_SentHarlok);
	Npc_ExchangeRoutine(self,"START");
	Ghorim = Hlp_GetNpc(NOV_1310_Ghorim);
	Npc_ExchangeRoutine(Ghorim,"START");
	Ghorim_KickHarlok = LOG_SUCCESS;
	Npc_SetPermAttitude(Ghorim,ATT_FRIENDLY);
	Npc_SetPermAttitude(self,ATT_ANGRY);
	AI_StopProcessInfos(self);
};


instance DIA_Harlok_Angry(C_Info)
{
	npc = NOV_1358_Harlok;
	nr = 1;
	condition = DIA_Harlok_Angry_Condition;
	information = DIA_Harlok_Angry_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Harlok_Angry_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (Ghorim_KickHarlok == LOG_SUCCESS))
	{
		return 1;
	};
};

func void DIA_Harlok_Angry_Info()
{
	AI_Output(self,other,"DIA_Harlok_Angry_01_00");	//������ ���� � �����! � ���...
	AI_StopProcessInfos(self);
};

