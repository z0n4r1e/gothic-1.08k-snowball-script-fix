
instance Info_Tpl_13_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Tpl_13_EXIT_Condition;
	information = Info_Tpl_13_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Tpl_13_EXIT_Condition()
{
	return TRUE;
};

func void Info_Tpl_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Tpl_13_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Tpl_13_EinerVonEuchWerden_Condition;
	information = Info_Tpl_13_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� ����� �������, ��� � ��.";
};


func int Info_Tpl_13_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_TPL) && !C_NpcBelongsToNewCamp(other) && !C_NpcBelongsToOldCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Tpl_13_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Tpl_13_EinerVonEuchWerden_15_00");	//� ���� ����� �������, ��� � ��.
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_01");	//� ������ �� ��, �� ���� ��� �������� ����������, ������ ��� � ���� ������ �� ������ ����� ��������� ������?
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_02");	//�� �����, ��� ������� ��� ��� �������� ������� �� ��� ����� � �������� ���������� ����� � ��������.
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_03");	//������ ��� �������� �� ����, �� ������ ������ ������� �� ������ �������.
	AI_Output(self,other,"Info_Tpl_13_EinerVonEuchWerden_13_04");	//��� ������ ��������� ����� �, ��������, �������� ���� � �������.
};


instance Info_Tpl_13_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Tpl_13_WichtigePersonen_Condition;
	information = Info_Tpl_13_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Tpl_13_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_Tpl_13_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Tpl_13_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Tpl_13_WichtigePersonen_13_01");	//���� ���� � ��������� �������. ������ ���������� ���� ������, � ���� ������ ��� ���������.
};


instance Info_Tpl_13_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Tpl_13_DasLager_Condition;
	information = Info_Tpl_13_DasLager_Info;
	permanent = 1;
	description = "��� �������� �� ��������� � ���� �������...";
};


func int Info_Tpl_13_DasLager_Condition()
{
	if(Kapitel <= 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Tpl_13_DasLager_Info()
{
	AI_Output(other,self,"Info_Tpl_13_DasLager_15_00");	//��� �������� �� ��������� � ���� �������...
	AI_Output(self,other,"Info_Tpl_13_DasLager_13_01");	//� ������ ������ �� ����! ���������� � �����! ���� �� �� ��������� ���� ������ �������, �� �� ������� ����������� ����� ����� �����!
};


instance Info_Tpl_13_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Tpl_13_DieLage_Condition;
	information = Info_Tpl_13_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Tpl_13_DieLage_Condition()
{
	if(!C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Tpl_13_DieLage_Info()
{
	AI_Output(other,self,"Info_Tpl_13_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Tpl_13_DieLage_13_01");	//� ��� ��� ��� � ���� ����� �� ��������� ���������� ����, � �������� ����, ��� ������� ������.
	AI_Output(other,self,"Info_Tpl_13_DieLage_15_02");	//������ �������...
	AI_Output(self,other,"Info_Tpl_13_DieLage_13_03");	//�� ����������. ���� �� ������.
};

func void B_AssignAmbientInfos_Tpl_13(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);
	Info_Tpl_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DieLage.npc = Hlp_GetInstanceID(slf);
};

