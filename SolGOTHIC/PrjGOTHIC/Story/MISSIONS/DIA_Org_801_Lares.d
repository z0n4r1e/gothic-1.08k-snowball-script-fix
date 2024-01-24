
instance ORG_801_Lares_Exit(C_Info)
{
	npc = Org_801_Lares;
	nr = 999;
	condition = ORG_801_Lares_Exit_Condition;
	information = ORG_801_Lares_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int ORG_801_Lares_Exit_Condition()
{
	return TRUE;
};

func void ORG_801_Lares_Exit_Info()
{
	AI_StopProcessInfos(self);
};


var int Lares_vorbeigemogelt;

instance ORG_801_Lares_YouHere(C_Info)
{
	npc = Org_801_Lares;
	nr = 1;
	condition = ORG_801_Lares_YouHere_Condition;
	information = ORG_801_Lares_YouHere_Info;
	permanent = 1;
	important = 1;
};


func int ORG_801_Lares_YouHere_Condition()
{
	var C_Npc Roscoe;
	Roscoe = Hlp_GetNpc(ORG_840_Roscoe);
	if(Roscoe.aivar[AIV_PASSGATE] == FALSE)
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_YouHere_Info()
{
	var C_Npc Roscoe;
	Roscoe = Hlp_GetNpc(ORG_840_Roscoe);
	if(Npc_IsInState(Roscoe,ZS_MagicSleep) || (Npc_GetTempAttitude(Roscoe,other) == ATT_FRIENDLY))
	{
		AI_Output(self,other,"ORG_801_Lares_YouHere_11_00");	//��� �� ���� �����? ��� ��������� � �����?
		AI_Output(other,self,"ORG_801_Lares_YouHere_15_01");	//�� ������-�� �� ������� ���� �������������.
		AI_Output(self,other,"ORG_801_Lares_YouHere_11_02");	//��� ���� �����?
		Roscoe.aivar[AIV_PASSGATE] = 1;
		Lares_vorbeigemogelt = 1;
		B_GiveXP(XP_CheatedIntoLaresHut);
	}
	else
	{
		Npc_SetTempAttitude(self,ATT_HOSTILE);
		AI_StopProcessInfos(self);
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,1,"");
	};
};


instance ORG_801_Lares_WannaJoin(C_Info)
{
	npc = Org_801_Lares;
	nr = 1;
	condition = ORG_801_Lares_WannaJoin_Condition;
	information = ORG_801_Lares_WannaJoin_Info;
	permanent = 0;
	description = "���� �������������� � ����� �����.";
};


func int ORG_801_Lares_WannaJoin_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_None) && (Kapitel < 2))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_WannaJoin_Info()
{
	AI_Output(other,self,"ORG_801_Lares_WannaJoin_15_00");	//���� �������������� � ����� �����.
	AI_Output(self,other,"ORG_801_Lares_WannaJoin_11_01");	//� ����� ����? �� ��� �� ������ �����?
};


var int Lares_BringListBack;

instance ORG_801_Lares_BringList(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_BringList_Condition;
	information = ORG_801_Lares_BringList_Info;
	permanent = 0;
	description = "� ���� � ����� ������ �������� ��� ������ �����.";
};


func int ORG_801_Lares_BringList_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_WannaJoin) && Npc_HasItems(hero,TheList))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_BringList_Info()
{
	AI_Output(other,self,"ORG_801_Lares_BringList_15_00");	//� ���� � ����� ������ �������� ��� ������ �����.
	AI_Output(self,other,"ORG_801_Lares_BringList_11_01");	//���! ������ ����� �� ����! ��, ������, �������� ���� �� ��������!
	AI_Output(self,other,"ORG_801_Lares_BringList_11_02");	//������ ��� ���!
	AI_Output(other,self,"ORG_801_Lares_BringList_15_03");	//��� ��...
	B_UseFakeScroll();
	AI_Output(self,other,"ORG_801_Lares_BringList_11_04");	//�����! � ������, ��� �� � ���� ��������? �� ������� ��������� ������, � �� �������� ��� � ������ ������!
	AI_Output(self,other,"ORG_801_Lares_BringList_11_05");	//� �����, ����� ��� �������� ��� � �����, �� ���������� ��������� ����� � ������� ����� ����! ��� �� ������ � ������... ��! ��� ������. �� ������, ��� ������. 
	Points_NC = Points_NC + 10;
	Lares_BringListBack = LOG_RUNNING;
	Npc_RemoveInvItem(hero,TheList);
	CreateInvItem(hero,TheListNC);
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		Log_CreateTopic(CH1_JoinNC,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC,LOG_RUNNING);
	};
	B_LogEntry(CH1_JoinNC,"����, ����� �����, ��� ����� �������, ����� ������ ������. �� �������� ���, � ������ � ������ ������� ��� �����.");
	B_GiveXP(XP_GiveListToLares);
};


instance ORG_801_Lares_BringListBack(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_BringListBack_Condition;
	information = ORG_801_Lares_BringListBack_Info;
	permanent = 0;
	description = "� ������� ������ �����.";
};


func int ORG_801_Lares_BringListBack_Condition()
{
	if((Lares_BringListBack == LOG_RUNNING) && (Diego_BringList == LOG_SUCCESS))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_BringListBack_Info()
{
	AI_Output(other,self,"ORG_801_Lares_BringListBack_15_00");	//� ������� ������ �����.
	AI_Output(self,other,"ORG_801_Lares_BringListBack_11_01");	//������! � ��������� ����� ����� �� ���� � ������ �����. ������ ��������� ������ ��� ������ ���� ������.
	Points_NC = Points_NC + 10;
	Lares_BringListBack = LOG_SUCCESS;
	B_LogEntry(CH1_JoinNC,"���� ��� ������� ������ �� ������� ������. ����������? ��� ������? ��� � ��� ������.");
	B_GiveXP(XP_ReportListDeliveryToLares);
};


instance ORG_801_Lares_BringListAnteil(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_BringListAnteil_Condition;
	information = ORG_801_Lares_BringListAnteil_Info;
	permanent = 0;
	description = "��� ������ ��� ������? � ��� ��� ����?";
};


func int ORG_801_Lares_BringListAnteil_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_BringListBack))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_BringListAnteil_Info()
{
	var C_Npc gorn;
	AI_Output(other,self,"ORG_801_Lares_BringListAnteil_15_00");	//��� ������ ��� ������? � ��� ��� ����?
	AI_Output(self,other,"ORG_801_Lares_BringListAnteil_11_01");	//�������� � ������. �� ������ ���� ���� ����.
	gorn = Hlp_GetNpc(PC_Fighter);
	if(gorn.aivar[AIV_FINDABLE] == TRUE)
	{
		AI_Output(other,self,"ORG_801_Lares_BringListAnteil_15_02");	//� ���� �����. �� �� ���� �����. �� ������� � �������� �� �����.
		AI_Output(self,other,"ORG_801_Lares_BringListAnteil_11_03");	//��, ��� �����.
		AI_Output(other,self,"ORG_801_Lares_BringListAnteil_15_04");	//��� �� � ����?
		AI_Output(self,other,"ORG_801_Lares_BringListAnteil_11_05");	//��� ������ ������, ��� ������ �����. ������ ��� � ���� � ������ ���� ����.
	};
	B_LogEntry(CH1_JoinNC,"����, �������, �����-�� ������� �������� ������� � ������ �� ������. �� ����-�� � � ������ ���� ����.");
	gorn.aivar[AIV_FINDABLE] = 1;
};


instance ORG_801_Lares_MordragSentMe(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_MordragSentMe_Condition;
	information = ORG_801_Lares_MordragSentMe_Info;
	permanent = 0;
	description = "���� ������� �������.";
};


func int ORG_801_Lares_MordragSentMe_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_WannaJoin) && Npc_HasItems(hero,MordragsRing) && (Kapitel < 2))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_MordragSentMe_Info()
{
	B_GiveInvItems(other,self,MordragsRing,1);
	AI_Output(other,self,"ORG_801_Lares_MordragSentMe_15_00");	//���� ������� �������. �� ����� �������� ���� ��� ������.
	AI_Output(self,other,"ORG_801_Lares_MordragSentMe_11_01");	//������� ������! ����� ��� ������� ����: ������� ���-�� - �������� � �������� �����.
	AI_Output(self,other,"ORG_801_Lares_MordragSentMe_11_02");	//�� ��, ��� �� ������� ��� ������ ������ ����� ����, ��� ������� � ������. ������, ������� ���� ��������.
	AI_Output(self,other,"ORG_801_Lares_MordragSentMe_11_03");	//� ����, ����� �� ������ � ���� � ������� ��� ���-��� �� ����.
	AI_Output(self,other,"ORG_801_Lares_MordragSentMe_11_04");	//����� ���, ��� ��� ����� ������� � ������ ���������. ��� �������� ���-�� ������� - � � ���� �����, ��� ����������.
	Lares_InformMordrag = LOG_RUNNING;
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		Log_CreateTopic(CH1_JoinNC,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC,LOG_RUNNING);
	};
	B_LogEntry(CH1_JoinNC,"���� ������ ���� � ��������. �� �����, ����� � ������� ��� ���������: � ������ �������� ����� ������ ����� � ����� ��������� ������ ��������.");
	B_GiveXP(XP_GiveRingToLares);
	Points_NC = Points_NC + 10;
};


instance ORG_801_Lares_Vorbeigemogelt(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_Vorbeigemogelt_Condition;
	information = ORG_801_Lares_Vorbeigemogelt_Info;
	permanent = 0;
	description = "� ����� ������ ���� ����� ����������.";
};


func int ORG_801_Lares_Vorbeigemogelt_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_WannaJoin) && (Lares_vorbeigemogelt == TRUE))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_Vorbeigemogelt_Info()
{
	AI_Output(other,self,"ORG_801_Lares_Vorbeigemogelt_15_00");	//� ����� ������ ���� ����� ����������.
	AI_Output(self,other,"ORG_801_Lares_Vorbeigemogelt_11_01");	//�����. �� ����� ����.
	Points_NC = Points_NC + 10;
};


var int Lares_Get400Ore;

instance ORG_801_Lares_GetKraut(C_Info)
{
	npc = Org_801_Lares;
	nr = 10;
	condition = ORG_801_Lares_GetKraut_Condition;
	information = ORG_801_Lares_GetKraut_Info;
	permanent = 0;
	description = "��� ��� � ���� �������?";
};


func int ORG_801_Lares_GetKraut_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_BringList) || Npc_KnowsInfo(hero,ORG_801_Lares_MordragSentMe) || Npc_KnowsInfo(hero,ORG_801_Lares_Vorbeigemogelt))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_GetKraut_Info()
{
	AI_Output(other,self,"ORG_801_Lares_GetKraut_15_00");	//��� ��� � ���� �������?
	AI_Output(self,other,"ORG_801_Lares_GetKraut_11_01");	//���� ������ �� ������ ��������� ������� � ����� ��������� ������ �� 400 ����, �� ������! ����, ����� �� ������� ��� �� ���� ������ ����. ��� �� ��� ��������, ���� �� �������.
	if((BaalIsidro_DealerJob == LOG_RUNNING) || (BaalIsidro_DealerJob == LOG_SUCCESS))
	{
		AI_Output(other,self,"ORG_801_Lares_GetKraut_15_02");	//���� �� �������� � ��� ������� ���� ���������, �� ��� ��� � ����.
		AI_Output(self,other,"ORG_801_Lares_GetKraut_11_03");	//��, ���������� �� ������!
	};
	AI_Output(self,other,"ORG_801_Lares_GetKraut_11_04");	//���� �������� � ����, ������ ��� � ������� ��� 400 ������ ����.
	AI_Output(self,other,"ORG_801_Lares_GetKraut_11_05");	//����� ����� ����� ���������� � � ������ � �����.
	Lares_Get400Ore = LOG_RUNNING;
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		Log_CreateTopic(CH1_JoinNC,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC,LOG_RUNNING);
	};
	B_LogEntry(CH1_JoinNC,"��� ���� ������� ����� �������� ����� ������ � ������� ��� �� 400 ������ ����. ���� ����� �������� �������.");
};


instance ORG_801_Lares_400Ore(C_Info)
{
	npc = Org_801_Lares;
	nr = 2;
	condition = ORG_801_Lares_400Ore_Condition;
	information = ORG_801_Lares_400Ore_Info;
	permanent = 1;
	description = "400 ������ ���� � ����.";
};


func int ORG_801_Lares_400Ore_Condition()
{
	if((Lares_Get400Ore == LOG_RUNNING) && ((BaalIsidro_DealerJob == LOG_RUNNING) || (BaalIsidro_DealerJob == LOG_SUCCESS)))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_400Ore_Info()
{
	AI_Output(other,self,"ORG_801_Lares_400Ore_15_00");	//400 ������ ���� � ����.
	if(Npc_HasItems(other,ItMiNugget) >= 400)
	{
		AI_Output(self,other,"ORG_801_Lares_400Ore_11_01");	//������! ����� ������. �����, ����� ������ ���� ����������.
		Lares_Get400Ore = LOG_SUCCESS;
		Points_NC = Points_NC + 10;
		B_GiveInvItems(other,self,ItMiNugget,400);
		B_LogEntry(CH1_JoinNC,"���� �� ���� ������ ������ ��������������, ����� � ��� ��� 400 ������ ����, ���������� � ������� ��������� ������.");
		B_GiveXP(XP_BaalIsidroPayLares);
	}
	else
	{
		AI_Output(self,other,"ORG_801_Lares_400Ore_NOORE_11_00");	//����������-�� ��� ���. �������, �� �� ������� �������� �� �����?
	};
};


instance ORG_801_Lares_Reicht(C_Info)
{
	npc = Org_801_Lares;
	nr = 5;
	condition = ORG_801_Lares_Reicht_Condition;
	information = ORG_801_Lares_Reicht_Info;
	permanent = 1;
	description = "...����� ����������, ����� �� ������ ���� � �����?";
};


func int ORG_801_Lares_Reicht_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_WannaJoin) && (Npc_KnowsInfo(hero,ORG_801_Lares_MordragSentMe) || Npc_KnowsInfo(hero,ORG_801_Lares_BringList)) && (Npc_GetTrueGuild(other) == GIL_None) && (Kapitel < 2))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_Reicht_Info()
{
	AI_Output(other,self,"ORG_801_Lares_Reicht_15_00");	//�� ���: ����� ����������, ����� �� ������ ���� � �����?
	if((Points_NC >= 30) && (hero.level >= 5))
	{
		AI_Output(self,other,"ORG_801_Lares_Reicht_AUFNAHME_11_00");	//� �� ������ - ��!
		AI_Output(self,other,"ORG_801_Lares_Reicht_AUFNAHME_11_01");	//� � ���� ���� ���� ��� ���� ������� - ������� ������� ���, ��� �� ������ ������. �� �������� ��!
		hero.guild = GIL_ORG;
		Npc_SetTrueGuild(hero,GIL_ORG);
		CreateInvItem(hero,org_armor_l);
		CreateInvItem(self,ItAmArrow);
		B_GiveInvItems(self,hero,ItAmArrow,1);
		Npc_RemoveInvItem(hero,ItAmArrow);
		AI_EquipBestArmor(hero);
		B_GiveXP(XP_BecomeBandit);
		B_LogEntry(CH1_JoinNC,"���� ������ ���� � �����. ������ ����� ������ - ��� ��� ���!");
		Log_SetTopicStatus(CH1_JoinNC,LOG_SUCCESS);
		Log_CreateTopic(CH1_JoinOC,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinOC,LOG_FAILED);
		B_LogEntry(CH1_JoinOC,"�������� ����� ����� �� ����� �������������� � ������� ������. ��� ������ ����������.");
		Log_CreateTopic(CH1_JoinPsi,LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinPsi,LOG_FAILED);
		B_LogEntry(CH1_JoinPsi,"�������� �������� ���-�� ���������� ��� ����, ��������� ������ ����� ������ �������� ���� �����.");
		Log_SetTopicStatus(CH1_LostNek,LOG_FAILED);
		Log_SetTopicStatus(CH1_FiskNewDealer,LOG_FAILED);
		Log_SetTopicStatus(CH1_KalomsRecipe,LOG_FAILED);
		Log_SetTopicStatus(CH1_BringList,LOG_FAILED);
		Log_SetTopicStatus(CH1_MordragKO,LOG_FAILED);
	}
	else
	{
		if(Npc_KnowsInfo(hero,ORG_801_Lares_MordragSentMe))
		{
			AI_Output(self,other,"ORG_801_Lares_Reicht_11_02");	//������� ������� � ����.
		};
		if(Npc_KnowsInfo(hero,ORG_801_Lares_BringList))
		{
			AI_Output(self,other,"ORG_801_Lares_Reicht_11_03");	//�� ���� ���������� � ��� ���, ��� ������ ���� ��� ������.
		};
		AI_Output(self,other,"ORG_801_Lares_Reicht_11_04");	//�� �� ��� �� �����. ��������� ������ ������.
		B_PrintGuildCondition(5);
	};
};


instance ORG_801_Lares_GotoKalom(C_Info)
{
	npc = Org_801_Lares;
	nr = 10;
	condition = ORG_801_Lares_GotoKalom_Condition;
	information = ORG_801_Lares_GotoKalom_Info;
	permanent = 0;
	description = "� ��� � ������ ������ ������?";
};


func int ORG_801_Lares_GotoKalom_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_ORG)
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_GotoKalom_Info()
{
	var C_Npc Mordrag;
	AI_Output(other,self,"ORG_801_Lares_GotoKalom_15_00");	//� ��� � ������ ������ ������?
	AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_01");	//������ �� ���� ����� �����. ������ ������ ���, ��� ��������.
	Log_CreateTopic(CH1_GotoPsiCamp,LOG_MISSION);
	Log_SetTopicStatus(CH1_GotoPsiCamp,LOG_RUNNING);
	B_LogEntry(CH1_GotoPsiCamp,"�������� � �������� ������ ��������� ���-�� �������.");
	if(Lares_InformMordrag == LOG_RUNNING)
	{
		AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_02");	//���� ������������� ������ ������, ����������� � �������� � ������ ��� � ���� � ����������.
		B_LogEntry(CH1_GotoPsiCamp,"� ������ ������ �������� ����������� � ���, ��� �� ����� ����������.");
	}
	else
	{
		Mordrag = Hlp_GetNpc(ORG_826_Mordrag);
		if(Npc_IsDead(Mordrag))
		{
			AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_03");	//���� �� ����� ����� � ������ ������, �������, ��� ����. ����� ������� �� ����� ������� ��� ��������. � ������ ��������� ���������� ���-�� �������.
			AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_04");	//����������� � ������ �������� � ������, ��� ��� ����������.
			B_LogEntry(CH1_GotoPsiCamp,"�� �������� ���� ����� � ������ ��������.");
		}
		else
		{
			AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_05");	//�������� ��� ������� �� ������� ������ - �������. 
			AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_06");	//�������� � ���. �����, ��� ��� ����� ���� ������� � ������ ���������. �������� �������� ���-�� ������� - � � ���� �����, ��� ����������.
			AI_Output(self,other,"ORG_801_Lares_GotoKalom_11_07");	//������ ���.
			B_LogEntry(CH1_GotoPsiCamp,"��� �� ����� ������� ������ �� ���� ������������. ������ ��� ����� ����� � ���� �� �����, ����� � ����� �������.");
			B_ExchangeRoutine(ORG_826_Mordrag,"START");
			Lares_InformMordrag = LOG_RUNNING;
		};
	};
};


instance ORG_801_Lares_WhereLearn(C_Info)
{
	npc = Org_801_Lares;
	nr = 20;
	condition = ORG_801_Lares_WhereLearn_Condition;
	information = ORG_801_Lares_WhereLearn_Info;
	permanent = 0;
	description = "� ����� �� ����-������ ���������.";
};


func int ORG_801_Lares_WhereLearn_Condition()
{
	return TRUE;
};

func void ORG_801_Lares_WhereLearn_Info()
{
	AI_Output(other,self,"ORG_801_Lares_WhereLearn_Info_15_01");	//� ����� �� ����-������ ���������.
	AI_Output(self,other,"ORG_801_Lares_WhereLearn_Info_11_02");	//���� ������. ������ ��������� ���� � ��������?
	Log_CreateTopic(GE_TeacherNC,LOG_NOTE);
	B_LogEntry(GE_TeacherNC,"���� ����� ������ ��� ������������� � ����, � ������.");
};


instance ORG_801_Lares_Teach(C_Info)
{
	npc = Org_801_Lares;
	nr = 20;
	condition = ORG_801_Lares_Teach_Condition;
	information = ORG_801_Lares_Teach_Info;
	permanent = 1;
	description = "��, � ���� ����� �����. ";
};


func int ORG_801_Lares_Teach_Condition()
{
	if(Npc_KnowsInfo(hero,ORG_801_Lares_WhereLearn))
	{
		return TRUE;
	};
	return FALSE;
};

func void ORG_801_Lares_Teach_Info()
{
	AI_Output(other,self,"ORG_801_Lares_Teach_15_00");	//��, � ���� ����� �����.
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach,DIALOG_BACK,ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_BACK()
{
	Info_ClearChoices(ORG_801_Lares_Teach);
};

func void ORG_801_Lares_Teach_STR_1()
{
	B_BuyAttributePoints(other,ATR_STRENGTH,LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach,DIALOG_BACK,ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_STR_5()
{
	B_BuyAttributePoints(other,ATR_STRENGTH,5 * LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach,DIALOG_BACK,ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_DEX_1()
{
	B_BuyAttributePoints(other,ATR_DEXTERITY,LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach,DIALOG_BACK,ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_DEX_5()
{
	B_BuyAttributePoints(other,ATR_DEXTERITY,5 * LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach,DIALOG_BACK,ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),ORG_801_Lares_Teach_DEX_1);
};

