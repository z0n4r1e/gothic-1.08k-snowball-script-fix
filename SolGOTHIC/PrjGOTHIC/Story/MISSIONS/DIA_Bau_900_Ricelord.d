
instance DIA_Ricelord_EXIT(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 999;
	condition = DIA_Ricelord_EXIT_Condition;
	information = DIA_Ricelord_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Ricelord_EXIT_Condition()
{
	return 1;
};

func void DIA_Ricelord_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Ricelord_Hello(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_Hello_Condition;
	information = DIA_Ricelord_Hello_Info;
	permanent = 0;
	description = "�� ����������� �������� ������, ���?";
};


func int DIA_Ricelord_Hello_Condition()
{
	return 1;
};

func void DIA_Ricelord_Hello_Info()
{
	AI_Output(other,self,"DIA_Ricelord_Hello_15_00");	//�� ����������� �������� ������, ���?
	AI_Output(self,other,"DIA_Ricelord_Hello_12_01");	//�� � ���? ����� ������?
};


instance DIA_Ricelord_Arbeit(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_Arbeit_Condition;
	information = DIA_Ricelord_Arbeit_Info;
	permanent = 0;
	description = "� ��� ���� �� �������� ������?";
};


func int DIA_Ricelord_Arbeit_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Ricelord_Hello) && !Npc_KnowsInfo(hero,DIA_Lefty_First) && (LeftyDead == FALSE))
	{
		return 1;
	};
};

func void DIA_Ricelord_Arbeit_Info()
{
	AI_Output(other,self,"DIA_Ricelord_Arbeit_15_00");	//� � ���� ���� ��� ���� ������?
	AI_Output(self,other,"DIA_Ricelord_Arbeit_12_01");	//����� �������� � �����. ������ ����� �� ������� ��� ������ �� �����.
};


instance DIA_Ricelord_TRADE(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 800;
	condition = DIA_Ricelord_TRADE_Condition;
	information = DIA_Ricelord_TRADE_Info;
	permanent = 1;
	description = "�� ����� �� ��������� ������...";
	trade = 1;
};


func int DIA_Ricelord_TRADE_Condition()
{
};

func void DIA_Ricelord_TRADE_Info()
{
	AI_Output(other,self,"DIA_Ricelord_TRADE_15_00");	//�� ����� �� ��������� ������...
	AI_Output(self,other,"DIA_Ricelord_TRADE_12_01");	//� ��� �� ������ ����������?
};


instance DIA_Ricelord_LeftySentMe(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_LeftySentMe_Condition;
	information = DIA_Ricelord_LeftySentMe_Info;
	permanent = 1;
	description = "���� ������ �����.";
};


func int DIA_Ricelord_LeftySentMe_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Ricelord_Hello) && (Lefty_Mission == LOG_RUNNING) && (Ricelord_AskedForWater == FALSE) && (LeftyDead == FALSE))
	{
		return 1;
	};
};

func void DIA_Ricelord_LeftySentMe_Info()
{
	AI_Output(other,self,"DIA_Ricelord_LeftySentMe_15_00");	//���� ������ �����.
	AI_Output(self,other,"DIA_Ricelord_LeftySentMe_12_01");	//��, � ��� �� ������? 
	Ricelord_AskedForWater = TRUE;
};


instance DIA_Ricelord_GetWater(C_Info)
{
	npc = Bau_900_Ricelord;
	nr = 1;
	condition = DIA_Ricelord_GetWater_Condition;
	information = DIA_Ricelord_GetWater_Info;
	permanent = 1;
	description = "� ������ ������� ���������� ����.";
};


func int DIA_Ricelord_GetWater_Condition()
{
	if(Ricelord_AskedForWater == TRUE)
	{
		return 1;
	};
};

func void DIA_Ricelord_GetWater_Info()
{
	AI_Output(other,self,"DIA_Ricelord_GetWater_15_00");	//� ������ ������� ���������� ����.
	if(Lefty_WorkDay == Wld_GetDay())
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_12_01");	//������. ��� ���� ������ �������.
		AI_Output(self,other,"DIA_Ricelord_GetWater_12_02");	//�������� ��� ����� ����� ������, ��� ��� ��������, ����� ���� ��������� �������. 
		CreateInvItems(self,ItFo_Potion_Water_01,12);
		B_GiveInvItems(self,other,ItFo_Potion_Water_01,12);
		Ricelord_AskedForWater = FALSE;
		B_LogEntry(CH1_CarryWater,"���� ��� ��� ������ �������.");
		AI_StopProcessInfos(self);
	}
	else if(Lefty_WorkDay == (Wld_GetDay() - 1))
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_TooLate_12_00");	//��� ���� �����, ������! ����� ����� � ����, �� ����� ���� ���-�� �������.
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_Ricelord_GetWater_TooLate_12_01");	//��� ���� ��������� ���� �����, ������! ����� ����� � ����, �� ����� ���� ���-��� �������.
		AI_StopProcessInfos(self);
	};
};

