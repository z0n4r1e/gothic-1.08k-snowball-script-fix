
instance KDW_604_Cronos_Exit(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 999;
	condition = KDW_604_Cronos_Exit_Condition;
	information = KDW_604_Cronos_Exit_Info;
	permanent = 1;
	important = 0;
	description = DIALOG_ENDE;
};


func int KDW_604_Cronos_Exit_Condition()
{
	return TRUE;
};

func void KDW_604_Cronos_Exit_Info()
{
	AI_StopProcessInfos(self);
	if(!Npc_HasItems(self,ItArRuneIceCube))
	{
		CreateInvItem(self,ItArRuneIceCube);
	};
	if(!Npc_HasItems(self,ItArRuneThunderbolt))
	{
		CreateInvItem(self,ItArRuneThunderbolt);
	};
};


instance KDW_604_Cronos_Brief(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 1;
	condition = KDW_604_Cronos_Brief_Condition;
	information = KDW_604_Cronos_Brief_Info;
	permanent = 0;
	description = "� ���� ������ � ���������� ���� ����� ����.";
};


func int KDW_604_Cronos_Brief_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_Greet) && (Npc_GetTrueGuild(hero) != GIL_STT) && (Npc_GetTrueGuild(hero) != GIL_KDF) && (hero.level < 10))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_Brief_Info()
{
	AI_Output(other,self,"DIA_Cronos_Brief_15_00");	//� ���� ������ � ���������� ���� ����� ����.
	AI_Output(self,other,"DIA_Cronos_Brief_08_01");	//��� �� ����� - ���� ����� ����. ���� ����� ���� ����� � ������ ������.
	AI_Output(other,self,"DIA_Cronos_Brief_15_02");	//�� � �� ���� ������� � �����. �� ������ ������ ���?
	AI_Output(self,other,"DIA_Cronos_Brief_08_03");	//��, ����� �� ������� �� �������� ������ � ����� ������� � ������ ������...
	AI_Output(self,other,"DIA_Cronos_Brief_08_04");	//�� ���� �������� �� �������� ������ ����� �����. ��� ��� ����� ��� �� ������ �� ���, ����� ���� ����� ���������� �� ������ ����������.
};


instance KDW_604_Cronos_Barrier(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 2;
	condition = KDW_604_Cronos_Barrier_Condition;
	information = KDW_604_Cronos_Barrier_Info;
	permanent = 0;
	description = "�� ������ ���������� ������...";
};


func int KDW_604_Cronos_Barrier_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_Greet))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_Barrier_Info()
{
	AI_Output(other,self,"DIA_Cronos_Barrier_15_00");	//�� ������ ���������� ������ - �� ��� ������ �� ����������� ��� �������?
	AI_Output(self,other,"DIA_Cronos_Barrier_08_01");	//��� ����������� ������� ������ ���������� ����.
	AI_Output(self,other,"DIA_Cronos_Barrier_08_02");	//��������� �� ���� �� ����� ������ ���������, �� ��������� ������.
	AI_Output(self,other,"DIA_Cronos_Barrier_08_03");	//�������, ������ ���� ���������� ��������� ����� � ����������!
	AI_Output(self,other,"DIA_Cronos_Barrier_08_04");	//������ ������� ��� ����� ����, ������� �������� ��� ����.
};


instance KDW_604_Cronos_WannaJoin(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 3;
	condition = KDW_604_Cronos_WannaJoin_Condition;
	information = KDW_604_Cronos_WannaJoin_Info;
	permanent = 0;
	description = "� ���� �������������� � ���!";
};


func int KDW_604_Cronos_WannaJoin_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_Greet))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_WannaJoin_Info()
{
	AI_Output(other,self,"DIA_Cronos_WannaJoin_15_00");	//� ���� �������������� � ���!
	AI_Output(self,other,"DIA_Cronos_WannaJoin_08_01");	//���� �� ������ ����� ����� �� ���, �� ������ ���������� � �� ��� � ������.
};


instance KDW_604_Cronos_WannaMage(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 3;
	condition = KDW_604_Cronos_WannaMage_Condition;
	information = KDW_604_Cronos_WannaMage_Info;
	permanent = 0;
	description = "� ���� ����� �����!";
};


func int KDW_604_Cronos_WannaMage_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_WannaJoin))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_WannaMage_Info()
{
	AI_Output(other,self,"DIA_Cronos_WannaMage_15_00");	//� ���� ����� �����!
	AI_Output(self,other,"DIA_Cronos_WannaMage_08_01");	//�� �� ����� �������������� ���� ������ ����� ����� ������.
	AI_Output(self,other,"DIA_Cronos_WannaMage_08_02");	//� ����� �������� �� ����� ���� � ���� �� ��� ���, ���� �� �� �������� ��� ���� �����������.
};


instance KDW_604_Cronos_Bandit(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 4;
	condition = KDW_604_Cronos_Bandit_Condition;
	information = KDW_604_Cronos_Bandit_Info;
	permanent = 0;
	description = "������ � ���� �� ����� �����.";
};


func int KDW_604_Cronos_Bandit_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_ORG) || (Npc_GetTrueGuild(hero) == GIL_SLD))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_Bandit_Info()
{
	AI_Output(other,self,"DIA_Cronos_Bandit_15_00");	//������ � ���� �� ����� �����. � ���� ���� ��������, ������� �� ����� �� ��������� �� ���� ����� ����?
	AI_Output(self,other,"DIA_Cronos_Bandit_08_01");	//����������, ����. �� � ���� ������ ���� ���� �����, ����� ���� ������ �� ��������� ���� � �����.
	AI_Output(self,other,"DIA_Cronos_Bandit_08_02");	//���, ������ ������ � ���� ����. � �������!
	CreateInvItem(other,KdW_Amulett);
	CreateInvItem(other,Cronos_Brief);
	Cronos_Messenger = LOG_RUNNING;
};


instance KDW_604_Cronos_BriefBack(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 3;
	condition = KDW_604_Cronos_BriefBack_Condition;
	information = KDW_604_Cronos_BriefBack_Info;
	permanent = 0;
	description = "� ������� ���� ��������!";
};


func int KDW_604_Cronos_BriefBack_Condition()
{
	if(Cronos_Messenger == LOG_SUCCESS)
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_BriefBack_Info()
{
	AI_Output(other,self,"DIA_Cronos_BriefBack_15_00");	//� ������� ���� ��������!
	AI_Output(self,other,"DIA_Cronos_BriefBack_08_01");	//�, ������! ��� ���� ��������� ������� �� �����...
	CreateInvItems(self,ItMiNugget,200);
	B_GiveInvItems(self,other,ItMiNugget,200);
	B_GiveXP(XP_CronosLetter);
};


instance Info_Cronos_NEWS(C_Info)
{
	npc = KDW_604_Cronos;
	condition = Info_Cronos_NEWS_Condition;
	information = Info_Cronos_NEWS_Info;
	permanent = 0;
	important = 0;
	description = "� ���� ������ �������� ��� ��������!";
};


func int Info_Cronos_NEWS_Condition()
{
	if((CorAngar_SendToNC == TRUE) && !Npc_KnowsInfo(hero,Info_Cronos_SLEEPER))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_NEWS_Info()
{
	AI_Output(other,self,"Info_Cronos_NEWS_15_01");	//� ���� ������ �������� ��� ��������!
	AI_Output(self,other,"Info_Cronos_NEWS_08_02");	//��� ������ ������� � ���� ��������, ����� ��� �������� ����� ��������� ���� ���� �� ����� ������������?
};


instance Info_Cronos_KALOM(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 10;
	condition = Info_Cronos_KALOM_Condition;
	information = Info_Cronos_KALOM_Info;
	permanent = 0;
	important = 0;
	description = "��� ����� ������� ��������...";
};


func int Info_Cronos_KALOM_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Cronos_NEWS) && !Npc_KnowsInfo(hero,Info_Cronos_SLEEPER))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_KALOM_Info()
{
	AI_Output(other,self,"Info_Cronos_KALOM_15_01");	//��� ����� ������� �������� ������ � ����������� ����������-��������!
	AI_Output(other,self,"Info_Cronos_KALOM_15_02");	//�� ����� ��� ����� ������� � ��������� ��� �� ��� �� �� �� �����.
	AI_Output(self,other,"Info_Cronos_KALOM_08_03");	//� ������� �� ������� ���. ������ ���� ��� ���, �� ������ ��� ��������, ���������� � ��������� �� ���.
	AI_Output(self,other,"Info_Cronos_KALOM_08_04");	//�������� ��������� ��������� � ��� ����!
	AI_Output(self,other,"Info_Cronos_KALOM_08_05");	//��� ������ �������� �����������, � �������� �� ���� ��������. ������ ���!
	AI_StopProcessInfos(self);
};


instance Info_Cronos_YBERION(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 20;
	condition = Info_Cronos_YBERION_Condition;
	information = Info_Cronos_YBERION_Info;
	permanent = 0;
	important = 0;
	description = "�`������, ����� ������ ���������, �����!";
};


func int Info_Cronos_YBERION_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Cronos_NEWS) && !Npc_KnowsInfo(hero,Info_Cronos_SLEEPER))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_YBERION_Info()
{
	AI_Output(other,self,"Info_Cronos_YBERION_15_01");	//�`������, ����� ������ ���������, �����!
	AI_Output(self,other,"Info_Cronos_YBERION_08_02");	//���??? ��� ��� ����� ���������?
	AI_Output(other,self,"Info_Cronos_YBERION_15_03");	//�������� ��������� ���������� ������, �������� ������ ����.
	AI_Output(other,self,"Info_Cronos_YBERION_15_04");	//������, ���������� ���������� ��������� ������� ������� ��� �`�������.
	AI_Output(self,other,"Info_Cronos_YBERION_08_05");	//��� ����. �`������ ��� ������ ���������.
	AI_Output(self,other,"Info_Cronos_YBERION_08_06");	//�� � �� ���� ������� ��������� ������� ��������.
	AI_StopProcessInfos(self);
};


instance Info_Cronos_SLEEPER(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 30;
	condition = Info_Cronos_SLEEPER_Condition;
	information = Info_Cronos_SLEEPER_Info;
	permanent = 0;
	important = 0;
	description = "���� ��������, ��� ��� ��� ����� ��� �������� ����� ������!";
};


func int Info_Cronos_SLEEPER_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Cronos_NEWS))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_SLEEPER_Info()
{
	AI_Output(other,self,"Info_Cronos_SLEEPER_15_01");	//���� ��������, ��� ��� ��� ����� ��� �������� ����� ������!
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_02");	//������, ������ ��� ������� ������ ������� �������?
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_03");	//������ �� ��������� �������� ���� ��������, ��...
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_04");	//... ���� ��� ������������� �����... ��� ������� ����� ���� � �������� ���������.
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_05");	//�� ������ ���������� �������� �� ���� ��������. �� �����, ��� ������.
	AI_Output(other,self,"Info_Cronos_SLEEPER_15_06");	//��� ��� ����� ��������?
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_07");	//��������� �� ������� �������. ����� ����������, ��� � �������� ���� ������.
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_08");	//������ - ����������.
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_09");	//�� ������� �������� � �����������.
	AI_Output(self,other,"Info_Cronos_SLEEPER_08_10");	//��� �� �������� ��� ���, ������� ������, ��� ����� �������� ���� �������� ����.
	B_LogEntry(CH3_EscapePlanNC,"������ ��� ��� ���������� �� ����� � �������� �� ������� ������. ������ ��� ����� ����� � �����������. ������ ��� ���������� ���������, ��� �� ������ ������?");
	B_GiveXP(XP_GetCronosPermission);
	AI_StopProcessInfos(self);
};


instance Info_Cronos_PAROLE(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 30;
	condition = Info_Cronos_PAROLE_Condition;
	information = Info_Cronos_PAROLE_Info;
	permanent = 0;
	important = 0;
	description = "������ ��� ��� ��� ������.";
};


func int Info_Cronos_PAROLE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Cronos_SLEEPER) && !Npc_KnowsInfo(hero,Info_Saturas_NEWS))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_PAROLE_Info()
{
	AI_Output(other,self,"Info_Cronos_PAROLE_15_01");	//������ ��� ��� ��� ������.
	AI_Output(self,other,"Info_Cronos_PAROLE_08_02");	//������ � ����, ��� � ���� �������. ������ - ����������.
};


instance Info_Cronos_REWARD(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 30;
	condition = Info_Cronos_REWARD_Condition;
	information = Info_Cronos_REWARD_Info;
	permanent = 0;
	important = 0;
	description = "������� ������, ��� �� ���������� ��� ���� �������.";
};


func int Info_Cronos_REWARD_Condition()
{
	if(Saturas_BringFoci == 5)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Cronos_REWARD_Info()
{
	AI_Output(other,self,"Info_Cronos_REWARD_15_01");	//������� ������, ��� �� ���������� ��� ���� �������.
	AI_Output(self,other,"Info_Cronos_REWARD_08_02");	//��� ��������� ���� � ���� ���������� � ����� �� ����� ������� � ���� ��������������� �� �� ������� ����, ������� �� �������� ��� ������ ������.
	AI_Output(self,other,"Info_Cronos_REWARD_08_03");	//�������, ���� ��� �������� �� ����, ��� ���!
	B_LogEntry(CH3_BringFoci,"������ ��� ��� ����� ����, �� ��� �� ����� ������� �� ���������� ����.");
	if(Npc_KnowsInfo(hero,Info_Riordian_REWARD))
	{
		Log_SetTopicStatus(CH3_BringFoci,LOG_SUCCESS);
	};
	CreateInvItems(self,ItMiNugget,1000);
	B_GiveInvItems(self,hero,ItMiNugget,1000);
};


instance KDW_604_Cronos_WELCOME(C_Info)
{
	npc = KDW_604_Cronos;
	condition = KDW_604_Cronos_WELCOME_Condition;
	information = KDW_604_Cronos_WELCOME_Info;
	important = 1;
	permanent = 0;
};


func int KDW_604_Cronos_WELCOME_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_KDW)
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_WELCOME_Info()
{
	AI_Output(self,other,"KDW_604_Cronos_WELCOME_Info_08_01");	//�� ������ ���������� ������� - �������������� � ����� ����. ����� ����������, ����!
	AI_StopProcessInfos(self);
};


instance KDW_604_Cronos_MANA(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 800;
	condition = KDW_604_Cronos_MANA_Condition;
	information = KDW_604_Cronos_MANA_Info;
	important = 0;
	permanent = 1;
	description = "� ���� ��������� ���� ����� �����.";
};


func int KDW_604_Cronos_MANA_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_Greet) && ((CorAngar_SendToNC == FALSE) || Npc_KnowsInfo(hero,Info_Cronos_SLEEPER)))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_MANA_Info()
{
	AI_Output(other,self,"KDW_604_Cronos_MANA_Info_15_01");	//� ���� ��������� ���� ����� �����.
	AI_Output(self,other,"KDW_604_Cronos_MANA_Info_08_02");	//� ���� ������ ���� ��������� ����. ��������� �� � ����.
	Info_ClearChoices(KDW_604_Cronos_MANA);
	Info_AddChoice(KDW_604_Cronos_MANA,DIALOG_BACK,KDW_604_Cronos_MANA_BACK);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_5);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_1);
};

func void KDW_604_Cronos_MANA_BACK()
{
	Info_ClearChoices(KDW_604_Cronos_MANA);
};

func void KDW_604_Cronos_MANA_MAN_1()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(KDW_604_Cronos_MANA);
	Info_AddChoice(KDW_604_Cronos_MANA,DIALOG_BACK,KDW_604_Cronos_MANA_BACK);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_5);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_1);
};

func void KDW_604_Cronos_MANA_MAN_5()
{
	B_BuyAttributePoints(other,ATR_MANA_MAX,5 * LPCOST_ATTRIBUTE_MANA);
	Info_ClearChoices(KDW_604_Cronos_MANA);
	Info_AddChoice(KDW_604_Cronos_MANA,DIALOG_BACK,KDW_604_Cronos_MANA_BACK);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_5,5 * LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_5);
	Info_AddChoice(KDW_604_Cronos_MANA,B_BuildLearnString(NAME_LearnMana_1,LPCOST_ATTRIBUTE_MANA,0),KDW_604_Cronos_MANA_MAN_1);
};


instance KDW_604_Cronos_SELLSTUFF(C_Info)
{
	npc = KDW_604_Cronos;
	nr = 900;
	condition = KDW_604_Cronos_SELLSTUFF_Condition;
	information = KDW_604_Cronos_SELLSTUFF_Info;
	important = 0;
	permanent = 1;
	description = "� ���� �������� ����������� ����������.";
	trade = 1;
};


func int KDW_604_Cronos_SELLSTUFF_Condition()
{
	if(Npc_KnowsInfo(hero,KDW_604_Cronos_Greet) && ((CorAngar_SendToNC == FALSE) || Npc_KnowsInfo(hero,Info_Cronos_SLEEPER)))
	{
		return TRUE;
	};
	return FALSE;
};

func void KDW_604_Cronos_SELLSTUFF_Info()
{
	AI_Output(other,self,"KDW_604_Cronos_SELLSTUFF_Info_15_01");	//� ���� �������� ����������� ����������.
};


instance KDW_604_Cronos_Greet(C_Info)
{
	npc = KDW_604_Cronos;
	condition = KDW_604_Cronos_GREET_Condition;
	information = KDW_604_Cronos_GREET_Info;
	important = 0;
	permanent = 0;
	description = "����������� ����, ���!";
};


func int KDW_604_Cronos_GREET_Condition()
{
	return TRUE;
};

func void KDW_604_Cronos_GREET_Info()
{
	AI_Output(other,self,"KDW_604_Cronos_GREET_Info_15_01");	//����������� ����, ���!
	AI_Output(self,other,"KDW_604_Cronos_GREET_Info_08_02");	//�� �������� � ����� ������������� �������! � ���� ��������� ���� ����� ����� ��� ���� ���� ����� ��������.
	AI_Output(self,other,"KDW_604_Cronos_GREET_Info_08_03");	//��� � ���� ��� ���� �������?
	Log_CreateTopic(GE_TraderNC,LOG_NOTE);
	B_LogEntry(GE_TraderNC,"������ ������� ����, ������ � ������. ��� ����� ����� � ������� ��� ����� ���� � ����� ����� ��� � ����.");
	Log_CreateTopic(GE_TeacherNC,LOG_NOTE);
	B_LogEntry(GE_TeacherNC,"������ ����� ������ ��� � ���������� ����. ��� ����� ����� � ������� ��� ����� ���� � ����� ����� ��� � ����.");
};

