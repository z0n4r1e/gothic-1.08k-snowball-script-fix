
instance DIA_BaalNamib_EXIT(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 999;
	condition = DIA_BaalNamib_EXIT_Condition;
	information = DIA_BaalNamib_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalNamib_EXIT_Condition()
{
	return 1;
};

func void DIA_BaalNamib_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalNamib_NoTalk(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 1;
	condition = DIA_BaalNamib_NoTalk_Condition;
	information = DIA_BaalNamib_NoTalk_Info;
	permanent = 1;
	important = 1;
};


func int DIA_BaalNamib_NoTalk_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BaalNamib_Ansprechbar == FALSE) && (Npc_GetPermAttitude(self,other) != ATT_FRIENDLY))
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalNamib_NoTalk_Info()
{
	Info_ClearChoices(DIA_BaalNamib_NoTalk);
	Info_AddChoice(DIA_BaalNamib_NoTalk,DIALOG_ENDE,DIA_BaalNamib_NoTalk_ENDE);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"��� � �������, ��������?",DIA_BaalNamib_NoTalk_Imp);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"�� �������� � ����� ������!",DIA_BaalNamib_NoTalk_Sleeper);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"������! � ����� ���������.",DIA_BaalNamib_NoTalk_Hi);
};

func void DIA_BaalNamib_NoTalk_Hi()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Hi_15_00");	//������! � ����� ���������!
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Hi_02_01");	//(�����)
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Sleeper_15_00");	//�� �������� � ����� ������!
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Sleeper_02_01");	//(�����)
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_Imp()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Imp_15_00");	//��� � �������, ��������?
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Imp_02_01");	//(�����)
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_ENDE()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalNamib_FirstTalk(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 1;
	condition = DIA_BaalNamib_FirstTalk_Condition;
	information = DIA_BaalNamib_FirstTalk_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalNamib_FirstTalk_Condition()
{
	if(BaalNamib_Ansprechbar == TRUE)
	{
		return 1;
	};
	return FALSE;
};

func void DIA_BaalNamib_FirstTalk_Info()
{
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_02_00");	//(�����)
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_02_01");	//������ ������ ����. �� � � ����� ���� ������ �������������� � ���?
	Info_ClearChoices(DIA_BaalNamib_FirstTalk);
	Info_AddChoice(DIA_BaalNamib_FirstTalk,"������ �� ������.",DIA_BaalNamib_FirstTalk_Mute);
	Info_AddChoice(DIA_BaalNamib_FirstTalk,"��, � ���� ����� �������������� �������.",DIA_BaalNamib_FirstTalk_Sleeper);
};

func void DIA_BaalNamib_FirstTalk_Mute()
{
	AI_Output(other,self,"DIA_BaalNamib_FirstTalk_Mute_15_00");	//(�����)
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_Mute_02_01");	//��?
};

func void DIA_BaalNamib_FirstTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalNamib_FirstTalk_Sleeper_15_00");	//��, � ���� ����� �������������� �������.
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_Sleeper_02_01");	//��� � ��� ������. ����� ���, ��� � ������ ���� ������� ��������!
	Info_ClearChoices(DIA_BaalNamib_FirstTalk);
	B_LogEntry(CH1_JoinPsi,"������� ������� ���������. ���� ����� ��������� �� ����: �� ������, ��� � �������� �������������. ������ ���� ��������� � ���� ��� ������� � ��� �����������.");
	B_GiveXP(XP_ImpressBaalNamib);
};


instance GUR_1204_BaalNamib_ARMOR(C_Info)
{
	npc = GUR_1204_BaalNamib;
	condition = GUR_1204_BaalNamib_ARMOR_Condition;
	information = GUR_1204_BaalNamib_ARMOR_Info;
	important = 0;
	permanent = 1;
	description = "��� ����� ������� �������.";
};


func int GUR_1204_BaalNamib_ARMOR_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_NOV) && !Npc_HasItems(hero,nov_armor_h))
	{
		return TRUE;
	};
	return FALSE;
};

func void GUR_1204_BaalNamib_ARMOR_Info()
{
	AI_Output(hero,self,"GUR_1204_BaalNamib_ARMOR_Info_15_01");	//��� ����� ������� �������.
	if(Kapitel < 3)
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_02");	//���� ��� ���� ������ ������� ������� ����������.
	}
	else if(Npc_HasItems(hero,ItMiNugget) < VALUE_NOV_ARMOR_H)
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_03");	//�����������, ����� �������� ���������� ����.
	}
	else
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_04");	//��� ������� ������� ���� ����, ��� �� ��� ������ �������� ���� ����!
		CreateInvItem(self,nov_armor_h);
		B_GiveInvItems(self,hero,nov_armor_h,1);
		B_GiveInvItems(hero,self,ItMiNugget,VALUE_NOV_ARMOR_H);
	};
};


instance Info_BaalNamib_BROTHERHOOD(C_Info)
{
	npc = GUR_1204_BaalNamib;
	condition = Info_BaalNamib_BROTHERHOOD_Condition;
	information = Info_BaalNamib_BROTHERHOOD_Info;
	important = 0;
	permanent = 0;
	description = "���� �� � ���-������ ������� ��� ��������?";
};


func int Info_BaalNamib_BROTHERHOOD_Condition()
{
	return TRUE;
};

func void Info_BaalNamib_BROTHERHOOD_Info()
{
	var C_Npc Kalom;
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_15_01");	//���� �� � ���-������ ������� ��� ��������?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_02_02");	//������ �������, ���������� �`�������, ����� ���������. ��� � ���� � �������� ���� ������.
	Info_ClearChoices(Info_BaalNamib_BROTHERHOOD);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"������, � ���������� � ���� ����� ������.",Info_BaalNamib_BROTHERHOOD_OK);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"��� � ���� ����� �`�������?",Info_BaalNamib_BROTHERHOOD_YBWO);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"�� ������ �� ��, ����� ��������� ���� ���  �`������?",Info_BaalNamib_BROTHERHOOD_YBWAS);
	Kalom = Hlp_GetNpc(GUR_1201_CorKalom);
	Npc_ExchangeRoutine(Kalom,"kapitel2");
	AI_ContinueRoutine(Kalom);
};

func void Info_BaalNamib_BROTHERHOOD_YBWO()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWO_15_01");	//��� � ���� ����� �`�������?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWO_02_02");	//����. ��� � ������, �������.
};

func void Info_BaalNamib_BROTHERHOOD_YBWAS()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWAS_15_01");	//�� ������ �� ��, ����� ��������� ���� ���  �`������?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_02");	//��� �� ���� ������� ���������. �� ������ ��� ��� ��������, ��� ����������� ���������� ��������.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_03");	//�`������ ���� ��������, ������� ������ ���.
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWAS_15_04");	//��, ��� ������.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_05");	//���� �� ��� ���� ��� ������, �������� ��� �� ��� � ���. ������ �������� � �`��������. �� ���� ��� ��������.
};

func void Info_BaalNamib_BROTHERHOOD_OK()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_OK_15_01");	//� �������� � ���� ����������.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_OK_02_02");	//�� ������ ���� ������!
	Info_ClearChoices(Info_BaalNamib_BROTHERHOOD);
};

