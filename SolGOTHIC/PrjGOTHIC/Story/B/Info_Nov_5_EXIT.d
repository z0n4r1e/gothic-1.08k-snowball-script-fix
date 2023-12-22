
instance Info_Nov_5_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Nov_5_EXIT_Condition;
	information = Info_Nov_5_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_Nov_5_EXIT_Condition()
{
	return 1;
};

func void Info_Nov_5_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Nov_5_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Nov_5_EinerVonEuchWerden_Condition;
	information = Info_Nov_5_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ��� �������������� � ����� ������?";
};


func int Info_Nov_5_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Nov_5_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Nov_5_EinerVonEuchWerden_15_00");	//��� ����� �������������� � ����� ������?
	AI_Output(self,other,"Info_Nov_5_EinerVonEuchWerden_05_01");	//��� ������ �����. �������� � �������� ����, ��� ������� ����.
	AI_Output(self,other,"Info_Nov_5_EinerVonEuchWerden_05_02");	//���� ����� ����������, ��� �������.
};


instance Info_Nov_5_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Nov_5_WichtigePersonen_Condition;
	information = Info_Nov_5_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Nov_5_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Nov_5_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Nov_5_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Nov_5_WichtigePersonen_05_01");	//����� ��� ��� ������� ����. �� ���� �� �� ������ ���������� � ���� ��������, ��� ���� �� ������.
};


instance Info_Nov_5_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Nov_5_DasLager_Condition;
	information = Info_Nov_5_DasLager_Info;
	permanent = 1;
	description = "�������� ��� �� ���� ������.";
};


func int Info_Nov_5_DasLager_Condition()
{
	return 1;
};

func void Info_Nov_5_DasLager_Info()
{
	var C_Npc CorKalom;
	AI_Output(other,self,"Info_Nov_5_DasLager_15_00");	//�������� ��� �� ���� ������.
	AI_Output(self,other,"Info_Nov_5_DasLager_05_01");	//��� ������ ����� �� ���� ����� ������� �������.
	AI_Output(self,other,"Info_Nov_5_DasLager_05_02");	//���� ���� �� �� ������ � ������ �������, �� ��� ����� �������� ����� ��� � ��������. ��� ��� ���� �����, ��� ���������� � �������.
	AI_Output(other,self,"Info_Nov_5_DasLager_15_03");	//��� ��� ��� �����?
	AI_Output(self,other,"Info_Nov_5_DasLager_05_04");	//��� ������������ ��� ������, ����� �� ���������� ������ �����.
	CorKalom = Hlp_GetNpc(GUR_1201_CorKalom);
	CorKalom.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Nov_5_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Nov_5_DieLage_Condition;
	information = Info_Nov_5_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Nov_5_DieLage_Condition()
{
	return 1;
};

func void Info_Nov_5_DieLage_Info()
{
	AI_Output(other,self,"Info_Nov_5_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Nov_5_DieLage_05_01");	//������������ �� �� ���. �����, �� ���������?
	AI_Output(other,self,"Info_Nov_5_DieLage_15_02");	//� ������ ��� ������.
};

func void B_AssignAmbientInfos_Nov_5(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);
	Info_Nov_5_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Nov_5_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Nov_5_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Nov_5_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Nov_5_DieLage.npc = Hlp_GetInstanceID(slf);
};

