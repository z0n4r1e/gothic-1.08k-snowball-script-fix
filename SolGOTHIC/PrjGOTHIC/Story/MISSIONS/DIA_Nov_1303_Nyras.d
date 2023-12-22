
instance DIA_Nyras_Exit(C_Info)
{
	npc = Nov_1303_Nyras;
	nr = 999;
	condition = DIA_Nyras_Exit_Condition;
	information = DIA_Nyras_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Nyras_Exit_Condition()
{
	return 1;
};

func void DIA_Nyras_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Nyras_Hallo(C_Info)
{
	npc = Nov_1303_Nyras;
	nr = 1;
	condition = DIA_Nyras_Hallo_Condition;
	information = DIA_Nyras_Hallo_Info;
	permanent = 0;
	description = "������! � ����� ���������.";
};


func int DIA_Nyras_Hallo_Condition()
{
	if(Kapitel <= 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Nyras_Hallo_Info()
{
	AI_Output(other,self,"DIA_Nyras_Hallo_15_00");	//������! � ����� ���������!
	AI_Output(self,other,"DIA_Nyras_Hallo_03_01");	//�� �������� � ����� ������, ����������!
};


instance DIA_Nyras_Ort(C_Info)
{
	npc = Nov_1303_Nyras;
	nr = 1;
	condition = DIA_Nyras_Ort_Condition;
	information = DIA_Nyras_Ort_Info;
	permanent = 0;
	description = "�������� ��� �� ���� �����.";
};


func int DIA_Nyras_Ort_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Nyras_Hallo) && (Kapitel <= 1))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Nyras_Ort_Info()
{
	AI_Output(other,self,"DIA_Nyras_Ort_15_00");	//�������� ��� �� ���� �����.
	AI_Output(self,other,"DIA_Nyras_Ort_03_01");	//��... ���� ����� ����� �������. ��� ����� ������ ����� ������� � �������� �������� �������� ������ ���������.
	AI_Output(self,other,"DIA_Nyras_Ort_03_02");	//����������, ��� �� �� ���� �� ���������� � ������ �����.
	AI_Output(self,other,"DIA_Nyras_Ort_03_03");	//�� ������ �� �������� ��� �� ����� �����, ���� ������� �� ��� ��������� ����� �������.
	Info_ClearChoices(DIA_Nyras_Ort);
	Info_AddChoice(DIA_Nyras_Ort,"������� ��� � ��������� ������ �������� �������.",DIA_Nyras_Ort_Holy);
	Info_AddChoice(DIA_Nyras_Ort,"� ��� �� �������?",DIA_Nyras_Ort_Casual);
};

func void DIA_Nyras_Ort_Casual()
{
	AI_Output(other,self,"DIA_Nyras_Ort_Casual_15_00");	//� ��� �� �������?
	AI_Output(self,other,"DIA_Nyras_Ort_Casual_03_01");	//������ ��������� ��� ����, �� ���������, ����� ����, ����� �� ������!
	Info_ClearChoices(DIA_Nyras_Ort);
};

func void DIA_Nyras_Ort_Holy()
{
	AI_Output(other,self,"DIA_Nyras_Ort_Holy_15_00");	//������� ��� � ��������� ������ �������� �������.
	AI_Output(self,other,"DIA_Nyras_Ort_Holy_03_01");	//�� �������, ��� �� ����� ������ ������� �������.
	AI_Output(self,other,"DIA_Nyras_Ort_Holy_03_02");	//�� ������ �`�������, ������ ������ ��� ����, ��� ������ �� ����� � ��������� �������� ���.
	AI_Output(self,other,"DIA_Nyras_Ort_Holy_03_03");	//�`������ ������� ������� ���������, � ���� ������� ������ �� ������ ������� ��������� �� �������� �������.
	AI_Output(self,other,"DIA_Nyras_Ort_Holy_03_04");	//��� �������� ��� ����� - �������, ������� ������� �������, ��������� ��������� ��� � �����.
	AI_Output(self,other,"DIA_Nyras_Ort_Holy_03_05");	//���� � ���� ��������� �� ����� �������� ����� ������� - �� ��� �� ���.
	Info_ClearChoices(DIA_Nyras_Ort);
};


instance Nov_1303_Nyras_GREET(C_Info)
{
	npc = Nov_1303_Nyras;
	condition = Nov_1303_Nyras_GREET_Condition;
	information = Nov_1303_Nyras_GREET_Info;
	important = 1;
	permanent = 0;
};


func int Nov_1303_Nyras_GREET_Condition()
{
	if(YBerion_BringFocus == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void Nov_1303_Nyras_GREET_Info()
{
	AI_Output(self,other,"Nov_1303_Nyras_GREET_Info_03_00");	//��������! ���� ������ ����� ������!
};


instance Nov_1303_Nyras_LEAVE(C_Info)
{
	npc = Nov_1303_Nyras;
	condition = Nov_1303_Nyras_LEAVE_Condition;
	information = Nov_1303_Nyras_LEAVE_Info;
	important = 0;
	permanent = 0;
	description = "� ��� ������.";
};


func int Nov_1303_Nyras_LEAVE_Condition()
{
	if(Npc_KnowsInfo(hero,Nov_1303_Nyras_GREET))
	{
		return 1;
	};
	return FALSE;
};

func void Nov_1303_Nyras_LEAVE_Info()
{
	AI_Output(other,self,"Nov_1303_Nyras_LEAVE_Info_15_01");	//� ��� ������.
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_02");	//� ���������, �� �������. � ��� ����� ���!
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_03");	//� ������ - � ����� �������� ��� ����!!!
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_04");	//������ ������� �� ���� ������� ����� - � �� ������ ���� ����� ������������ ��������������!
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_05");	//������ � ����� ������ �������. ������� ������ ���� � �������!
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_06");	//������ �!!! ����!!
	AI_Output(self,other,"Nov_1303_Nyras_LEAVE_Info_03_07");	//����!!!
	B_LogEntry(CH2_Focus,"����� ���������. �� ������� �������� ������ ���� � � ������ ����� �� ����.");
	Npc_SetPermAttitude(self,ATT_HOSTILE);
	AI_StopProcessInfos(self);
};

