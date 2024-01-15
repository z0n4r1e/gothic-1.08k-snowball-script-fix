
instance Info_SFB_2_Pre(C_Info)
{
	nr = 1;
	condition = Info_SFB_2_Pre_Condition;
	information = Info_SFB_2_Pre_Info;
	permanent = 0;
	important = 1;
};


func int Info_SFB_2_Pre_Condition()
{
	return 1;
};

func void Info_SFB_2_Pre_Info()
{
	AI_Output(self,other,"Info_SFB_2_EinerVonEuchWerden_02_00");	//��� ���� �����? � �� ���� �������������.
};


instance Info_SFB_2_EXIT(C_Info)
{
	nr = 999;
	condition = Info_SFB_2_EXIT_Condition;
	information = Info_SFB_2_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_SFB_2_EXIT_Condition()
{
	return 1;
};

func void Info_SFB_2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_SFB_2_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_SFB_2_EinerVonEuchWerden_Condition;
	information = Info_SFB_2_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ����� �������, ����� �������������� � ���?";
};


func int Info_SFB_2_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_SFB_2_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_SFB_2_EinerVonEuchWerden_15_00");	//��� ����� �������, ����� �������������� � ���?
	AI_Output(self,other,"Info_SFB_2_EinerVonEuchWerden_02_01");	//� ���� � ���� �� ��������. � ������� ������ �����. �������� �� �����.
};


instance Info_SFB_2_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_SFB_2_WichtigePersonen_Condition;
	information = Info_SFB_2_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_SFB_2_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_SFB_2_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_SFB_2_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_SFB_2_WichtigePersonen_02_01");	//�����, � ������, ���� ������������� ��������, �� � ����� ������ ��� ������� ��-�������.
	AI_Output(self,other,"Info_SFB_2_WichtigePersonen_02_02");	//����� ���, ���� �� ����� �������� ���� � �������� ������.
};


instance Info_SFB_2_DasLager(C_Info)
{
	nr = 2;
	condition = Info_SFB_2_DasLager_Condition;
	information = Info_SFB_2_DasLager_Info;
	permanent = 1;
	description = "�������� ��� � ������.";
};


func int Info_SFB_2_DasLager_Condition()
{
	return 1;
};

func void Info_SFB_2_DasLager_Info()
{
	AI_Output(other,self,"Info_SFB_2_DasLager_15_00");	//��� ����� ������ ������ �� ���� ������.
	AI_Output(self,other,"Info_SFB_2_DasLager_02_01");	//�� ����, ��� � ������ ����. �� ����� �������� �� ����� ��� � ����������.
};


instance Info_SFB_2_DieLage(C_Info)
{
	nr = 1;
	condition = Info_SFB_2_DieLage_Condition;
	information = Info_SFB_2_DieLage_Info;
	permanent = 1;
	description = "� ��� ����� �������?";
};


func int Info_SFB_2_DieLage_Condition()
{
	return 1;
};

func void Info_SFB_2_DieLage_Info()
{
	AI_Output(other,self,"Info_SFB_2_DieLage_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_SFB_2_DieLage_02_01");	//� �� �������. �� ��� ������ ������ ���� ����.
	AI_Output(self,other,"Info_SFB_2_DieLage_02_02");	//�� ������� ����, ����� �������� �����, ��� � ������ ������.
	AI_Output(self,other,"Info_SFB_2_DieLage_02_03");	//�� �� ������� ������?
	AI_Output(self,other,"Info_SFB_2_DieLage_02_04");	//���� �� �� ������� ������, �������: � �� ���� �������������!
	AI_StopProcessInfos(self);
};

func void B_AssignAmbientInfos_SFB_2(var C_Npc slf)
{
	Info_SFB_2_Pre.npc = Hlp_GetInstanceID(slf);
	Info_SFB_2_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_SFB_2_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_SFB_2_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_SFB_2_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_SFB_2_DieLage.npc = Hlp_GetInstanceID(slf);
};

