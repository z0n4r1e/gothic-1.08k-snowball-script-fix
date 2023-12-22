
instance Info_Grd_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Grd_6_EXIT_Condition;
	information = Info_Grd_6_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Grd_6_EXIT_Condition()
{
	return 1;
};

func void Info_Grd_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Grd_6_EinerVonEuchWerden(C_Info)
{
	nr = 1;
	condition = Info_Grd_6_EinerVonEuchWerden_Condition;
	information = Info_Grd_6_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� ����� ����������.";
};


func int Info_Grd_6_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_GRD) && (Npc_GetTrueGuild(other) != GIL_KDF) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Grd_6_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Grd_6_EinerVonEuchWerden_15_00");	//��� ����� ����?
	AI_Output(self,other,"Info_Grd_6_EinerVonEuchWerden_06_01");	//�� ���� �� ���������, ��? ���� �� ����� ��� ���� ������, �������� � ���������� - �� �� ����� �������, ��� � ��� �������������.
	AI_Output(self,other,"Info_Grd_6_EinerVonEuchWerden_06_02");	//�� �� ����� � ���� ���� ������... ����, �������, �� �� ������ �������� � ������ �����.
};


instance Info_Grd_6_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_Grd_6_WichtigePersonen_Condition;
	information = Info_Grd_6_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Grd_6_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Grd_6_WichtigePersonen_Info()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_Grd_6_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Grd_6_WichtigePersonen_06_01");	//����� ������ �� ���, ����� ��� �� ����������� � ������. �� ���� �� ����� ������.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Grd_6_DasLager(C_Info)
{
	nr = 1;
	condition = Info_Grd_6_DasLager_Condition;
	information = Info_Grd_6_DasLager_Info;
	permanent = 1;
	description = "� ����� ���������. ��� ���� ����?";
};


func int Info_Grd_6_DasLager_Condition()
{
	if(!C_NpcBelongsToOldCamp(other) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
	return FALSE;
};

func void Info_Grd_6_DasLager_Info()
{
	AI_Output(other,self,"Info_Grd_6_DasLager_15_00");	//� ����� �������.
	AI_Output(self,other,"Info_Grd_6_DasLager_06_01");	//� ����.
	AI_Output(other,self,"Info_Grd_6_DasLager_15_02");	//��� ������� ����?
	AI_Output(self,other,"Info_Grd_6_DasLager_06_03");	//��� ����� ������: ����� �������� - ���� �������.
	Info_ClearChoices(Info_Grd_6_DasLager);
	Info_AddChoice(Info_Grd_6_DasLager,"�������.",Info_Grd_6_DasLager_Verstehe);
	Info_AddChoice(Info_Grd_6_DasLager,"� ��� �� ��������� ����������?",Info_Grd_6_DasLager_WasIstAerger);
};

func void Info_Grd_6_DasLager_Verstehe()
{
	AI_Output(other,self,"Info_Grd_6_DasLager_Verstehe_15_00");	//�������.
	Info_ClearChoices(Info_Grd_6_DasLager);
};

func void Info_Grd_6_DasLager_WasIstAerger()
{
	AI_Output(other,self,"Info_Grd_6_DasLager_WasIstAerger_15_00");	//� ��� �� ��������� ����������?
	AI_Output(self,other,"Info_Grd_6_DasLager_WasIstAerger_06_01");	//����������� ��������� ������ ��� �� ������.
	AI_Output(self,other,"Info_Grd_6_DasLager_WasIstAerger_06_02");	//���� �� ������� ����-������ �� ���, �� � ����� ����������.
	AI_Output(self,other,"Info_Grd_6_DasLager_WasIstAerger_06_03");	//���� � ������, ��� �� �������� �� ����� �����, �...
	AI_Output(other,self,"Info_Grd_6_DasLager_WasIstAerger_15_04");	//�����, �����, � ��� �����.
	Info_ClearChoices(Info_Grd_6_DasLager);
};


instance Info_Grd_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Grd_6_DieLage_Condition;
	information = Info_Grd_6_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Grd_6_DieLage_Condition()
{
	return 1;
};

func void Info_Grd_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Grd_6_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Grd_6_DieLage_06_01");	//����� ������������?
};

func void B_AssignAmbientInfos_GRD_6(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Grd_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Grd_6_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Grd_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Grd_6_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Grd_6_DieLage.npc = Hlp_GetInstanceID(slf);
};

