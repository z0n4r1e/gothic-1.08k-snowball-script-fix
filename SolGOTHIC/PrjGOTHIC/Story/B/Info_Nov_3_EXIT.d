
instance Info_Nov_3_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Nov_3_EXIT_Condition;
	information = Info_Nov_3_EXIT_Info;
	permanent = 1;
	description = "���������";
};


func int Info_Nov_3_EXIT_Condition()
{
	return 1;
};

func void Info_Nov_3_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Nov_3_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Nov_3_EinerVonEuchWerden_Condition;
	information = Info_Nov_3_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ��� �������������� � ����� ������?";
};


func int Info_Nov_3_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Nov_3_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Nov_3_EinerVonEuchWerden_15_00");	//��� ��� �������������� � ����� ������?
	AI_Output(self,other,"Info_Nov_3_EinerVonEuchWerden_03_01");	//��� ����� ������. ���, ����.
	AI_Output(self,other,"Info_Nov_3_EinerVonEuchWerden_03_02");	//�������� � ���� - ��� �������� ���� �� ���� ��������.
};


instance Info_Nov_3_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Nov_3_WichtigePersonen_Condition;
	information = Info_Nov_3_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_Nov_3_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Nov_3_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Nov_3_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Nov_3_WichtigePersonen_03_01");	//�`������! ����� �������! �� ������ ��� � ��� ������� �����.
	AI_Output(self,other,"Info_Nov_3_WichtigePersonen_03_02");	//��� ��� ���� ������� �� ��� ����.
};


instance Info_Nov_3_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Nov_3_DasLager_Condition;
	information = Info_Nov_3_DasLager_Info;
	permanent = 1;
	description = "�� ��� ����� ����� �������� ��������? ";
};


func int Info_Nov_3_DasLager_Condition()
{
	return 1;
};

func void Info_Nov_3_DasLager_Info()
{
	var C_Npc CorKalom;
	AI_Output(other,self,"Info_Nov_3_DasLager_15_00");	//�������� ��� ���-������ �� ���� �����.
	AI_Output(self,other,"Info_Nov_3_DasLager_03_01");	//����� ���� ����� �������. �� ��������� ���� �������� ���� �������������� �����.
	AI_Output(self,other,"Info_Nov_3_DasLager_03_02");	//�� ������� ��� ��� ������������ ��� ������.
	CorKalom = Hlp_GetNpc(GUR_1201_CorKalom);
	CorKalom.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Nov_3_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Nov_3_DieLage_Condition;
	information = Info_Nov_3_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Nov_3_DieLage_Condition()
{
	return 1;
};

func void Info_Nov_3_DieLage_Info()
{
	AI_Output(other,self,"Info_Nov_3_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Nov_3_DieLage_03_01");	//� �� �������, ��������!
};

func void B_AssignAmbientInfos_Nov_3(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);
	Info_Nov_3_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_DieLage.npc = Hlp_GetInstanceID(slf);
};

