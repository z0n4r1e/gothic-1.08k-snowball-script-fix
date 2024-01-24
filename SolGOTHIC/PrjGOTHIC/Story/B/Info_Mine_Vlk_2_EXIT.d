
instance Info_Mine_Vlk_2_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Vlk_2_EXIT_Condition;
	information = Info_Mine_Vlk_2_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Mine_Vlk_2_EXIT_Condition()
{
	return TRUE;
};

func void Info_Mine_Vlk_2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Vlk_2_Mine(C_Info)
{
	nr = 4;
	condition = Info_Mine_Vlk_2_Mine_Condition;
	information = Info_Mine_Vlk_2_Mine_Info;
	permanent = 1;
	description = "�������� ��� � �����.";
};


func int Info_Mine_Vlk_2_Mine_Condition()
{
	if(Kapitel < 3)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Mine_Vlk_2_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_Mine_15_00");	//�������� ��� � �����.
	AI_Output(self,other,"Info_Mine_Vlk_2_Mine_01_01");	//��� ����� �����, ��� ��� �������� ����. �� ��-�� �������� ������ �������� ����������.
	AI_Output(self,other,"Info_Mine_Vlk_2_Mine_01_02");	//������� ����� ����, ������� ������� ������.
};


instance Info_Mine_Vlk_2_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Mine_Vlk_2_WichtigePersonen_Condition;
	information = Info_Mine_Vlk_2_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_Mine_Vlk_2_WichtigePersonen_Condition()
{
	if(Kapitel < 3)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Mine_Vlk_2_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Mine_Vlk_2_WichtigePersonen_01_01");	//������, ����������. �� ����� ��� ��� ����, �� ������ ����, �� � ��� �� ������ �� ������ ������. ������ ����� ������ � ������, ��� ������ ����.
};


instance Info_Mine_Vlk_2_Minecrawler(C_Info)
{
	nr = 2;
	condition = Info_Mine_Vlk_2_Minecrawler_Condition;
	information = Info_Mine_Vlk_2_Minecrawler_Info;
	permanent = 1;
	description = "��� �� ������ � ��������?";
};


func int Info_Mine_Vlk_2_Minecrawler_Condition()
{
	if(Kapitel < 3)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Mine_Vlk_2_Minecrawler_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_Minecrawler_15_00");	//��� �� ������ � ��������?
	AI_Output(self,other,"Info_Mine_Vlk_2_Minecrawler_01_01");	//�� ���� ��������� ������� ������� ����� �����. ������� ����� ���� ������.
	AI_Output(self,other,"Info_Mine_Vlk_2_Minecrawler_01_02");	//������� ��� �������. �� �� �������? � ����� �����.
};


instance Info_Mine_Vlk_2_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Vlk_2_DieLage_Condition;
	information = Info_Mine_Vlk_2_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Mine_Vlk_2_DieLage_Condition()
{
	if(Kapitel < 3)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Mine_Vlk_2_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Vlk_2_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Mine_Vlk_2_DieLage_01_01");	//� ������ ��������. ���� ��������� ������, ��� � � ����� ������, ��� ������ ����.
};

func void B_AssignAmbientInfos_Mine_Vlk_2(var C_Npc slf)
{
	Info_Mine_Vlk_2_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_DieLage.npc = Hlp_GetInstanceID(slf);
};

