
instance Info_Stt_12_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Stt_12_EXIT_Condition;
	information = Info_Stt_12_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Stt_12_EXIT_Condition()
{
	return TRUE;
};

func void Info_Stt_12_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Stt_12_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Stt_12_EinerVonEuchWerden_Condition;
	information = Info_Stt_12_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� ����� ����� �� ���������.";
};


func int Info_Stt_12_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Stt_12_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Stt_12_EinerVonEuchWerden_15_00");	//� ���� ����� ����� �� ���������.
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_01");	//��. ����� ���� ����� �����, ��� ����� �� ������� �������. ���� ������ ����� ����� �� ���, �� ������ ���� ����� ������ ���� ���� ����� � ����.
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_02");	//� ������ ������ ��������� �� ����� �������� ��������.
	AI_Output(other,self,"Info_Stt_12_EinerVonEuchWerden_15_03");	//� ��� ��������� � ����������? 
	AI_Output(self,other,"Info_Stt_12_EinerVonEuchWerden_12_04");	//������ � ����� ������ ������ ���. ��-��-��-��-��.
};


instance Info_Stt_12_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Stt_12_WichtigePersonen_Condition;
	information = Info_Stt_12_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_Stt_12_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_Stt_12_WichtigePersonen_Info()
{
	var C_Npc diego;
	var C_Npc Thorus;
	AI_Output(other,self,"Info_Stt_12_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Stt_12_WichtigePersonen_12_01");	//�������, ����� ����� ������� ������ ���������. �� ��� ������ ���������� � �������, ������ �����.
	diego = Hlp_GetNpc(PC_Thief);
	diego.aivar[AIV_FINDABLE] = 1;
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = 1;
};


instance Info_Stt_12_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Stt_12_DasLager_Condition;
	information = Info_Stt_12_DasLager_Info;
	permanent = 1;
	description = "�������� �� �����, ��� ������ �������� � ���� ������?";
};


func int Info_Stt_12_DasLager_Condition()
{
	return TRUE;
};

func void Info_Stt_12_DasLager_Info()
{
	AI_Output(other,self,"Info_Stt_12_DasLager_15_00");	//�������� �� �����, ��� ������ �������� � ���� ������?
	AI_Output(self,other,"Info_Stt_12_DasLager_12_01");	//���� ����� ���������� �� ���� � ���������� - �� ��� ����� ����� ��������.
};


instance Info_Stt_12_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Stt_12_DieLage_Condition;
	information = Info_Stt_12_DieLage_Info;
	permanent = 1;
	description = "�� � ��� ���� ����?";
};


func int Info_Stt_12_DieLage_Condition()
{
	return TRUE;
};

func void Info_Stt_12_DieLage_Info()
{
	AI_Output(other,self,"Info_Stt_12_DieLage_15_00");	//�� � ��� ���� ����?
	AI_Output(self,other,"Info_Stt_12_DieLage_12_01");	//��� ���� �����?
};

func void B_AssignAmbientInfos_Stt_12(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Stt_12_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DieLage.npc = Hlp_GetInstanceID(slf);
};

