
instance Info_Vlk_4_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Vlk_4_EXIT_Condition;
	information = Info_Vlk_4_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_Vlk_4_EXIT_Condition()
{
	return 1;
};

func void Info_Vlk_4_EXIT_Info()
{
	AI_Output(other,self,"Info_Vlk_4_EinerVonEuchWerden_15_00");	//�������. �����!
	AI_Output(self,other,"Info_Vlk_4_EinerVonEuchWerden_04_01");	//���� ���, ��������.
	AI_StopProcessInfos(self);
};


instance Info_Vlk_4_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Vlk_4_EinerVonEuchWerden_Condition;
	information = Info_Vlk_4_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ����� �������, ��� ���� ����� �������������� � ����� ������?";
};


func int Info_Vlk_4_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Vlk_4_EinerVonEuchWerden_Info()
{
	var C_Npc Thorus;
	AI_Output(other,self,"Info_Vlk_4_EinerVonEuchWerden_15_01");	//��� ����� �������, ����� �������������� � ����� ������?
	AI_Output(self,other,"Info_Vlk_4_EinerVonEuchWerden_04_04");	//�� ������ ����� ���������� ��� ���������? ��� ����� �������, ��������. ���� �������� ������ ��������� ��������� ������ ��� ������ ����� �������� ���� ����������� � �������.
	AI_Output(self,other,"Info_Vlk_4_EinerVonEuchWerden_04_02");	//���� ����� �����, � ��� �� ������� ����� �������� ����������, � � ��� - ����������. �� ���� �� �� �������������� � ������ �� �������, ����� �� ����� ������������ ���� �������.
	AI_Output(self,other,"Info_Vlk_4_EinerVonEuchWerden_04_03");	//���� �� � ��� �� ����� �����, � �� ��������� � ���-������ �� ���������. ����� ���� ����� ��� �������� ���, ��� ������� ������ ����. �� �����,  ����������.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Vlk_4_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Vlk_4_WichtigePersonen_Condition;
	information = Info_Vlk_4_WichtigePersonen_Info;
	permanent = 1;
	description = "�� ���� ��� �� ������� ��� ����� �������� ��������?";
};


func int Info_Vlk_4_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Vlk_4_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Vlk_4_WichtigePersonen_15_00");	//�� ���� ��� �� ������� ��� ����� �������� ��������?
	AI_Output(self,other,"Info_Vlk_4_WichtigePersonen_04_01");	//��� ������� ����� ����� �� ��������� ��������� � �����. ����� ����, �� ����� ���� �������, �� ���� �� �����, ��� ����� ���� � ��������.
	AI_Output(self,other,"Info_Vlk_4_WichtigePersonen_04_02");	//���� � ���� ��������� �������� � ��������� ������, �� ������� ���� � �� ����� ����������.
};


instance Info_Vlk_4_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Vlk_4_DasLager_Condition;
	information = Info_Vlk_4_DasLager_Info;
	permanent = 1;
	description = "�� ��� ����� ����� �������� ��������? ";
};


func int Info_Vlk_4_DasLager_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Vlk_4_DasLager_Info()
{
	AI_Output(other,self,"Info_Vlk_4_DasLager_15_00");	//�� ��� ����� ����� �������� ��������? 
	AI_Output(self,other,"Info_Vlk_4_DasLager_04_01");	//���� ���� �� ��������� ���� �������� � �����, �������� ��������� ����� ��������� �������� � �������� �����.
	AI_Output(self,other,"Info_Vlk_4_DasLager_04_02");	//���� ���� �������, ����� ��� ����� ����� ���� ���� �����-������ ��������� - � ��� ������� ���� ��������� �� ������������. ������ �� �������� ������ � ������ ������.
	AI_Output(self,other,"Info_Vlk_4_DasLager_04_03");	//��� �� ������ ��������� ����. ������ ��� ���� ���� ��������� � ������ ������ �� ���.
	AI_Output(other,self,"Info_Vlk_4_DasLager_15_04");	//���� ������� �� �����? �����?
	AI_Output(self,other,"Info_Vlk_4_DasLager_04_05");	//���� �� � ����. ������ � ���, ��� ��� �����.
};


instance Info_Vlk_4_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Vlk_4_DieLage_Condition;
	information = Info_Vlk_4_DieLage_Info;
	permanent = 1;
	description = "��� � �������?";
};


func int Info_Vlk_4_DieLage_Condition()
{
	return 1;
};

func void Info_Vlk_4_DieLage_Info()
{
	AI_Output(other,self,"Info_Vlk_4_DieLage_15_00");	//��� � �������?
	AI_Output(self,other,"Info_Vlk_4_DieLage_04_01");	//� ������, ��� � �������� ��� �����. � ��� ��� ��� �� �������-�� ����������.
};

func void B_AssignAmbientInfos_Vlk_4(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);
	Info_Vlk_4_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_4_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_4_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_4_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Vlk_4_DieLage.npc = Hlp_GetInstanceID(slf);
};

