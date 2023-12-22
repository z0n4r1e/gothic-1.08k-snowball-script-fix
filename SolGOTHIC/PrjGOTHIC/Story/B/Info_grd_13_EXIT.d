
instance Info_grd_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_grd_13_EXIT_Condition;
	information = Info_grd_13_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_grd_13_EXIT_Condition()
{
	return 1;
};

func void Info_grd_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_grd_13_EinerVonEuchWerden(C_Info)
{
	nr = 1;
	condition = Info_grd_13_EinerVonEuchWerden_Condition;
	information = Info_grd_13_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� ����� ����������.";
};


func int Info_grd_13_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_GRD) && (Npc_GetTrueGuild(other) != GIL_KDF) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_grd_13_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_grd_13_EinerVonEuchWerden_15_00");	//� ���� ����� ����������.
	AI_Output(self,other,"Info_grd_13_EinerVonEuchWerden_13_01");	//��, ��� ����� �������, ��������.
};


instance Info_grd_13_WichtigePersonen(C_Info)
{
	nr = 1;
	condition = Info_grd_13_WichtigePersonen_Condition;
	information = Info_grd_13_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_grd_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_grd_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_grd_13_WichtigePersonen_15_00");	//� ��� ����� �������?
	AI_Output(self,other,"Info_grd_13_WichtigePersonen_13_01");	//�. � ����� ����, ������: ����� ����� �� ����� ������.
};


instance Info_grd_13_DasLager(C_Info)
{
	nr = 1;
	condition = Info_grd_13_DasLager_Condition;
	information = Info_grd_13_DasLager_Info;
	permanent = 1;
	description = "��� ��� ������� � �����?";
};


func int Info_grd_13_DasLager_Condition()
{
	if(Kapitel == 1)
	{
		return 1;
	};
	return FALSE;
};

func void Info_grd_13_DasLager_Info()
{
	AI_Output(other,self,"Info_grd_13_DasLager_15_00");	//��� ��� ������� � �����?
	AI_Output(self,other,"Info_grd_13_DasLager_13_01");	//� �����. ������ ���� ������ ����� ����� ����.
	Info_ClearChoices(Info_grd_13_DasLager);
	Info_AddChoice(Info_grd_13_DasLager,"�������.",Info_grd_13_DasLager_Verstehe);
	Info_AddChoice(Info_grd_13_DasLager,"� ��� ���� ��������� ����������?",Info_grd_13_DasLager_WachenBestechen);
	Info_AddChoice(Info_grd_13_DasLager,"� ��� ��� ����������� � �������?",Info_grd_13_DasLager_GomezSprechen);
};

func void Info_grd_13_DasLager_Verstehe()
{
	AI_Output(other,self,"Info_grd_13_DasLager_Verstehe_15_00");	//�������.
	Info_ClearChoices(Info_grd_13_DasLager);
};

func void Info_grd_13_DasLager_WachenBestechen()
{
	AI_Output(other,self,"Info_grd_13_DasLager_WachenBestechen_15_00");	//� ��� ���� ��������� ����������?
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_01");	//�������� ���� �� ��������, ��? �����, ��� ����� ����������� � ������� �� ������-������, ���� �� ���������� �� ���������� ����.
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_02");	//�� ���� ����� ������ � ���, ��� ��� ��������� ����-�� ���������� � �����, ������ ������ � ����������.
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_03");	//�� ���� ���� ����� �������� ���������, � ������.
	AI_Output(self,other,"Info_grd_13_DasLager_WachenBestechen_13_04");	//�� ���� ���� �� � �������� � �����, ��� �����? ������ ��� ������ ���������� �� ����.
	AI_Output(other,self,"Info_grd_13_DasLager_WachenBestechen_15_05");	//� ������ ��� ���������, �� �����������.
};

func void Info_grd_13_DasLager_GomezSprechen()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_grd_13_DasLager_GomezSprechen_15_00");	//� ��� ��� ����������� � �������?
	AI_Output(self,other,"Info_grd_13_DasLager_GomezSprechen_13_01");	//������ �� ���������� �������, ������� ��� ����� �� �������� ����.
	AI_Output(self,other,"Info_grd_13_DasLager_GomezSprechen_13_02");	//�������, �������� � �������.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_grd_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_grd_13_DieLage_Condition;
	information = Info_grd_13_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_grd_13_DieLage_Condition()
{
	if(!C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
	return FALSE;
};

func void Info_grd_13_DieLage_Info()
{
	AI_Output(other,self,"Info_grd_13_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_grd_13_DieLage_13_01");	//��� ����. ���� ������� ������� � ���, � ��� ��������� - � ����� ������� ��� � ��������� ����������.
	AI_Output(self,other,"Info_grd_13_DieLage_13_02");	//���� �� ���������, ��� �� ����� ��������. ��, ������ ���� ������, �� ��������� �� ������ ������, �� � ������.
};

func void B_AssignAmbientInfos_grd_13(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_grd_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_grd_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

