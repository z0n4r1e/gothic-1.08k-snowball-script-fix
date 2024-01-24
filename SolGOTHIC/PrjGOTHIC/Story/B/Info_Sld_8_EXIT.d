
instance Info_Sld_8_EXIT(C_Info)
{
	nr = 999;
	condition = Info_Sld_8_EXIT_Condition;
	information = Info_Sld_8_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Sld_8_EXIT_Condition()
{
	return TRUE;
};

func void Info_Sld_8_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Sld_8_EinerVonEuchWerden(C_Info)
{
	nr = 4;
	condition = Info_Sld_8_EinerVonEuchWerden_Condition;
	information = Info_Sld_8_EinerVonEuchWerden_Info;
	permanent = 1;
	description = "��� ����� ����?";
};


func int Info_Sld_8_EinerVonEuchWerden_Condition()
{
	if((Npc_GetTrueGuild(other) != GIL_SLD) && (Npc_GetTrueGuild(other) != GIL_KDW) && !C_NpcBelongsToOldCamp(other) && !C_NpcBelongsToPsiCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Sld_8_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Sld_8_EinerVonEuchWerden_15_00");	//��� ����� ����?
	AI_Output(self,other,"Info_Sld_8_EinerVonEuchWerden_08_01");	//�� �������, ��� ������ ��� ����� ���������, ������� ������ ������� ����� ��������� ��� � ��������� �����.
	AI_Output(self,other,"Info_Sld_8_EinerVonEuchWerden_08_02");	//���� ������ �������� � ������, �������� ���� �������� �������� � ������.
};


instance Info_Sld_8_WichtigePersonen(C_Info)
{
	nr = 3;
	condition = Info_Sld_8_WichtigePersonen_Condition;
	information = Info_Sld_8_WichtigePersonen_Info;
	permanent = 1;
	description = "��� ����� ���������?";
};


func int Info_Sld_8_WichtigePersonen_Condition()
{
	return TRUE;
};

func void Info_Sld_8_WichtigePersonen_Info()
{
	var C_Npc Lee;
	var C_Npc Cronos;
	AI_Output(other,self,"Info_Sld_8_WichtigePersonen_15_00");	//��� ����� ���������?
	AI_Output(self,other,"Info_Sld_8_WichtigePersonen_08_01");	//��, ��������, ����������� ��. �� �������� � ������ ������: �� �������� ��, � ��� ������ �������� ��� ������.
	AI_Output(other,self,"Info_Sld_8_WichtigePersonen_15_02");	//������, ���� ������� ����?
	AI_Output(self,other,"Info_Sld_8_WichtigePersonen_08_03");	//���. � ������ ��� ��������. ����������� ����� ����� - ��, ��� �� ���� ��� �� ������� �������� � ������ ������.
	AI_Output(self,other,"Info_Sld_8_WichtigePersonen_08_04");	//������ ����� ���������� ����� �����, � �������� �� ������ � �����: ����� ������� ���� � ���� � �������� ��, ��� ������� ���� ����� ����� ������!
	Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = 1;
	Cronos = Hlp_GetNpc(KDW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = 1;
};


instance Info_Sld_8_DasLager(C_Info)
{
	nr = 2;
	condition = Info_Sld_8_DasLager_Condition;
	information = Info_Sld_8_DasLager_Info;
	permanent = 1;
	description = "�������� ��� �� ���� ������.";
};


func int Info_Sld_8_DasLager_Condition()
{
	if(!C_NpcBelongsToNewCamp(other))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Sld_8_DasLager_Info()
{
	var C_Npc Cronos;
	AI_Output(other,self,"Info_Sld_8_DasLager_15_00");	//�������� ��� �� ���� ������.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_01");	//���� ����� ��������������. � ������ ����� �����������.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_02");	//����� ���� ��������� ���������� �������. ������: � ����� �� ������� �����, ����� ���������.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_03");	//������: ���� ����������� ����������� � ����� ����, �� ��������. ������: ����� �� �������� � ��� �� �����.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_04");	//������ ��, ���� ��� ����������� �����, � �� �� �������� ����� ���������, ����� ����, ���� �������.
	Cronos = Hlp_GetNpc(KDW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = 1;
};


instance Info_Sld_8_DieLage(C_Info)
{
	nr = 1;
	condition = Info_Sld_8_DieLage_Condition;
	information = Info_Sld_8_DieLage_Info;
	permanent = 1;
	description = "��� ����?";
};


func int Info_Sld_8_DieLage_Condition()
{
	return TRUE;
};

func void Info_Sld_8_DieLage_Info()
{
	var C_Npc Cronos;
	AI_Output(other,self,"Info_Sld_8_DieLage_15_00");	//��� ����?
	AI_Output(self,other,"Info_Sld_8_DieLage_08_01");	//��� ������. ����� �� ���, ����� ����� �� ���������� � �����, �� � � ���� ����.
	Cronos = Hlp_GetNpc(KDW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = 1;
};


instance Info_Sld_8_Krautprobe(C_Info)
{
	nr = 5;
	condition = Info_Sld_8_Krautprobe_Condition;
	information = Info_Sld_8_Krautprobe_Info;
	permanent = 1;
	description = "� ���� ���� ��������. ������?";
};


func int Info_Sld_8_Krautprobe_Condition()
{
	if(((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS)) && (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Sld_8_Krautprobe_Info()
{
	AI_Output(other,self,"Info_Sld_8_Krautprobe_15_00");	//� ���� ���� ��������. ������?
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
		AI_Output(self,other,"Info_Sld_8_Krautprobe_08_01");	//������ �� � ���? � ��� ���� �� ���� 10 ������ ����.
		AI_Output(self,other,"Info_Sld_8_Krautprobe_08_02");	//������ ��������� - �����, ��� ���� ����� �� ������.
		CreateInvItems(self,ItMiNugget,10);
		B_GiveInvItems(self,other,ItMiNugget,10);
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self,other,"Info_Sld_8_Krautprobe_No_Joint_08_00");	//������ ������ ���. � ���� ���� ��� �� ������, ���?
	};
};

func void B_AssignAmbientInfos_Sld_8(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);
	Info_Sld_8_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_DieLage.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_Krautprobe.npc = Hlp_GetInstanceID(slf);
};

