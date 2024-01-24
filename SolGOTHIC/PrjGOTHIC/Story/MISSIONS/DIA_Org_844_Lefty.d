
instance DIA_Lefty_Exit(C_Info)
{
	npc = Org_844_Lefty;
	nr = 999;
	condition = DIA_Lefty_Exit_Condition;
	information = DIA_Lefty_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Lefty_Exit_Condition()
{
	return TRUE;
};

func void DIA_Lefty_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Lefty_FirstAtNight(C_Info)
{
	npc = Org_844_Lefty;
	nr = 1;
	condition = DIA_Lefty_FirstAtNight_Condition;
	information = DIA_Lefty_FirstAtNight_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_Lefty_FirstAtNight_Condition()
{
	if(Wld_IsTime(19,0,8,0) && !Npc_KnowsInfo(hero,DIA_Lefty_First))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Lefty_FirstAtNight_Info()
{
	AI_Output(other,self,"DIA_Aidan_Hello_15_00");	//��� �� �����������?
	AI_Output(self,other,"DIA_846_Hello_07_01");	//� ������� �� �����.
	AI_Output(other,self,"DIA_Ricelord_Arbeit_15_00");	//� ��� ���� �� �������� ������?
	AI_Output(self,other,"DIA_Shrike_GetLost_07_01");	//��������� �����.
	AI_StopProcessInfos(self);
};


instance DIA_Lefty_First(C_Info)
{
	npc = Org_844_Lefty;
	nr = 1;
	condition = DIA_Lefty_First_Condition;
	information = DIA_Lefty_First_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Lefty_First_Condition()
{
	if(Wld_IsTime(8,0,19,0) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Lefty_First_Info()
{
	AI_Output(self,other,"DIA_Lefty_First_07_00");	//��! ���������? �� ���� ��������, ����� ����� ���� ���������� �� ������� ����. 
	AI_Output(self,other,"DIA_Lefty_First_07_01");	//���� ������ ����� ������������ ������ ��������. ��� �������? 
	Log_CreateTopic(CH1_CarryWater,LOG_MISSION);
	Log_SetTopicStatus(CH1_CarryWater,LOG_RUNNING);
	B_LogEntry(CH1_CarryWater,"��� �� ������ ������ �� ����� ����� �����, ����� � ����� ���� ���������� �� ������� ����.");
	Info_ClearChoices(DIA_Lefty_First);
	Info_AddChoice(DIA_Lefty_First,"����� ���� �����...",DIA_Lefty_First_Later);
	Info_AddChoice(DIA_Lefty_First,"��� ���� ���� ����� ����������!",DIA_Lefty_First_Never);
	Info_AddChoice(DIA_Lefty_First,"���� ��� ������.",DIA_Lefty_First_Yes);
};

func void DIA_Lefty_First_Yes()
{
	AI_Output(other,self,"DIA_Lefty_First_Yes_15_00");	//���� ��� ������.
	AI_Output(self,other,"DIA_Lefty_First_Yes_07_01");	//�������! ����������� � �����. �� ���� ���� ���� � ��������� ���, ��� �����.
	Lefty_WorkDay = B_SetDayTolerance();
	Lefty_Mission = LOG_RUNNING;
	An_Bauern_verteilt = 0;
	B_LogEntry(CH1_CarryWater,"�����, ��� � ������ ������, �� � ����������, ������ ��� ������ ��� � ������� ����������. ��� ����� ������� ������� ���� � ��� ����������� �����.");
	Info_ClearChoices(DIA_Lefty_First);
};

func void DIA_Lefty_First_Never()
{
	AI_Output(other,self,"DIA_Lefty_First_Never_15_00");	//��� ���� ���� ����� ����������!
	AI_Output(self,other,"DIA_Lefty_First_Never_07_01");	//������ ������� - ��� �����. � ����� ���� ������� �������!
	Lefty_WorkDay = B_SetDayTolerance();
	Lefty_Mission = LOG_FAILED;
	B_LogEntry(CH1_CarryWater,"����� ����� �� ����������� ��, ��� � ������ ��� �����������. � �-�� �����, ��� ��� � ������ ������ ���� ������.");
	Info_ClearChoices(DIA_Lefty_First);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void DIA_Lefty_First_Later()
{
	AI_Output(other,self,"DIA_Lefty_First_Later_15_00");	//����� ���� �����...
	AI_Output(self,other,"DIA_Lefty_First_Later_07_01");	//����� ����� ��� ������. ���� ������ ��� ����� ������. �� ������ ��� ������ ��� ���?
};


var int CarriedWaterForLefty;

instance DIA_Lefty_WorkDay(C_Info)
{
	npc = Org_844_Lefty;
	nr = 1;
	condition = DIA_Lefty_WorkDay_Condition;
	information = DIA_Lefty_WorkDay_Info;
	permanent = 1;
	important = 1;
};


func int DIA_Lefty_WorkDay_Condition()
{
	if((Wld_IsTime(8,0,19,0) || (Lefty_Mission == LOG_SUCCESS)) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE) && ((Lefty_WorkDay <= (Wld_GetDay() - 1)) || (Lefty_Mission == LOG_SUCCESS)))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Lefty_WorkDay_Info()
{
	AI_Output(self,other,"DIA_Lefty_WorkDay_07_00");	//��, ��!
	if(Lefty_Mission == LOG_FAILED)
	{
		AI_Output(self,other,"DIA_Lefty_WorkDay_NextChance_07_00");	//���� �������! � ��� ���� ��� ���� ����.
		AI_Output(self,other,"DIA_Lefty_WorkDay_NextChance_07_01");	//���������� �� ���������� �� ���� ���! ����������� � �����, ������� ���� � ���� �� ����������. ����? 
		Lefty_WorkDay = B_SetDayTolerance();
		Lefty_Mission = LOG_RUNNING;
		An_Bauern_verteilt = 0;
		B_LogEntry(CH1_CarryWater,"� ����� �������� �����! �� �����, ����� � ����� � ����� � ������ ���� ��� �������� �� ������� �����.");
		AI_StopProcessInfos(self);
	}
	else if(Lefty_Mission == LOG_RUNNING)
	{
		AI_Output(self,other,"DIA_Lefty_WorkDay_StillRunning_07_00");	//� �� ����� ���� ������� ���� ����������!
		AI_Output(self,other,"DIA_Lefty_WorkDay_StillRunning_07_01");	//�� ����� �����, ������� ������� ��������, � ����� �� ��������� ��!
		Lefty_WorkDay = B_SetDayTolerance();
		Lefty_Mission = LOG_FAILED;
		B_LogEntry(CH1_CarryWater,"����� ������ � ��� �����, ����� �������, ��� � ��� � �� ���������� � ����� �� ��� ���! �������� ������� ���� �����.");
		AI_StopProcessInfos(self);
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,1,"");
	}
	else if(Lefty_Mission == LOG_SUCCESS)
	{
		AI_Output(self,other,"DIA_Lefty_WorkDay_SUCCESS_07_00");	//������! ��� ��� ���� �� ���-���� ��������.
		AI_Output(self,other,"DIA_Lefty_WorkDay_SUCCESS_07_01");	//�����, ��� ���� ��� ��� ��� ����. ������ �� ������ ��������� ���� ������ ����. � ������ �������� - ���, ������� �����!
		Lefty_WorkDay = B_SetDayTolerance();
		Lefty_Mission = LOG_RUNNING;
		An_Bauern_verteilt = 0;
		if(!CarriedWaterForLefty)
		{
			B_LogEntry(CH1_CarryWater,"���� ����� �� ����. � �������� ���� ���� �����������, �� ������ ����� �����, ����� � ���� ������ ���� ���������. �����, ����� ������ ���� ��������� ���� ����� �����������.");
			B_GiveXP(XP_LeftyCarriedWater);
			CarriedWaterForLefty = 1;
		};
		AI_StopProcessInfos(self);
	};
};


instance DIA_Lefty_NeverAgain(C_Info)
{
	npc = Org_844_Lefty;
	nr = 1;
	condition = DIA_Lefty_NeverAgain_Condition;
	information = DIA_Lefty_NeverAgain_Info;
	permanent = 1;
	description = "������ �� ������ ������ ��� ���� ���.";
};


func int DIA_Lefty_NeverAgain_Condition()
{
	if((Lefty_Mission == LOG_RUNNING) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Lefty_NeverAgain_Info()
{
	AI_Output(other,self,"DIA_Lefty_NeverAgain_15_00");	//������ �� ������ ������ ��� ���� ���.
	AI_Output(self,other,"DIA_Lefty_NeverAgain_07_01");	//�? ����� ���� ���� �������?
	AI_Output(self,other,"DIA_Lefty_NeverAgain_07_02");	//�����, ����� ��������� ����, ��� �� ��� �������!
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};


var int LeftyWasBeaten;

instance DIA_Lefty_PERM(C_Info)
{
	npc = Org_844_Lefty;
	nr = 1;
	condition = DIA_Lefty_PERM_Condition;
	information = DIA_Lefty_PERM_Info;
	permanent = 1;
	description = "��� ����, ���� ���?";
};


func int DIA_Lefty_PERM_Condition()
{
	if(self.aivar[AIV_WASDEFEATEDBYSC] == TRUE)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Lefty_PERM_Info()
{
	AI_Output(other,self,"DIA_Lefty_PERM_15_00");	//��� ����, ���� ���?
	AI_Output(self,other,"DIA_Lefty_PERM_07_01");	//��, ������! ��� ���� �����?
	if(!LeftyWasBeaten)
	{
		B_LogEntry(CH1_CarryWater,"� ��������� �����, ��� ��� ����� ������ �� ���������� �� ��� �� ������ �������������. ��������� ���� �� �������� ������, ����� �� ���������� ��-��������.");
		Log_SetTopicStatus(CH1_CarryWater,LOG_SUCCESS);
		B_GiveXP(XP_LeftyConfronted);
		LeftyWasBeaten = 1;
	};
	Info_ClearChoices(DIA_Lefty_PERM);
	Info_AddChoice(DIA_Lefty_PERM,"������ ����� ��������� ����.",DIA_Lefty_PERM_Nothing);
	Info_AddChoice(DIA_Lefty_PERM,"������, ��������� ����� ����.",DIA_Lefty_PERM_Durstig);
	Info_AddChoice(DIA_Lefty_PERM,"� ���� ��� �������� ����... ",DIA_Lefty_PERM_AufsMaul);
};

func void DIA_Lefty_PERM_AufsMaul()
{
	AI_Output(other,self,"DIA_Lefty_PERM_AufsMaul_15_00");	//� ���� ��� �������� ����, � � ������ ���� ������� ������������... ������ �������� ��� �������-������. 
	B_Say(self,other,"$YOUWANNAFOOLME");
	Info_ClearChoices(DIA_Lefty_PERM);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void DIA_Lefty_PERM_Durstig()
{
	AI_Output(other,self,"DIA_Lefty_PERM_Durstig_15_00");	//������, ��������� ����� ����.
	AI_Output(self,other,"DIA_Lefty_PERM_Durstig_07_01");	//� ���������... �� ��������.
	AI_StopProcessInfos(self);
};

func void DIA_Lefty_PERM_Nothing()
{
	AI_Output(other,self,"DIA_Lefty_PERM_Nothing_15_00");	//������ ����� ��������� ����.
	AI_StopProcessInfos(self);
};

