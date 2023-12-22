
instance Info_Mine_Grd_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Grd_6_EXIT_Condition;
	information = Info_Mine_Grd_6_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_Mine_Grd_6_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Grd_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Grd_6_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_Mine_Condition;
	information = Info_Mine_Grd_6_Mine_Info;
	permanent = 1;
	description = "��� ���� �� �����?";
};


func int Info_Mine_Grd_6_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Mine_Grd_6_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_Mine_15_00");	//��� ���������� �� �����?
	AI_Output(self,other,"Info_Mine_Grd_6_Mine_06_01");	//�������� �������� ���� - ��� ��� ������. ���� �����������, �� ���� ������� �������.
};


instance Info_Mine_Grd_6_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_WichtigePersonen_Condition;
	information = Info_Mine_Grd_6_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Mine_Grd_6_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Mine_Grd_6_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Mine_Grd_6_WichtigePersonen_06_01");	//���� ��������� ������, � �� ���������� ������ - ������������ �� ����������, ���������� ������ ����.
};


instance Info_Mine_Grd_6_Minecrawler(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_Minecrawler_Condition;
	information = Info_Mine_Grd_6_Minecrawler_Info;
	permanent = 1;
	description = "�������� ��� � ��������.";
};


func int Info_Mine_Grd_6_Minecrawler_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Mine_Grd_6_Minecrawler_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_Minecrawler_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Mine_Grd_6_Minecrawler_06_01");	//�� ���� ������ ���� ������������. ���� �� ����, �� ���� ������ �������� ���� - �� �������� ��� �� ���������.
};


instance Info_Mine_Grd_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Grd_6_DieLage_Condition;
	information = Info_Mine_Grd_6_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Mine_Grd_6_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Mine_Grd_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Grd_6_DieLage_15_00");	//��� �����?
	AI_Output(self,other,"Info_Mine_Grd_6_DieLage_06_01");	//��, � �� ��� �������?
};

func void B_AssignAmbientInfos_Mine_GRD_6(var C_Npc slf)
{
	Info_Mine_Grd_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_DieLage.npc = Hlp_GetInstanceID(slf);
};

