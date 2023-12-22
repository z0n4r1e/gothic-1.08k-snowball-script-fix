
instance Info_SFB_1_EXIT(C_Info)
{
	nr = 999;
	condition = Info_SFB_1_EXIT_Condition;
	information = Info_SFB_1_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_SFB_1_EXIT_Condition()
{
	return 1;
};

func void Info_SFB_1_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_SFB_1_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_SFB_1_EinerVonEuchWerden_Condition;
	information = Info_SFB_1_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ��� ����� ����� �� ���������?";
};


func int Info_SFB_1_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SFB_1_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_SFB_1_EinerVonEuchWerden_15_00");	//��� ��� ����� ����� �� ���������?
	AI_Output(self,other,"Info_SFB_1_EinerVonEuchWerden_01_01");	//����� ����� �� ���? �� ���, �������, ��� ��� ����� �� ���������� ��������, �� ������ �� ������?
	AI_Output(self,other,"Info_SFB_1_EinerVonEuchWerden_01_02");	//���� �� �������, ��� ������� ����� ������ �������������, ������� ����� ���-������ ���, �������.
	AI_Output(self,other,"Info_SFB_1_EinerVonEuchWerden_01_03");	//������, ���� �� ��� ��� �������, ��� ��� ���� ���� ��������, �������� �� �����. ��� ��� �������, ������� ���� ���� ����� � �������� � �����.
};


instance Info_SFB_1_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_SFB_1_WichtigePersonen_Condition;
	information = Info_SFB_1_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_SFB_1_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_SFB_1_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_SFB_1_WichtigePersonen_15_00");	//��� ����� �������� �� ���?
	AI_Output(self,other,"Info_SFB_1_WichtigePersonen_01_01");	//�������� �� ���? �������� ������. ����� ��� ������, ��� �� ����� ���� �� �������� �������, �������� ������� �������� ����, ��� �����.
};


instance Info_SFB_1_DasLager(C_Info)
{
	nr = 2;
	condition = Info_SFB_1_DasLager_Condition;
	information = Info_SFB_1_DasLager_Info;
	permanent = 1;
	description = "��� ���?";
};


func int Info_SFB_1_DasLager_Condition()
{
	return 1;
};

func void Info_SFB_1_DasLager_Info()
{
	AI_Output(other,self,"Info_SFB_1_DasLager_15_00");	//��� ���?
	AI_Output(self,other,"Info_SFB_1_DasLager_01_01");	//� �� ��� ��� ������? �� ����������� ������?
	AI_Output(self,other,"Info_SFB_1_DasLager_01_02");	//���� �� ������������� ������ �������� � ��������� �����, ���� ������ �������� ��������� ������ �����, � ������, ����� ��������, ��� �� ���� ���� ����.
};


instance Info_SFB_1_DieLage(C_Info)
{
	nr = 1;
	condition = Info_SFB_1_DieLage_Condition;
	information = Info_SFB_1_DieLage_Info;
	permanent = 1;
	description = "��� ���� ����?";
};


func int Info_SFB_1_DieLage_Condition()
{
	return 1;
};

func void Info_SFB_1_DieLage_Info()
{
	AI_Output(other,self,"Info_SFB_1_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_SFB_1_DieLage_01_01");	//� �� ��� �������? ��� ������, �������. ����� ������ � ������ ������ �����.
	AI_Output(self,other,"Info_SFB_1_DieLage_01_02");	//������������ �� ���, ��� �� ������� ��������, ��� �����. ���� �������� ��� ����� ��������������. ����� ������ �������� ����� ��� ��� �������� - ������ �� ���, ����� ����� �� ����� ���� �������.
};

func void B_AssignAmbientInfos_SFB_1(var C_Npc slf)
{
	Info_SFB_1_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_SFB_1_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_SFB_1_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_SFB_1_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_SFB_1_DieLage.npc = Hlp_GetInstanceID(slf);
};

