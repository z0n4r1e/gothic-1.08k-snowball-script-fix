
instance DIA_Caine_Exit(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 999;
	condition = DIA_Caine_Exit_Condition;
	information = DIA_Caine_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Caine_Exit_Condition()
{
	return TRUE;
};

func void DIA_Caine_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Caine_Hallo(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 1;
	condition = DIA_Caine_Hallo_Condition;
	information = DIA_Caine_Hallo_Info;
	permanent = 0;
	description = "������! � ����� ���������.";
};


func int DIA_Caine_Hallo_Condition()
{
	return TRUE;
};

func void DIA_Caine_Hallo_Info()
{
	AI_Output(other,self,"DIA_Caine_Hallo_15_00");	//������! � ����� ���������!
	AI_Output(self,other,"DIA_Caine_Hallo_13_01");	//�... �... � ����, ������ ��� ������. �� ���� ������ � ���, ��?
	Info_ClearChoices(DIA_Caine_Hallo);
	Info_AddChoice(DIA_Caine_Hallo,"���.",DIA_Caine_Hallo_Nein);
	Info_AddChoice(DIA_Caine_Hallo,"��.",DIA_Caine_Hallo_Ja);
};

func void DIA_Caine_Hallo_Ja()
{
	AI_Output(other,self,"DIA_Caine_Hallo_Ja_15_00");	//�-��.
	AI_Output(self,other,"DIA_Caine_Hallo_Ja_13_01");	//����� �� ������, ��� �� ������ ������� � ���� ������... �-����� �`�������.
	Info_ClearChoices(DIA_Caine_Hallo);
};

func void DIA_Caine_Hallo_Nein()
{
	AI_Output(other,self,"DIA_Caine_Hallo_Nein_15_00");	//���.
	AI_Output(self,other,"DIA_Caine_Hallo_Nein_13_01");	//���?! �� ����� �������, �� ��� ��?
	AI_Output(self,other,"DIA_Caine_Hallo_Nein_13_02");	//��� ����� � ���� ������ - ������ ������� ����� �`�������. �� ������, ���� ��������� � ���, � ���� ���.
	Info_ClearChoices(DIA_Caine_Hallo);
};


instance DIA_Caine_Job(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_Job_Condition;
	information = DIA_Caine_Job_Info;
	permanent = 0;
	description = "� �� ��� �����������?";
};


func int DIA_Caine_Job_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Hallo))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Caine_Job_Info()
{
	AI_Output(other,self,"DIA_Caine_Job_15_00");	//� �� ��� �����������?
	AI_Output(self,other,"DIA_Caine_Job_13_01");	//�... �... � ������� ��� �������� ��������.
	AI_Output(self,other,"DIA_Caine_Job_13_02");	//� �������� �-�������� � ����� ��������. �-����� ����� ������ �����.
};


instance DIA_Caine_WoSekret(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_WoSekret_Condition;
	information = DIA_Caine_WoSekret_Info;
	permanent = 0;
	description = "��� ���������� ����� ��������?";
};


func int DIA_Caine_WoSekret_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Job))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Caine_WoSekret_Info()
{
	AI_Output(other,self,"DIA_Caine_WoSekret_15_00");	//��� ���������� ����� ��������?
	AI_Output(self,other,"DIA_Caine_WoSekret_13_01");	//�������� �� ������ ����� � ������ �����. �� ����� ��� �����, ��� ���������� �����.
	AI_Output(self,other,"DIA_Caine_WoSekret_13_02");	//���� �� � � ����� ���� ������ ����������� �� ���� ������, �������� ����� �� ��������, ��� ���������. � ��� �� ������, ��������.
	AI_Output(self,other,"DIA_Caine_WoSekret_13_03");	//�� ����� ����� ������ ������ �... � ������� ������ ����. � �-�� ����� �� ������ ������� ��� � �����������.
};


instance DIA_Caine_AddInfoKalom(C_Info)
{
	npc = NOV_1301_Caine;
	nr = 2;
	condition = DIA_Caine_AddInfoKalom_Condition;
	information = DIA_Caine_AddInfoKalom_Info;
	permanent = 0;
	description = "��� ��� �� ������ ���������� � ����� ���������?";
};


func int DIA_Caine_AddInfoKalom_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Caine_Job))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Caine_AddInfoKalom_Info()
{
	AI_Output(other,self,"DIA_Caine_AddInfoKalom_15_00");	//��� ��� �� ������ ���������� � ����� ���������?
	AI_Output(self,other,"DIA_Caine_AddInfoKalom_13_01");	//��... �� �� �����, ���... ��� ��� ����. � ���� ����� ���������� �����, ��... �� ������ �� ��������� ������� ������� ��� ����������� �����.
};


instance Nov_1301_Caine_CHEST(C_Info)
{
	npc = NOV_1301_Caine;
	condition = Nov_1301_Caine_CHEST_Condition;
	information = Nov_1301_Caine_CHEST_Info;
	important = 0;
	permanent = 0;
	description = "��� ������ ������ �������� ��� ������?";
};


func int Nov_1301_Caine_CHEST_Condition()
{
	if(Dexter_GetKalomsRecipe == LOG_RUNNING)
	{
		return TRUE;
	};
	return FALSE;
};

func void Nov_1301_Caine_CHEST_Info()
{
	AI_Output(other,self,"Nov_1301_Caine_CHEST_Info_15_01");	//��� ������ ������ �������� ��� ������?
	AI_Output(self,other,"Nov_1301_Caine_CHEST_Info_13_02");	//�����. �� ������ ��� � �������� ������� � �� ������ ������ �� �� ����� ������. 
};

