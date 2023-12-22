
instance Info_grd_7_EXIT(C_Info)
{
	nr = 999;
	condition = Info_grd_7_EXIT_Condition;
	information = Info_grd_7_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_grd_7_EXIT_Condition()
{
	return 1;
};

func void Info_grd_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_grd_7_EinerVonEuchWerden(C_Info)
{
	nr = 1;
	condition = Info_grd_7_EinerVonEuchWerden_Condition;
	information = Info_grd_7_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ����� �������, ����� ����� ����� �� ���������� ������?";
};


func int Info_grd_7_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_GRD) && (Npc_GetTrueGuild(other) != GIL_KDF) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_grd_7_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_grd_7_EinerVonEuchWerden_15_00");	//��� ����� �������, ����� ����� ����� �� ���������� ������?
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_01");	//����?! �� ������. �� ���, �������, ����� ������ ������ ���� � ������ ����� � ����� ��������� �������, ���?
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_02");	//����������� ���������� ������ �� ������.
	AI_Output(self,other,"Info_grd_7_EinerVonEuchWerden_07_03");	//�� ������ ����������� ������ ��� ��, ��� � ��� ���������, � ��� ������ �������� ���� �������� ������, ���� ����� �� ���������.
};


instance Info_grd_7_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_grd_7_WichtigePersonen_Condition;
	information = Info_grd_7_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_grd_7_WichtigePersonen_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
	return FALSE;
};

func void Info_grd_7_WichtigePersonen_Info()
{
	var C_Npc diego;
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_7_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_grd_7_WichtigePersonen_07_01");	//����� ������ �� ���, ��� ���������� � ������. ����� - ��� ��������.
	AI_Output(self,other,"Info_grd_7_WichtigePersonen_07_02");	//���� �� ������ ����-�� �������� �����, �������� ����� � ����.
	diego = Hlp_GetNpc(PC_Thief);
	diego.aivar[AIV_FINDABLE] = TRUE;
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_7_DasLager(C_Info)
{
	nr = 1;
	condition = Info_grd_7_DasLager_Condition;
	information = Info_grd_7_DasLager_Info;
	permanent = 1;
	description = "� ��� ���� ����� �������� �� ������?";
};


func int Info_grd_7_DasLager_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
	return FALSE;
};

func void Info_grd_7_DasLager_Info()
{
	AI_Output(other,self,"Info_grd_7_DasLager_15_00");	//��� ���� ����� �������� �� ������?
	AI_Output(self,other,"Info_grd_7_DasLager_07_01");	//��-�. ����������� �� ��� - ������� ��������.
	AI_Output(self,other,"Info_grd_7_DasLager_07_02");	//� ������� ������ ������ � ��������.
	Info_ClearChoices(Info_grd_7_DasLager);
	Info_AddChoice(Info_grd_7_DasLager,"�����",Info_grd_7_DasLager_Zurueck);
	Info_AddChoice(Info_grd_7_DasLager,"��� ������ ���������?",Info_grd_7_DasLager_Gardisten);
	Info_AddChoice(Info_grd_7_DasLager,"��� ���������� ��������?",Info_grd_7_DasLager_Schatten);
	Info_AddChoice(Info_grd_7_DasLager,"��� ������ ��������?",Info_grd_7_DasLager_Buddler);
};

func void Info_grd_7_DasLager_Zurueck()
{
	Info_ClearChoices(Info_grd_7_DasLager);
};

func void Info_grd_7_DasLager_Gardisten()
{
	AI_Output(other,self,"Info_grd_7_DasLager_WasIstAerger_15_00");	//��� ������ ���������?
	AI_Output(self,other,"Info_grd_7_DasLager_WasIstAerger_07_01");	//�� �������� ������ � �������� ���������.
	AI_Output(self,other,"Info_grd_7_DasLager_WasIstAerger_07_02");	//������ ��� ������ �����, �� � �������� ����������� �� ���� ������. ���� �������� ����������.
};

func void Info_grd_7_DasLager_Schatten()
{
	AI_Output(other,self,"Info_grd_7_DasLager_Schatten_15_00");	//��� ���������� ��������?
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_01");	//�������� ������ �� ���, ����� ����������� ������� ������.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_02");	//����������� �� ��� - ������� ���������, ��������� ������������ �� ������. ���� �� ������ ����-������ �������� �����, ��� ���������� ����.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_03");	//��������� ���������� �����, �� ������ ����� ����� �� ���.
	AI_Output(self,other,"Info_grd_7_DasLager_Schatten_07_04");	//�� � ���� �� � �������, �� ���� ������� � ���� ������� �� ������� ���� �������, �����.
};

func void Info_grd_7_DasLager_Buddler()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_7_DasLager_Buddler_15_00");	//��� ������ ��������?
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_01");	//������� ������. ��� ���� �� �����-��, ����� �������, �� �������.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_02");	//�� ����, ��� ������� ���� ��������� ����, ����� �������� ��� ���������� �����.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_03");	//��, �������� ���, ������������ �������. ���� ���������� ����������� ����� � ������.
	AI_Output(self,other,"Info_grd_7_DasLager_Buddler_07_04");	//��� �������, �� �������� �� �������, ��� ������ ������ ������. �������� � �������, ���� �� ��� �� ������ �����.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_7_DieLage(C_Info)
{
	nr = 1;
	condition = Info_grd_7_DieLage_Condition;
	information = Info_grd_7_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_grd_7_DieLage_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
	return FALSE;
};

func void Info_grd_7_DieLage_Info()
{
	AI_Output(other,self,"Info_grd_7_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_grd_7_DieLage_07_01");	//��� ����, �� ������ � ����? ���� �� �� ������, � ����� �� ������, ����� �� ����� ������������ ���� �������, �����!
};

func void B_AssignAmbientInfos_grd_7(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_grd_7_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_grd_7_DieLage.npc = Hlp_GetInstanceID(slf);
};

