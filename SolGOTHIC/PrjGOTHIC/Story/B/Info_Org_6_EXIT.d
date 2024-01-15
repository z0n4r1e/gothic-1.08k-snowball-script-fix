
instance Info_Org_6_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Org_6_EXIT_Condition;
	information = Info_Org_6_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Org_6_EXIT_Condition()
{
	return 1;
};

func void Info_Org_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Org_6_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Org_6_EinerVonEuchWerden_Condition;
	information = Info_Org_6_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� �������������� � ���!";
};


func int Info_Org_6_EinerVonEuchWerden_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_None)
	{
		return TRUE;
	};
};

func void Info_Org_6_EinerVonEuchWerden_Info()
{
	var C_Npc Lares;
	AI_Output(other,self,"Info_Org_6_EinerVonEuchWerden_15_00");	//� ���� �������������� � ���.
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_01");	//���� ������, ��� ����� �������������� � �����.
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_02");	//�� ���� ����������� ������ �������, ����� ������� ���.
	AI_Output(other,self,"Info_Org_6_EinerVonEuchWerden_15_03");	//��������?
	AI_Output(self,other,"Info_Org_6_EinerVonEuchWerden_06_04");	//��������, ���-������ ������ ���� � ����.
	Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Org_6_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Org_6_WichtigePersonen_Condition;
	information = Info_Org_6_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� �������?";
};


func int Info_Org_6_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Org_6_WichtigePersonen_Info()
{
	var C_Npc Lee;
	var C_Npc Lares;
	AI_Output(other,self,"Info_Org_6_WichtigePersonen_15_00");	//��� ����� �������?
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_01");	//�� ������ �� ������� ������, ��?
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_02");	//����� ��� �������. ���� ������ �� �������� ������� ���� � ����, �� �� ��� ����� ������ ���� ��, ��� ������� ������.
	AI_Output(self,other,"Info_Org_6_WichtigePersonen_06_03");	//���� � ��� � ���� �������, �� ��� ����. �� �� ���������� ����, ����� �� ��������� � ����� ����.
	Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = TRUE;
	Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};


instance Info_Org_6_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Org_6_DasLager_Condition;
	information = Info_Org_6_DasLager_Info;
	permanent = 1;
	description = "�������� ��� �� ���� �����.";
};


func int Info_Org_6_DasLager_Condition()
{
	return 1;
};

func void Info_Org_6_DasLager_Info()
{
	AI_Output(other,self,"Info_Org_6_DasLager_15_00");	//�������� ���-������ ��� �� ���� �����.
	AI_Output(self,other,"Info_Org_6_DasLager_06_01");	//� �������� ������ ���� ����������� ���, ������ ����. ���� �� ����������� �������� �� � �����, ������ �� ����.
	AI_Output(self,other,"Info_Org_6_DasLager_06_02");	//� ��� ������� �������, �� ��� �������� ����� ������ ���� � �����.
};


instance Info_Org_6_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Org_6_DieLage_Condition;
	information = Info_Org_6_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Org_6_DieLage_Condition()
{
	return 1;
};

func void Info_Org_6_DieLage_Info()
{
	AI_Output(other,self,"Info_Org_6_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Org_6_DieLage_06_01");	//������! � �� ��� �������? ������ ����� ���� ��� � ��� ����� �����, ���� ����������� ���� �������� ������� ����.
	AI_Output(self,other,"Info_Org_6_DieLage_06_02");	//� ����� ����� � ��� � ����������� �� ����� ������� ������� �������.
};


instance Info_Org_6_Krautprobe(C_Info)
{
	nr = 5;
	condition = Info_Org_6_Krautprobe_Condition;
	information = Info_Org_6_Krautprobe_Info;
	permanent = 1;
	description = "� ���� ���� ������� ���������. ������?";
};


func int Info_Org_6_Krautprobe_Condition()
{
	if(((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS)) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Org_6_Krautprobe_Info()
{
	AI_Output(other,self,"Info_Org_6_Krautprobe_15_00");	//� ���� ���� ������� ���������. ������?
	if((Npc_HasItems(other,ItMiJoint_1) > 0) || (Npc_HasItems(other,ItMiJoint_2) > 0) || (Npc_HasItems(other,ItMiJoint_3) > 0))
	{
		if(Npc_HasItems(other,ItMiJoint_1))
		{
			B_GiveInvItems(other,self,ItMiJoint_1,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_2))
		{
			B_GiveInvItems(other,self,ItMiJoint_2,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_3))
		{
			B_GiveInvItems(other,self,ItMiJoint_3,1);
		};
		AI_Output(self,other,"Info_Org_6_Krautprobe_06_01");	//�������. ���, ����� 10 ������ ����.
		AI_Output(self,other,"Info_Org_6_Krautprobe_06_02");	//�����������, ����� ����������� ���, �����?
		CreateInvItems(self,ItMiNugget,10);
		B_GiveInvItems(self,other,ItMiNugget,10);
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Org_6_Krautprobe_No_Joint_06_00");	//���? � �� ���� �� ���������.
	};
};

func void B_AssignAmbientInfos_Org_6(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);
	Info_Org_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_DieLage.npc = Hlp_GetInstanceID(slf);
	Info_Org_6_Krautprobe.npc = Hlp_GetInstanceID(slf);
};

