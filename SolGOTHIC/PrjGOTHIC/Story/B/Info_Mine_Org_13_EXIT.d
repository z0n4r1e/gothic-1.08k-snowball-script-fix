
instance Info_Mine_Org_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Org_13_EXIT_Condition;
	information = Info_Mine_Org_13_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Mine_Org_13_EXIT_Condition()
{
	return TRUE;
};

func void Info_Mine_Org_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Org_13_Mine(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_Mine_Condition;
	information = Info_Mine_Org_13_Mine_Info;
	permanent = 1;
	description = "�������� ��� �� ���� ������.";
};


func int Info_Mine_Org_13_Mine_Condition()
{
	return TRUE;
};

func void Info_Mine_Org_13_Mine_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_Mine_15_00");	//�������� ��� ���-������ �� ���� ������.
	AI_Output(self,other,"Info_Mine_Org_13_Mine_13_01");	//��� ���� � ����� ������� ��� ������. ��� ������ � ��� ����� ���������� ����, �� ������ ������ ��� ������ ������.
};


instance Info_Mine_Org_13_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_WichtigePersonen_Condition;
	information = Info_Mine_Org_13_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Mine_Org_13_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_Mine_Org_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Mine_Org_13_WichtigePersonen_13_01");	//����.
	AI_Output(self,other,"Info_Mine_Org_13_WichtigePersonen_13_02");	//�� ���, �����, �� ������ �� �������.
};


instance Info_Mine_Org_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Org_13_DieLage_Condition;
	information = Info_Mine_Org_13_DieLage_Info;
	permanent = 1;
	description = "��� � �������?";
};


func int Info_Mine_Org_13_DieLage_Condition()
{
	return TRUE;
};

func void Info_Mine_Org_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Org_13_DieLage_15_00");	//��� � �������?
	AI_Output(self,other,"Info_Mine_Org_13_DieLage_13_01");	//�� ����, ��� �����.
};

func void B_AssignAmbientInfos_Mine_Org_13(var C_Npc slf)
{
	Info_Mine_Org_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

