
instance DIA_Gravo_Exit(C_Info)
{
	npc = VLK_572_Gravo;
	nr = 999;
	condition = DIA_Gravo_Exit_Condition;
	information = DIA_Gravo_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Gravo_Exit_Condition()
{
	return 1;
};

func void DIA_Gravo_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Gravo_Hallo(C_Info)
{
	npc = VLK_572_Gravo;
	nr = 1;
	condition = DIA_Gravo_Hallo_Condition;
	information = DIA_Gravo_Hallo_Info;
	permanent = 0;
	description = "��� ���� ����?";
};


func int DIA_Gravo_Hallo_Condition()
{
	return 1;
};

func void DIA_Gravo_Hallo_Info()
{
	AI_Output(other,self,"DIA_Gravo_Hallo_15_00");	//��� ���� ����?
	AI_Output(self,other,"DIA_Gravo_Hallo_04_01");	//� ��� ��� ��� � �������� ����� ����� �� �����, ������������ �� �� ���.
	AI_Output(other,self,"DIA_Gravo_Hallo_15_02");	//�� ��� �� �� ������?
	AI_Output(self,other,"DIA_Gravo_Hallo_04_03");	//� ������� ����� ������ �� ��������.
	AI_Output(self,other,"DIA_Gravo_Hallo_04_04");	//���� �� ��������� ������ ����-������ �� ������� ����� �����, � ������, � ���������� ������� ���.
};


instance DIA_Gravo_HelpHow(C_Info)
{
	npc = VLK_572_Gravo;
	nr = 1;
	condition = DIA_Gravo_HelpHow_Condition;
	information = DIA_Gravo_HelpHow_Info;
	permanent = 0;
	description = "�� ����, ���� ��������� ��������, �� ������� ������? �� ���?";
};


func int DIA_Gravo_HelpHow_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Gravo_Hallo))
	{
		return 1;
	};
};

func void DIA_Gravo_HelpHow_Info()
{
	AI_Output(other,self,"DIA_Gravo_HelpHow_15_00");	//�� ����, ���� ��������� ��������, �� ������� ������? �� ���?
	AI_Output(self,other,"DIA_Gravo_HelpHow_04_01");	//��, ��������, �� ���������� � �������. ������-��, ��������� � ��� ������ �� �����, �� �� ����� ����������.
	AI_Output(self,other,"DIA_Gravo_HelpHow_04_02");	//����� � ��� �������� �������: ���� �� ���� ���� ��� ������ ���, �� ������ �� ���� �����. � ��� �����.
	AI_Output(self,other,"DIA_Gravo_HelpHow_04_03");	//�� �������, �� �� ���� ��������. � ��� �� ��������� �� ��� � ������� ������. � � ���� ������ �����, � ����� ������ ����� ��������������.
	AI_Output(self,other,"DIA_Gravo_HelpHow_04_04");	//��� �������� �� ���� ��������, � ��� �� � ������� ����� ������. ����������, ������ ��� ��� ����� �� ���������, ��� ��� ���� �������� �������������.
	AI_Output(self,other,"DIA_Gravo_HelpHow_04_05");	//�� � � �������� � ���, ����� ���� ���� ������ � ������ ����...
	B_LogEntry(GE_TraderOC,"������� ����� ���������� ����������� ������. ���� � ������ � ������������ � ������, �� � ���� ��������� ��� �� �� �������.");
};

func void B_Gravo_HelpAttitude(var C_Npc prob)
{
	if(Npc_GetPermAttitude(prob,other) == ATT_ANGRY)
	{
		AI_Output(self,other,"B_Gravo_HelpAttitude_ANGRY_04_00");	//��, �� � ���� �� ������ �����.
		AI_Output(self,other,"B_Gravo_HelpAttitude_ANGRY_04_01");	//���� � ���� ���� �������... � �����, �� 100 ������ ���� ����� ������ ��� ��������.
		if(Npc_HasItems(other,ItMiNugget) >= 100)
		{
			AI_Output(self,other,"B_Gravo_HelpAttitude_ANGRY_04_02");	//���������, ��� � ���� ����... ���! ����� ������ �������. ������ �������, ��� ������ �����.
			AI_Output(self,other,"B_Gravo_HelpAttitude_ANGRY_04_03");	//� ������ �� ������ �� ����! ���� ���� ���, ����� ������ �� ���������.
			B_GiveInvItems(hero,self,ItMiNugget,100);
			Npc_SetPermAttitude(prob,ATT_NEUTRAL);
		}
		else
		{
			AI_Output(other,self,"B_Gravo_HelpAttitude_NoOre_15_01");	//� ���� ������� ���...
			AI_Output(self,other,"B_Gravo_HelpAttitude_NoOre_04_02");	//��� ����� ����, ������, �� ����� � ������ �� ����� ��� ���� �������.
		};
	}
	else if(Npc_GetPermAttitude(prob,other) == ATT_HOSTILE)
	{
		AI_Output(self,other,"B_Gravo_HelpAttitude_HOSTILE_04_00");	//� �� ��������� ��� '���������'?! ����� �������, ��������! �� ��� �� ������� ���� �� �����.
		AI_Output(self,other,"B_Gravo_HelpAttitude_HOSTILE_04_01");	//������� ����� ������ �� ���� ������ � ����� ���� - ��� ����� �������. � ��������. ������ ��� ������� ���� �����.
		if(Npc_HasItems(other,ItMiNugget) >= 500)
		{
			AI_Output(self,other,"B_Gravo_HelpAttitude_HOSTILE_04_02");	//���������, ��� � ���� ����... ������, �� �� �����! � ������� 500 ������ � �������� ���� ��������.
			AI_Output(self,other,"B_Gravo_HelpAttitude_HOSTILE_04_03");	//� �������: ����� �� ������ �� ���� �����. 
			B_GiveInvItems(hero,self,ItMiNugget,500);
			Npc_SetPermAttitude(prob,ATT_NEUTRAL);
		}
		else
		{
			AI_Output(other,self,"B_Gravo_HelpAttitude_NoOre_15_01");	//� ���� ������� ���...
			AI_Output(self,other,"B_Gravo_HelpAttitude_NoOre_04_02");	//��� ����� ����, ������, �� ����� � ������ �� ����� ��� ���� �������.
		};
	}
	else
	{
		AI_Output(self,other,"B_Gravo_HelpAttitude_NoProb_04_00");	//��������� ��� ��������, � ��� � ��� ��� � �������. �� �������� �������, ������.
	};
};


instance DIA_Gravo_HelpAngryNow(C_Info)
{
	npc = VLK_572_Gravo;
	nr = 1;
	condition = DIA_Gravo_HelpAngryNow_Condition;
	information = DIA_Gravo_HelpAngryNow_Info;
	permanent = 1;
	description = "�������, � ���� �������� ��������. �� ������ ��� ������?";
};


func int DIA_Gravo_HelpAngryNow_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Gravo_HelpHow))
	{
		return 1;
	};
};

func void DIA_Gravo_HelpAngryNow_Info()
{
	AI_Output(other,self,"DIA_Gravo_HelpAngryNow_15_00");	//�������, � ���� �������� ��������. �� ������ ��� ������?
	AI_Output(self,other,"DIA_Gravo_HelpAngryNow_04_01");	//�����, ��� ��. �� ��� ������ ����� �������� - �� 100 �� 500 ������ ����.
	Info_ClearChoices(DIA_Gravo_HelpAngryNow);
	Info_AddChoice(DIA_Gravo_HelpAngryNow,DIALOG_BACK,DIA_Gravo_HelpAngryNow_BACK);
	Info_AddChoice(DIA_Gravo_HelpAngryNow,"� ���������� � �����.",DIA_Gravo_HelpAngryNow_Diego);
	Info_AddChoice(DIA_Gravo_HelpAngryNow,"� ���������� � �������.",DIA_Gravo_HelpAngryNow_Thorus);
	Info_AddChoice(DIA_Gravo_HelpAngryNow,"� ���������� � �������.",DIA_Gravo_HelpAngryNow_Gomez);
};

func void DIA_Gravo_HelpAngryNow_BACK()
{
	Info_ClearChoices(DIA_Gravo_HelpAngryNow);
};

func void DIA_Gravo_HelpAngryNow_Diego()
{
	var C_Npc diego;
	AI_Output(other,self,"DIA_Gravo_HelpAngryNow_Diego_15_00");	//� ���������� � �����.
	diego = Hlp_GetNpc(PC_Thief);
	B_Gravo_HelpAttitude(diego);
	Info_ClearChoices(DIA_Gravo_HelpAngryNow);
};

func void DIA_Gravo_HelpAngryNow_Thorus()
{
	var C_Npc Thorus;
	AI_Output(other,self,"DIA_Gravo_HelpAngryNow_Thorus_15_00");	//� ���������� � �������.
	Thorus = Hlp_GetNpc(GRD_200_Thorus);
	B_Gravo_HelpAttitude(Thorus);
	Info_ClearChoices(DIA_Gravo_HelpAngryNow);
};

func void DIA_Gravo_HelpAngryNow_Gomez()
{
	var C_Npc Gomez;
	AI_Output(other,self,"DIA_Gravo_HelpAngryNow_Gomez_15_00");	//� ���������� � �������.
	Gomez = Hlp_GetNpc(EBR_100_Gomez);
	B_Gravo_HelpAttitude(Gomez);
	Info_ClearChoices(DIA_Gravo_HelpAngryNow);
};


instance DIA_Gravo_Influence(C_Info)
{
	npc = VLK_572_Gravo;
	nr = 2;
	condition = DIA_Gravo_Influence_Condition;
	information = DIA_Gravo_Influence_Info;
	permanent = 1;
	description = "�� ������ ������� ���, ��� �� ��������� ����� ����� �������?";
};


func int DIA_Gravo_Influence_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Gravo_Hallo))
	{
		return 1;
	};
};

func void DIA_Gravo_Influence_Info()
{
	AI_Output(other,self,"DIA_Gravo_Influence_15_00");	//�� ������ ������� ���, ��� �� ��������� ����� ����� �������?
	AI_Output(self,other,"DIA_Gravo_Influence_04_01");	//������ ���������� ����������� �� ������ �����, �?
	AI_Output(self,other,"DIA_Gravo_Influence_04_02");	//������� ����� ��������� - �����. �� �������� ��������, �������� � ����.
	AI_Output(self,other,"DIA_Gravo_Influence_04_03");	//������� � ���� ������� ���� ����� �� �������� �������. ����� �� ����������� ���������� ���� ���������, ��� ��� �� ���� ����� ������� ������������ ������.
	AI_Output(self,other,"DIA_Gravo_Influence_04_04");	//��� ���� ������. �� ������������� �� ������ � ��������� ���. ����� ������ ������ ���, ��� ��� �� ���� ������ �������.
	Log_CreateTopic(GE_TraderOC,LOG_NOTE);
	B_LogEntry(GE_TraderOC,"������� � ���� ������� ���������� �������� �� �������� �������.");
};

