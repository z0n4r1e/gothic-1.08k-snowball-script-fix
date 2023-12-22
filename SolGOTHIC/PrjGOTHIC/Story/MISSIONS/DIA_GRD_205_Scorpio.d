
instance DIA_Scorpio_Exit(C_Info)
{
	npc = GRD_205_Scorpio;
	nr = 999;
	condition = DIA_Scorpio_Exit_Condition;
	information = DIA_Scorpio_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Scorpio_Exit_Condition()
{
	return 1;
};

func void DIA_Scorpio_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Scorpio_Hello(C_Info)
{
	npc = GRD_205_Scorpio;
	nr = 1;
	condition = DIA_Scorpio_Hello_Condition;
	information = DIA_Scorpio_Hello_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Scorpio_Hello_Condition()
{
	if(!C_NpcBelongsToOldCamp(other) && (Kapitel < 4))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Scorpio_Hello_Info()
{
	AI_Output(self,other,"DIA_Scorpio_Hello_13_00");	//��� ������� ����?
	AI_Output(other,self,"DIA_Scorpio_Hello_15_01");	//�����.
	AI_Output(self,other,"DIA_Scorpio_Hello_13_02");	//� ������ ����� �� ����� �������?
	Info_ClearChoices(DIA_Scorpio_Hello);
	Info_AddChoice(DIA_Scorpio_Hello,"������ ����� ����������.",DIA_Scorpio_Hello_JustLooking);
	Info_AddChoice(DIA_Scorpio_Hello,"� ���� ���� �������� ��� �����.",DIA_Scorpio_Hello_Mages);
	if(Kalom_Krautbote == LOG_RUNNING)
	{
		Info_AddChoice(DIA_Scorpio_Hello,"� ������ �������� ��� ������.",DIA_Scorpio_Hello_Kraut);
	};
	if(Npc_KnowsInfo(hero,Info_Thorus_ReadyForGomez))
	{
		Info_AddChoice(DIA_Scorpio_Hello,"� ��������� ����������� � �������. ���� �������������� � ���.",DIA_Scorpio_Hello_Join);
	};
};

func void DIA_Scorpio_Hello_JustLooking()
{
	AI_Output(other,self,"DIA_Scorpio_Hello_JustLooking_15_00");	//������ ����� ����������.
	AI_Output(self,other,"DIA_Scorpio_Hello_JustLooking_13_01");	//����� ������.
	Info_ClearChoices(DIA_Scorpio_Hello);
};

func void DIA_Scorpio_Hello_Mages()
{
	AI_Output(other,self,"DIA_Scorpio_Hello_Mages_15_00");	//� ���� ���� �������� ��� �����.
	AI_Output(self,other,"DIA_Scorpio_Hello_Mages_13_01");	//�� ��������� �� �����? � �� ���� � ���� �����������...
	Info_ClearChoices(DIA_Scorpio_Hello);
};

func void DIA_Scorpio_Hello_Kraut()
{
	AI_Output(other,self,"DIA_Scorpio_Hello_Kraut_15_00");	//� ������ �������� ��� ������.
	AI_Output(self,other,"DIA_Scorpio_Hello_Kraut_13_01");	//������ ��� � ���, ������� �������� ���� ����������.
	Info_ClearChoices(DIA_Scorpio_Hello);
};

func void DIA_Scorpio_Hello_Join()
{
	AI_Output(other,self,"DIA_Scorpio_Hello_Join_15_00");	//� ��������� ����������� � �������. ���� �������������� � ���.
	AI_Output(self,other,"DIA_Scorpio_Hello_Join_13_01");	//��? � ��� ������ �� ��� ��� ������?
	AI_Output(other,self,"DIA_Scorpio_Hello_Join_15_02");	//�������� ���� ���� ��������...
	AI_Output(self,other,"DIA_Scorpio_Hello_Join_13_03");	//����� ����� �� ������ ������� � ���������. ����� �� ������.
	Info_ClearChoices(DIA_Scorpio_Hello);
};


instance DIA_Scorpio_REFUSETRAIN(C_Info)
{
	npc = GRD_205_Scorpio;
	nr = 1;
	condition = DIA_Scorpio_REFUSETRAIN_Condition;
	information = DIA_Scorpio_REFUSETRAIN_Info;
	permanent = 1;
	description = "�� ������ ������� ���� �������?";
};


func int DIA_Scorpio_REFUSETRAIN_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Scorpio_Hello) && (Npc_GetTrueGuild(hero) != GIL_GRD))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_Scorpio_REFUSETRAIN_Info()
{
	AI_Output(other,self,"DIA_Scorpio_REFUSETRAIN_15_00");	//�� ������ ������� ���� �������?
	AI_Output(self,other,"DIA_Scorpio_REFUSETRAIN_13_01");	//� �������� ������ ����������. ���� ����� �� �������� ���� ����� �� ���, ��� ����-������ �������.
};


instance GRD_205_Scorpio_WELCOME(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_WELCOME_Condition;
	information = GRD_205_Scorpio_WELCOME_Info;
	important = 1;
	permanent = 0;
};


func int GRD_205_Scorpio_WELCOME_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_GRD)
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_WELCOME_Info()
{
	AI_Output(self,other,"GRD_205_Scorpio_WELCOME_Info_13_01");	//��� ������ �����, ������� �� ������ ��� �������!
	AI_StopProcessInfos(self);
};


instance GRD_205_Scorpio_CROSSBOW(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_CROSSBOW_Condition;
	information = GRD_205_Scorpio_CROSSBOW_Info;
	important = 0;
	permanent = 1;
	description = "�� ������ ����-������ ������� ����?";
};


func int GRD_205_Scorpio_CROSSBOW_Condition()
{
	if((Kapitel >= 4) || (Npc_GetTrueGuild(hero) == GIL_GRD))
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_CROSSBOW_Info()
{
	AI_Output(other,self,"GRD_205_Scorpio_CROSSBOW_Info_15_01");	//�� ������ ����� ����?
	AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_Info_13_02");	//���� � ���� ���� ����, � ����� ���� ������������ ���������. �� ������� ������� ��� �����. 
	if((log_scorpiocrossbow == FALSE) && (Kapitel <= 4))
	{
		Log_CreateTopic(GE_TeacherOC,LOG_NOTE);
		B_LogEntry(GE_TeacherOC,"������� ����� ������� ���� ������������ �������.");
		log_scorpiocrossbow = TRUE;
	}
	else if((log_scorpiocrossbow == FALSE) && (Kapitel > 4))
	{
		Log_CreateTopic(GE_TeacherOW,LOG_NOTE);
		B_LogEntry(GE_TeacherOW,"������� ����� ������� ���� ������������ �������.");
		log_scorpiocrossbow = TRUE;
	};
	Info_ClearChoices(GRD_205_Scorpio_CROSSBOW);
	Info_AddChoice(GRD_205_Scorpio_CROSSBOW,B_BuildLearnString(NAME_LearnCrossbow_1,LPCOST_TALENT_CROSSBOW_1,200),GRD_205_Scorpio_CROSSBOW_OK);
	Info_AddChoice(GRD_205_Scorpio_CROSSBOW,DIALOG_BACK,GRD_205_Scorpio_CROSSBOW_BACK);
};

func void GRD_205_Scorpio_CROSSBOW_BACK()
{
	Info_ClearChoices(GRD_205_Scorpio_CROSSBOW);
};

func void GRD_205_Scorpio_CROSSBOW_OK()
{
	AI_Output(other,self,"GRD_205_Scorpio_CROSSBOW_OK_15_01");	//�� �����. ������, ��� ����� � ��� ����������.
	if(Npc_HasItems(hero,ItMiNugget) >= 200)
	{
		if(B_GiveSkill(other,NPC_TALENT_CROSSBOW,1,LPCOST_TALENT_CROSSBOW_1))
		{
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_02");	//�����, ������.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_03");	//�� �������� �� �������� � �������� �� � �����. ��� ������� ���� ����� �����������.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_04");	//������ ��������� ���� ���� ����� ��������, ��� ����� ���-��� ���������.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_05");	//�� ����� ������ ��� ����� ��� ������!
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_06");	//������ ����� �� ���� � ��������� ������ �����. ��� ������� ���� �������, ��� �� ����, � ������, ������� ������� ����!
			B_GiveInvItems(hero,other,ItMiNugget,200);
			GRD_205_Scorpio_CROSSBOW.permanent = 0;
		};
	}
	else
	{
		AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW_OK_13_07");	//� ������ - ��� ����� ������ ����, �����, � ���� � �����. �����������, ����� � ���� ����� ��� ���������!
	};
};


instance GRD_205_Scorpio_CROSSBOW2(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_CROSSBOW2_Condition;
	information = GRD_205_Scorpio_CROSSBOW2_Info;
	important = 0;
	permanent = 1;
	description = "�������� ��� ��� ���-������ �� ��������.";
};


func int GRD_205_Scorpio_CROSSBOW2_Condition()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_CROSSBOW) == 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_CROSSBOW2_Info()
{
	AI_Output(other,self,"GRD_205_Scorpio_CROSSBOW2_Info_15_01");	//�������� ��� ��� ���-������ �� ��������.
	AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_Info_13_02");	//��� ��������� ���� � ��� ����� ������ ����.
	Info_ClearChoices(GRD_205_Scorpio_CROSSBOW2);
	Info_AddChoice(GRD_205_Scorpio_CROSSBOW2,B_BuildLearnString(NAME_LearnCrossbow_2,LPCOST_TALENT_CROSSBOW_2,300),GRD_205_Scorpio_CROSSBOW2_OK);
	Info_AddChoice(GRD_205_Scorpio_CROSSBOW2,DIALOG_BACK,GRD_205_Scorpio_CROSSBOW2_BACK);
};

func void GRD_205_Scorpio_CROSSBOW2_BACK()
{
	Info_ClearChoices(GRD_205_Scorpio_CROSSBOW);
};

func void GRD_205_Scorpio_CROSSBOW2_OK()
{
	AI_Output(other,self,"GRD_205_Scorpio_CROSSBOW2_OK_15_01");	//������ ����� ������.
	if(Npc_HasItems(hero,ItMiNugget) >= 300)
	{
		if(B_GiveSkill(other,NPC_TALENT_CROSSBOW,2,LPCOST_TALENT_CROSSBOW_2))
		{
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_02");	//�����. �������� ����� ����� �������, ���� ����� ��������� �� ������� ���������.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_03");	//���� ��������� ��������� ������������ ��������, � ������� �������� ����.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_04");	//�������� ������ � ������� ����������� �� ���� ���������� ����, ����� ��������� ��� ���������� ��.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_05");	//���� ����� ���������, �� ����� ��� ������� - ������ �� ���� �� ������ ����������� ������ ���������.
			AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_06");	//������ � ������ ���� �����, ��� ���� ���.
			B_GiveInvItems(hero,other,ItMiNugget,300);
			GRD_205_Scorpio_CROSSBOW2.permanent = 0;
		};
	}
	else
	{
		AI_Output(self,other,"GRD_205_Scorpio_CROSSBOW2_OK_13_07");	//������ ����� ���-������ ��� ����� ������ ����.
	};
};


instance GRD_205_Scorpio_HeyPC(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_HeyPC_Condition;
	information = GRD_205_Scorpio_HeyPC_Info;
	important = 1;
	permanent = 0;
};


func int GRD_205_Scorpio_HeyPC_Condition()
{
	if((Kapitel >= 4) && (Npc_GetDistToNpc(hero,self) < 1000))
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_HeyPC_Info()
{
	AI_Output(self,other,"GRD_205_Scorpio_HeyPC_Info_13_01");	//��, �� �����, ������. ��� ����!
};


instance GRD_205_Scorpio_BANISHED(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_BANISHED_Condition;
	information = GRD_205_Scorpio_BANISHED_Info;
	important = 0;
	permanent = 0;
	description = "��� � �������?";
};


func int GRD_205_Scorpio_BANISHED_Condition()
{
	if(Npc_KnowsInfo(hero,GRD_205_Scorpio_HeyPC))
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_BANISHED_Info()
{
	AI_Output(other,self,"GRD_205_Scorpio_BANISHED_Info_15_01");	//� ����� ��� � �������?
	AI_Output(self,other,"GRD_205_Scorpio_BANISHED_Info_13_02");	//� ����� �������. ���� �� ������� �������, ������� ������������ ��� ���������.
	AI_Output(self,other,"GRD_205_Scorpio_BANISHED_Info_13_03");	//�� � ��������� ��������� �������� ������� �� ��������. ���� ���� ����������� ������, ��������� �� ���.
	if(Scorpio_Exile == FALSE)
	{
		Log_CreateTopic(GE_TraderOW,LOG_NOTE);
		B_LogEntry(GE_TraderOW,"������� ������� ������ ������ � ������ ��������� � ���������� � ���������� ������ ���-�� ����� ��������.");
		Scorpio_Exile = TRUE;
	};
};


instance GRD_205_Scorpio_TRADE(C_Info)
{
	npc = GRD_205_Scorpio;
	condition = GRD_205_Scorpio_TRADE_Condition;
	information = GRD_205_Scorpio_TRADE_Info;
	important = 0;
	permanent = 1;
	description = "������ ���, ��� � ���� ����.";
	trade = 1;
};


func int GRD_205_Scorpio_TRADE_Condition()
{
	if(Npc_KnowsInfo(hero,GRD_205_Scorpio_BANISHED))
	{
		return TRUE;
	};
	return FALSE;
};

func void GRD_205_Scorpio_TRADE_Info()
{
	AI_Output(other,self,"GRD_205_Scorpio_TRADE_Info_15_01");	//������, ��� � ���� ����.
};

