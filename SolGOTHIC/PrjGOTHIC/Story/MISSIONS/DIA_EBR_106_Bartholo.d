
instance DIA_Bartholo_Exit(C_Info)
{
	npc = EBR_106_Bartholo;
	nr = 999;
	condition = DIA_Bartholo_Exit_Condition;
	information = DIA_Bartholo_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Bartholo_Exit_Condition()
{
	return TRUE;
};

func void DIA_Bartholo_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Bartholo_HAllo(C_Info)
{
	npc = EBR_106_Bartholo;
	nr = 4;
	condition = Info_Bartholo_HAllo_Condition;
	information = Info_Bartholo_HAllo_Info;
	permanent = 0;
	description = "��� ��?";
};


func int Info_Bartholo_HAllo_Condition()
{
	return TRUE;
};

func void Info_Bartholo_HAllo_Info()
{
	AI_Output(other,self,"Info_Bartholo_HAllo_15_00");	//��� ��?
	AI_Output(self,other,"Info_Bartholo_HAllo_12_01");	//����� ���� �������. ��� ������ - ������� �� ���, ����� ������ ������� �������� �������.
	AI_Output(self,other,"Info_Bartholo_HAllo_12_02");	//� ������� �� �������� ��� � ���������, �� �������������� ��� ������...
	AI_Output(self,other,"Info_Bartholo_HAllo_12_03");	//����� ���������� ������� �� ����� ��������-��������.
	AI_Output(self,other,"Info_Bartholo_HAllo_12_04");	//��� ��� ������ ���� ��� ����������. ����� �� ������� ������ - ��������� ���� ������� �� ������� ������ ������.
};


instance Info_Bartholo_PERM(C_Info)
{
	npc = EBR_106_Bartholo;
	nr = 4;
	condition = Info_Bartholo_PERM_Condition;
	information = Info_Bartholo_PERM_Info;
	permanent = 0;
	description = "� ���� ��������� � ����� ������.";
	trade = 1;
};


func int Info_Bartholo_PERM_Condition()
{
	return TRUE;
};

func void Info_Bartholo_PERM_Info()
{
	AI_Output(other,self,"Info_Bartholo_PERM_15_00");	//� ���� ��������� � ����� ������.
	AI_Output(self,other,"Info_Bartholo_PERM_12_01");	//� ������ ���� ���������� - ���� � ���� ���� ����, �������.
};


instance Info_Bartholo_Krautbote(C_Info)
{
	npc = EBR_106_Bartholo;
	nr = 4;
	condition = Info_Bartholo_Krautbote_Condition;
	information = Info_Bartholo_Krautbote_Info;
	permanent = 1;
	description = "����� � ���� �������� ��� ������.";
};


func int Info_Bartholo_Krautbote_Condition()
{
	if(Kalom_Krautbote == LOG_RUNNING)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Bartholo_Krautbote_Info()
{
	AI_Output(other,self,"Info_Bartholo_Krautbote_15_00");	//����� � ���� �������� ��� ������. ��� ������ ��� �����.
	AI_Output(self,other,"Info_Bartholo_Krautbote_12_01");	//������!
	if(Npc_HasItems(other,ItMiJoint_3) >= 30)
	{
		AI_Output(self,other,"Info_Bartholo_Krautbote_12_02");	//�-���������...
		AI_Output(self,other,"Info_Bartholo_Krautbote_12_03");	//������! ����� ��� ��� ����� ������ ��������. ��� ������ �����, ��� �� ��������� �������.
		AI_Output(other,self,"Info_Bartholo_Krautbote_15_04");	//��� ������ �����?
		AI_Output(self,other,"Info_Bartholo_Krautbote_12_05");	//�� ��������... ���, ������. �������� �� ���� ������.
		B_GiveInvItems(other,self,ItMiJoint_3,30);
		CreateInvItems(self,ItMiNugget,500);
		B_GiveInvItems(self,other,ItMiNugget,500);
		Kalom_DeliveredWeed = 1;
		B_LogEntry(CH1_KrautBote,"������� �������� ��� 500 ������ ���� �� ���� ���������.");
		B_GiveXP(XP_WeedShipmentDelivered);
		Info_Bartholo_Krautbote.permanent = 0;
	}
	else
	{
		AI_Output(self,other,"Info_Bartholo_Krautbote_NoKraut_12_00");	//��� ���������� � ���� ������� ���� ���������! �������, ��� �� �� ������ ����� �� �������. ����������� � ���������� �������!
	};
};


instance DIA_EBR_106_Bartholo_Wait4SC(C_Info)
{
	npc = EBR_106_Bartholo;
	condition = DIA_EBR_106_Bartholo_Wait4SC_Condition;
	information = DIA_EBR_106_Bartholo_Wait4SC_Info;
	important = 1;
	permanent = 0;
};


func int DIA_EBR_106_Bartholo_Wait4SC_Condition()
{
	if(ExploreSunkenTower)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_EBR_106_Bartholo_Wait4SC_Info()
{
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,other);
	AI_Output(self,other,"Info_Bartholo_12_01");	//� ����, ��� ���-������ ���������� ��������� �� ��� ����� �����������!
	AI_Output(self,other,"Info_Bartholo_12_02");	//�� � ������� �� ����� ���������-������� ������, �� ��� ������ �� �����!
	AI_Output(other,self,"Info_Bartholo_15_03");	//��� �����?
	AI_Output(self,other,"Info_Bartholo_12_04");	//�� ��������! � �� ����� ������ ��������� �� �������� ����. 
	AI_Output(self,other,"Info_Bartholo_12_05");	//����� ���, �����! �������� �� �����!
	AI_StopProcessInfos(self);
	self.guild = GIL_EBR;
	Npc_SetTrueGuild(self,GIL_EBR);
};

