
instance Info_Mine_Sld_8_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Mine_Sld_8_EXIT_Condition;
	information = Info_Mine_Sld_8_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_Mine_Sld_8_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Mine_Sld_8_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Mine_Sld_8_EinerVonEuchWerden_Condition;
	information = Info_Mine_Sld_8_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� �������������� � ������ ������?";
};


func int Info_Mine_Sld_8_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_SLD) && (Npc_GetTrueGuild(other) != GIL_KDW) && !C_NpcBelongsToOldCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Mine_Sld_8_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Mine_Sld_8_EinerVonEuchWerden_15_00");	//� ���� �������������� � ������ ������?
	AI_Output(self,other,"Info_Mine_Sld_8_EinerVonEuchWerden_08_01");	//���� �� ������ �������� �����, � ������, ������ �� ������ ��������� ������ � ����� ������.
	AI_Output(self,other,"Info_Mine_Sld_8_EinerVonEuchWerden_08_02");	//��������� ����� ���.
};


instance Info_Mine_Sld_8_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Mine_Sld_8_WichtigePersonen_Condition;
	information = Info_Mine_Sld_8_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Mine_Sld_8_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Mine_Sld_8_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Mine_Sld_8_WichtigePersonen_08_01");	//� ������ ������� - ����. �� ���������� ���� � ������.
	AI_Output(self,other,"Info_Mine_Sld_8_WichtigePersonen_08_02");	//��� ��� ���� ����� ���������� � ������.
};


instance Info_Mine_Sld_8_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Mine_Sld_8_DasLager_Condition;
	information = Info_Mine_Sld_8_DasLager_Info;
	permanent = 1;
	description = "��� ������ � ������?";
};


func int Info_Mine_Sld_8_DasLager_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_DasLager_Info()
{
	AI_Output(other,self,"Info_Mine_Sld_8_DasLager_15_00");	//��� ������ � ������?
	AI_Output(self,other,"Info_Mine_Sld_8_DasLager_08_01");	//�� �������� ���� � �����.
	AI_Output(other,self,"Info_Mine_Sld_8_DasLager_08_02");	//����� ����� �����, ������ �� ������ ������ �����.
};


instance Info_Mine_Sld_8_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Mine_Sld_8_DieLage_Condition;
	information = Info_Mine_Sld_8_DieLage_Info;
	permanent = 1;
	description = "��� � �������?";
};


func int Info_Mine_Sld_8_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_DieLage_Info()
{
	AI_Output(other,self,"Info_Mine_Sld_8_DieLage_15_00");	//��� � �������?
	AI_Output(self,other,"Info_Mine_Sld_8_DieLage_08_01");	//������ �� �����������? ��� ��� ���������.
};

func void B_AssignAmbientInfos_Mine_Sld_8(var C_Npc slf)
{
	Info_Mine_Sld_8_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_DieLage.npc = Hlp_GetInstanceID(slf);
};

