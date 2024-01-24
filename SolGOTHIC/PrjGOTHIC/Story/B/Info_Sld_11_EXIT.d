
instance Info_Sld_11_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Sld_11_EXIT_Condition;
	information = Info_Sld_11_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Sld_11_EXIT_Condition()
{
	return TRUE;
};

func void Info_Sld_11_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Sld_11_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Sld_11_EinerVonEuchWerden_Condition;
	information = Info_Sld_11_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "� ���� ����� ��������� � �����.";
};


func int Info_Sld_11_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_SLD) && (Npc_GetTrueGuild(other) != GIL_KDW) && !C_NpcBelongsToOldCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Sld_11_EinerVonEuchWerden_Info()
{
	var C_Npc gorn;
	AI_Output(other,self,"Info_Sld_11_EinerVonEuchWerden_15_00");	//� ���� ����� ��������� � �����.
	AI_Output(self,other,"Info_Sld_11_EinerVonEuchWerden_11_01");	//��� �� ��� �� ������. ���� �� ����� ��������� �� ���� ����, �� ������ ����. 
	AI_Output(self,other,"Info_Sld_11_EinerVonEuchWerden_11_02");	//�� �� ����� ������ ���, ��� ������ ������� �����. ��, ��� � ���� � ����?
	AI_Output(other,self,"Info_Sld_11_EinerVonEuchWerden_15_03");	//��...
	AI_Output(self,other,"Info_Sld_11_EinerVonEuchWerden_11_04");	//� ��� � �����. ���� �� ����� ��������, �� �������� � ������. �� ������ ���������� ��������.
	AI_Output(self,other,"Info_Sld_11_EinerVonEuchWerden_11_05");	//����� ����, ���� �������, � �� ������ ����� ������������ � �����.
	gorn = Hlp_GetNpc(PC_Fighter);
	gorn.aivar[AIV_FINDABLE] = 1;
};


instance Info_Sld_11_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Sld_11_WichtigePersonen_Condition;
	information = Info_Sld_11_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Sld_11_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_Sld_11_WichtigePersonen_Info()
{
	var C_Npc Lee;
	var C_Npc Cronos;
	AI_Output(other,self,"Info_Sld_11_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Sld_11_WichtigePersonen_11_01");	//�� ������ ��, ��� ������� ����. �� ���� ����� ��� ������ �� ������� - ������ ��������� ����� �������� ���� ��� ���������� � ���� �����.
	AI_Output(self,other,"Info_Sld_11_WichtigePersonen_11_02");	//� ��������, ��������� ��. �� � ��� �������.
	Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = 1;
	Cronos = Hlp_GetNpc(KDW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = 1;
};


instance Info_Sld_11_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Sld_11_DasLager_Condition;
	information = Info_Sld_11_DasLager_Info;
	permanent = 1;
	description = "� ������ ��� ��������?";
};


func int Info_Sld_11_DasLager_Condition()
{
	return TRUE;
};

func void Info_Sld_11_DasLager_Info()
{
	AI_Output(other,self,"Info_Sld_11_DasLager_15_00");	//� ������ ��� ��������?
	AI_Output(self,other,"Info_Sld_11_DasLager_11_01");	//������, ������, �������� ������ ��������. ���� ������ ��, ��� �����, � ��, ��������, ������ �������� ����� � �������� ������.
};


instance Info_Sld_11_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Sld_11_DieLage_Condition;
	information = Info_Sld_11_DieLage_Info;
	permanent = 1;
	description = "�� � �������?";
};


func int Info_Sld_11_DieLage_Condition()
{
	return TRUE;
};

func void Info_Sld_11_DieLage_Info()
{
	AI_Output(other,self,"Info_Sld_11_DieLage_15_00");	//�� � �������?
	AI_Output(self,other,"Info_Sld_11_DieLage_11_01");	//���� ��� ����...
	AI_Output(other,self,"Info_Sld_11_DieLage_15_02");	//����?
	AI_Output(self,other,"Info_Sld_11_DieLage_11_03");	//���� ���� � ������ ����� ������� �������� ������, ������ �� � ��� ����� �������� ����� ����� �������.
	AI_Output(self,other,"Info_Sld_11_DieLage_11_04");	//� ��� ����� �� ������� �������.
};


instance Info_Sld_11_Krautprobe(C_Info)
{
	nr = 5;
	condition = Info_Sld_11_Krautprobe_Condition;
	information = Info_Sld_11_Krautprobe_Info;
	permanent = 1;
	description = "������ ���������?";
};


func int Info_Sld_11_Krautprobe_Condition()
{
	if(((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS)) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Sld_11_Krautprobe_Info()
{
	AI_Output(other,self,"Info_Sld_11_Krautprobe_15_00");	//������ ���������?
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
		AI_Output(self,other,"Info_Sld_11_Krautprobe_11_01");	//�������, ����. ��� 10 ������ ����.
		AI_Output(self,other,"Info_Sld_11_Krautprobe_11_02");	//���� �� ��������� ��� �������...
		CreateInvItems(self,ItMiNugget,10);
		B_GiveInvItems(self,other,ItMiNugget,10);
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Sld_11_Krautprobe_No_Joint_11_00");	//������, ������� ���, ����� � ���������.
	};
};

func void B_AssignAmbientInfos_Sld_11(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);
	Info_Sld_11_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_DieLage.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_Krautprobe.npc = Hlp_GetInstanceID(slf);
};

