
instance Info_SFB_5_Pre(C_Info)
{
	nr = 1;
	condition = Info_SFB_5_Pre_Condition;
	information = Info_SFB_5_Pre_Info;
	permanent = 0;
	important = 1;
};


func int Info_SFB_5_Pre_Condition()
{
	return TRUE;
};

func void Info_SFB_5_Pre_Info()
{
	AI_Output(self,other,"Info_SFB_5_EinerVonEuchWerden_02_00");	//������!
};


instance Info_SFB_5_EXIT(C_Info)
{
	nr = 999;
	condition = Info_SFB_5_EXIT_Condition;
	information = Info_SFB_5_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_SFB_5_EXIT_Condition()
{
	return TRUE;
};

func void Info_SFB_5_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_SFB_5_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_SFB_5_EinerVonEuchWerden_Condition;
	information = Info_SFB_5_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ���� � ���� �������������� � ���?";
};


func int Info_SFB_5_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SFB_5_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_SFB_5_EinerVonEuchWerden_15_00");	//��� ���� � ���� �������������� � ���?
	AI_Output(self,other,"Info_SFB_5_EinerVonEuchWerden_02_01");	//�������������� � ���? � ��� �� ������ ���� - ���������?
	AI_Output(other,self,"Info_SFB_5_EinerVonEuchWerden_15_02");	//���, ���������.
	AI_Output(self,other,"Info_SFB_5_EinerVonEuchWerden_02_03");	//��������, ��� � ����� ����: ����� ����������� �� ���������� ���������.
	AI_Output(self,other,"Info_SFB_5_EinerVonEuchWerden_02_04");	//�������, ���� �� �����������... ��� � �������� �� ����� - ������, � ���� �������� ��� ���� ������ �����. 
};


instance Info_SFB_5_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_SFB_5_WichtigePersonen_Condition;
	information = Info_SFB_5_WichtigePersonen_Info;
	permanent = 1;
	description = "���� ����� ����� ������� ������ ���������?";
};


func int Info_SFB_5_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_SFB_5_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_SFB_5_WichtigePersonen_15_00");	//���� ����� ����� ������� ������ ���������?
	AI_Output(self,other,"Info_SFB_5_WichtigePersonen_02_01");	//������? ����, �������.
	AI_Output(self,other,"Info_SFB_5_WichtigePersonen_02_02");	//� �����, �� ����� ��������, ��� ����� �������.
	AI_Output(self,other,"Info_SFB_5_WichtigePersonen_02_03");	//� �����, ���� ����� ���������� � ���������� ��� � ������. ����� ���� �� ���� �� �������. 
	AI_Output(self,other,"Info_SFB_5_WichtigePersonen_02_04");	//����� - ������� �������, �� ������� ���� ������� ������. �� ����� ���� �� ������ ������������ ����� � ������ ��, ��� ��� �������� ����.
};


instance Info_SFB_5_DasLager(C_Info)
{
	nr = 2;
	condition = Info_SFB_5_DasLager_Condition;
	information = Info_SFB_5_DasLager_Info;
	permanent = 1;
	description = "��� �������� � ���� ������?";
};


func int Info_SFB_5_DasLager_Condition()
{
	return TRUE;
};

func void Info_SFB_5_DasLager_Info()
{
	AI_Output(other,self,"Info_SFB_5_DasLager_15_00");	//��� �������� � ���� ������?
	AI_Output(self,other,"Info_SFB_5_DasLager_02_01");	//��� ������� �� ��������. ����� �� ���������� ������, ����� ������, ������ ������� ������� ���� ������������.
};


instance Info_SFB_5_DieLage(C_Info)
{
	nr = 1;
	condition = Info_SFB_5_DieLage_Condition;
	information = Info_SFB_5_DieLage_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_SFB_5_DieLage_Condition()
{
	return TRUE;
};

func void Info_SFB_5_DieLage_Info()
{
	AI_Output(other,self,"Info_SFB_5_DieLage_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_SFB_5_DieLage_02_01");	//�������!
	AI_Output(self,other,"Info_SFB_5_DieLage_02_02");	//������ ������, ��� ��� ��� �������� �����, �� ��� ���� ��� �������� ������ ���������.
	AI_Output(self,other,"Info_SFB_5_DieLage_02_03");	//���, �� �������, ���������� ��� �����? ��� ������, � � ������ ���� ������ �� ��������.
};

func void B_AssignAmbientInfos_SFB_5(var C_Npc slf)
{
	Info_SFB_5_Pre.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_DieLage.npc = Hlp_GetInstanceID(slf);
};

