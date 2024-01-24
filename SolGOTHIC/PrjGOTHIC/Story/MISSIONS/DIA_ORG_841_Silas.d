
instance DIA_Silas_EXIT(C_Info)
{
	npc = ORG_841_Silas;
	nr = 999;
	condition = DIA_Silas_EXIT_Condition;
	information = DIA_Silas_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Silas_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Silas_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Silas_Hehler(C_Info)
{
	npc = ORG_841_Silas;
	nr = 1;
	condition = DIA_Silas_Hehler_Condition;
	information = DIA_Silas_Hehler_Info;
	permanent = 0;
	description = "��� �����?";
};


func int DIA_Silas_Hehler_Condition()
{
	return TRUE;
};

func void DIA_Silas_Hehler_Info()
{
	AI_Output(other,self,"DIA_Silas_Hehler_15_00");	//��� �����?
	AI_Output(self,other,"DIA_Silas_Hehler_06_01");	//�������! �� ������� ��� ������� ����� �� ����.
	AI_Output(self,other,"DIA_Silas_Hehler_06_02");	//��, � ���� �������� ����������. � ��� ����� ������ ������� ��, ��� �� �����?
};


instance DIA_Silas_Trade(C_Info)
{
	npc = ORG_841_Silas;
	nr = 1;
	condition = DIA_Silas_Trade_Condition;
	information = DIA_Silas_Trade_Info;
	permanent = 0;
	description = "� ���� ����.";
	trade = 1;
};


func int DIA_Silas_Trade_Condition()
{
	return TRUE;
};

func void DIA_Silas_Trade_Info()
{
	AI_Output(other,self,"DIA_Silas_Trade_15_00");	//� ���� ����.
	AI_Output(self,other,"DIA_Silas_Trade_06_01");	//��� �������, ���� � ���� ���� ������.
};

