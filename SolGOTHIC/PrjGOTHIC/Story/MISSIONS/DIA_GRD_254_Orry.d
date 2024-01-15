
instance DIA_Orry_PreExit(C_Info)
{
	npc = GRD_254_Orry;
	nr = 999;
	condition = DIA_Orry_PreExit_Condition;
	information = DIA_Orry_PreExit_Info;
	permanent = 0;
	description = DIALOG_ENDE;
};


func int DIA_Orry_PreExit_Condition()
{
	return 1;
};

func void DIA_Orry_PreExit_Info()
{
	AI_Output(self,other,"DIA_Orry_PreExit_06_00");	//���������� ��������� �� ������� ������ ����� � ����������!
	AI_StopProcessInfos(self);
};


instance DIA_Orry_Exit(C_Info)
{
	npc = GRD_254_Orry;
	nr = 999;
	condition = DIA_Orry_Exit_Condition;
	information = DIA_Orry_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Orry_Exit_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_PreExit))
	{
		return 1;
	};
};

func void DIA_Orry_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Orry_GuardGate(C_Info)
{
	npc = GRD_254_Orry;
	nr = 2;
	condition = DIA_Orry_GuardGate_Condition;
	information = DIA_Orry_GuardGate_Info;
	permanent = 0;
	description = "��� �� �����������?";
};


func int DIA_Orry_GuardGate_Condition()
{
	if(Kapitel <= 1)
	{
		return 1;
	};
};

func void DIA_Orry_GuardGate_Info()
{
	AI_Output(other,self,"DIA_Orry_GuardGate_15_00");	//��� �� ����� �������?
	AI_Output(self,other,"DIA_Orry_GuardGate_06_01");	//����� �� ���, ����� ����� �� ���������� � ����� ������ - �������� ��� ���������� �� ������ ������.
	AI_Output(self,other,"DIA_Orry_GuardGate_06_02");	//�� ���������, �������� ���������� ������ �������, �����?
	AI_Output(other,self,"DIA_Orry_GuardGate_15_03");	//��, ��� �. 
	AI_Output(self,other,"DIA_Orry_GuardGate_06_04");	//����������� ����� �� ������ ������!
	AI_Output(self,other,"DIA_Orry_GuardGate_06_05");	//� ������� �� ������ ������ - ����� ��� � ���, ���� �� ����� � �����, ��� ���������� �����.
	AI_Output(self,other,"DIA_Orry_GuardGate_06_06");	//�� ��� ��������� � �����?
	Info_ClearChoices(DIA_Orry_GuardGate);
	Info_AddChoice(DIA_Orry_GuardGate,"���.",DIA_Orry_GuardGate_No);
	Info_AddChoice(DIA_Orry_GuardGate,"��.",DIA_Orry_GuardGate_Yes);
};

func void DIA_Orry_GuardGate_No()
{
	AI_Output(other,self,"DIA_Orry_GuardGate_No_15_00");	//���.
	AI_Output(self,other,"DIA_Orry_GuardGate_No_06_01");	//� ���� �� �� �����? �� � ��� ���������� ���������.
	AI_Output(self,other,"DIA_Orry_GuardGate_No_06_02");	//�� ����� ����� � ������� � ������ ��� ���������� ����, ��� ����� �������.
	Info_ClearChoices(DIA_Orry_GuardGate);
};

func void DIA_Orry_GuardGate_Yes()
{
	AI_Output(other,self,"DIA_Orry_GuardGate_Yes_15_00");	//��, ���������.
	AI_Output(self,other,"DIA_Orry_GuardGate_Yes_06_01");	//������. ������, �� � ����� ����� �������������.
	Info_ClearChoices(DIA_Orry_GuardGate);
};


instance DIA_Orry_NewCamp(C_Info)
{
	npc = GRD_254_Orry;
	nr = 1;
	condition = DIA_Orry_NewCamp_Condition;
	information = DIA_Orry_NewCamp_Info;
	permanent = 0;
	description = "������ ��� ������� ��������� ����� �� ������ ������?";
};


func int DIA_Orry_NewCamp_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_GuardGate))
	{
		return 1;
	};
};

func void DIA_Orry_NewCamp_Info()
{
	AI_Output(other,self,"DIA_Orry_NewCamp_15_00");	//������ ��� ������� ��������� ����� �� ������ ������?
	AI_Output(self,other,"DIA_Orry_NewCamp_06_01");	//�� ��������� � ����� �������, ������ - ��� ����� � ���������� �����.
	AI_Output(self,other,"DIA_Orry_NewCamp_06_02");	//����� ������ �� �������� ������� �� �������� ����. �� ���� ������ ������ ���, ��� �� �����.
};


instance DIA_Orry_OldCamp(C_Info)
{
	npc = GRD_254_Orry;
	nr = 2;
	condition = DIA_Orry_OldCamp_Condition;
	information = DIA_Orry_OldCamp_Info;
	permanent = 0;
	description = "� ������ ������?";
};


func int DIA_Orry_OldCamp_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_GuardGate))
	{
		return 1;
	};
};

func void DIA_Orry_OldCamp_Info()
{
	AI_Output(other,self,"DIA_Orry_OldCamp_15_00");	//� ������ ������?
	AI_Output(self,other,"DIA_Orry_OldCamp_06_01");	//�� ����� ����� ����� ����� ������. ������ �� ���� ���� ������ � ��������. �� � � ����� ���� ��������� ��������.
	AI_Output(self,other,"DIA_Orry_OldCamp_06_02");	//������, ��� ��������� ����, ������ ���������� ���������. ���� ������ ���������� ��������, ��� ������ ���� �������� ����� ����� �� ���������.
};


instance DIA_Orry_Shore(C_Info)
{
	npc = GRD_254_Orry;
	nr = 3;
	condition = DIA_Orry_Shore_Condition;
	information = DIA_Orry_Shore_Info;
	permanent = 0;
	description = "����� � ������ �� �����, ���� �� ���� ����� ������ ����...";
};


func int DIA_Orry_Shore_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_GuardGate))
	{
		return 1;
	};
};

func void DIA_Orry_Shore_Info()
{
	AI_Output(other,self,"DIA_Orry_Shore_15_00");	//����� � ������ �� �����, ���� �� ���� ����� ������ ����...
	AI_Output(self,other,"DIA_Orry_Shore_06_01");	//��� ��������� �� ����� ���������. ��� �������� ��� '������ ���������'.
	AI_Output(other,self,"DIA_Orry_Shore_15_02");	//�-�. � � ������ ������ ��� �����?
	AI_Output(self,other,"DIA_Orry_Shore_06_03");	//� ����� ����� �������� ������� ��������. �� ��� �� ������ ����, ���� �� ������� ������ �� ���� ������.
};


instance DIA_Orry_Woman(C_Info)
{
	npc = GRD_254_Orry;
	nr = 3;
	condition = DIA_Orry_Woman_Condition;
	information = DIA_Orry_Woman_Info;
	permanent = 0;
	description = "� �����, ��� ������ � �������� ���� ��������� �����-�� �������.";
};


func int DIA_Orry_Woman_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_GuardGate))
	{
		return 1;
	};
};

func void DIA_Orry_Woman_Info()
{
	AI_Output(other,self,"DIA_Orry_Woman_15_00");	//� �����, ��� ������ � �������� ���� ��������� �����-�� �������.
	AI_Output(self,other,"DIA_Orry_Woman_06_01");	//��, ������ �������� ���, ��� �����.
	AI_Output(other,self,"DIA_Orry_Woman_15_02");	//�� ������ �������, ��� ������ ���������� ���� �� ������?!
	AI_Output(self,other,"DIA_Orry_Woman_06_03");	//��� ����� �� �����������, ��� � ��� �����. ���� �� ������ �� ������������ ��� �������, ��� �� ������ � ������ ��� ��� ���-������.
	AI_Output(self,other,"DIA_Orry_Woman_06_04");	//�� ����, ��� ����...
};


instance DIA_Orry_Waffe(C_Info)
{
	npc = GRD_254_Orry;
	nr = 3;
	condition = DIA_Orry_Waffe_Condition;
	information = DIA_Orry_Waffe_Info;
	permanent = 0;
	description = "��� ����� �����-������ ������...";
};


func int DIA_Orry_Waffe_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Orry_GuardGate))
	{
		return 1;
	};
};

func void DIA_Orry_Waffe_Info()
{
	AI_Output(other,self,"DIA_Orry_Waffe_15_00");	//��� ����� �����-������ ������...
	AI_Output(self,other,"DIA_Orry_Waffe_06_01");	//����� ��������� �����, ������ �� ���� �����, ��������� ����� ����� ���-������.
	AI_Output(self,other,"DIA_Orry_Waffe_06_02");	//�� �� ����� ����� � ����� � ���-�� ����� ������ ����� - ��� ��������� ������� ������ � ��������, ����� ���� ������� �������.
	AI_Output(self,other,"DIA_Orry_Waffe_06_03");	//��������� ���� ������ ������������ �� ���� � ������ ������� �������������.
};

