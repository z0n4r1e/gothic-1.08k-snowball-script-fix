
instance Info_Thorus_EXIT(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 999;
	condition = Info_Thorus_EXIT_Condition;
	information = Info_Thorus_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Thorus_EXIT_Condition()
{
	return 1;
};

func void Info_Thorus_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_Thorus_EnterCastle(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 3;
	condition = Info_Thorus_EnterCastle_Condition;
	information = Info_Thorus_EnterCastle_Info;
	permanent = 0;
	description = "������, �� �� ���������� � ����� ������ ������������...";
};


func int Info_Thorus_EnterCastle_Condition()
{
	if(!C_NpcBelongsToOldCamp(other) && (Diego_GomezAudience == FALSE))
	{
		return 1;
	};
};

func void Info_Thorus_EnterCastle_Info()
{
	AI_Output(other,self,"Info_EnterCastle_15_00");	//������, �� �� ���������� � ����� ������ ������������...
	AI_Output(self,other,"Info_EnterCastle_09_01");	//� ����� ����� �������� ������ ���� ������.
};


instance Info_Thorus_WorkForGomez(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 3;
	condition = Info_Thorus_WorkForGomez_Condition;
	information = Info_Thorus_WorkForGomez_Info;
	permanent = 0;
	description = "� ���� �������� �� ������. ";
};


func int Info_Thorus_WorkForGomez_Condition()
{
	if((Npc_KnowsInfo(hero,Info_Diego_JoinOldcamp) || Npc_KnowsInfo(hero,Info_Thorus_EnterCastle)) && (Npc_GetTrueGuild(hero) == GIL_None))
	{
		return 1;
	};
};

func void Info_Thorus_WorkForGomez_Info()
{
	AI_Output(other,self,"Info_WorkForGomez_15_00");	//� ���� �������� �� ������. 
	AI_Output(self,other,"Info_WorkForGomez_09_01");	//� ����� ����? � ������ �� �������, ��� ����� �������������� �����?
};


instance Info_Thorus_DiegoSentMe(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_DiegoSentMe_Condition;
	information = Info_Thorus_DiegoSentMe_Info;
	permanent = 0;
	description = "����� ������, ��� ������ ��� ������ ��.";
};


func int Info_Thorus_DiegoSentMe_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_WorkForGomez) && Npc_KnowsInfo(hero,Info_Diego_JoinOldcamp))
	{
		return 1;
	};
};

func void Info_Thorus_DiegoSentMe_Info()
{
	AI_Output(other,self,"Info_Thorus_DiegoSentMe_15_00");	//����� ������, ��� ������ ��� ������ ��.
	AI_Output(self,other,"Info_Thorus_DiegoSentMe_09_01");	//�-��... ���� ����� �������, ��� �� ��� ���������, ������ �� ��� �� ���������� �����?
	AI_Output(self,other,"Info_Thorus_DiegoSentMe_09_02");	//������� ���������: ����� ������ �������� ����. ���� �� �����, ��� �� ��� ���������, � ������� ���� ����� � ����� � ����������� � �������.
	AI_Output(self,other,"Info_Thorus_DiegoSentMe_09_03");	//�� � ��� ��������� ��� ������� �� ����, �����?
	AI_Output(other,self,"Info_Thorus_DiegoSentMe_15_04");	//� �������� � �����.
	B_LogEntry(CH1_JoinOC,"����� ��������, ��� ��� ���������� � ������ ������ ��� ���� ���������� � �����. �� ���� ��� ������� �������.");
};


instance Info_Thorus_TryMe(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_TryMe_Condition;
	information = Info_Thorus_TryMe_Info;
	permanent = 0;
	description = "������ �� ���� ������ �� �������� ����?";
};


func int Info_Thorus_TryMe_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_WorkForGomez))
	{
		return 1;
	};
};

func void Info_Thorus_TryMe_Info()
{
	AI_Output(other,self,"Info_Thorus_TryMe_15_00");	//������ �� ���� ������ �� �������� ����?
	AI_Output(self,other,"Info_Thorus_TryMe_09_01");	//��� �� ��� ������, �����! ������� �������, ������� ����� ����-�� �������� �����, ����� �����������.
	AI_Output(self,other,"Info_Thorus_TryMe_09_02");	//���� ����������� ������ ���� �� ����� ������. �� ��� �������� ����.
	AI_Output(self,other,"Info_Thorus_TryMe_09_03");	//����������� ����� � ������, ���� �� ��������� ����. ����� �����.
};


instance Info_Thorus_TryMeAgain(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_TryMeAgain_Condition;
	information = Info_Thorus_TryMeAgain_Info;
	permanent = 0;
	description = "��������, � ����� ���� ���-�� ������� ����.";
};


func int Info_Thorus_TryMeAgain_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_TryMe))
	{
		return 1;
	};
};

func void Info_Thorus_TryMeAgain_Info()
{
	AI_Output(other,self,"Info_Thorus_TryMeAgain_15_00");	//��������, � ����� ���� ���-�� ������� ����.
	AI_Output(self,other,"Info_Thorus_TryMeAgain_09_01");	//���. ��, ��� ���������� ��, ���������, ���� ������� �� �� �����, �����.
	AI_Output(self,other,"Info_Thorus_TryMeAgain_09_02");	//�� ����� �������� ������� ������ �����������.
};


instance Info_Thorus_TryMeICanDoIt(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_TryMeICanDoIt_Condition;
	information = Info_Thorus_TryMeICanDoIt_Info;
	permanent = 0;
	description = "� ������ ���� ������ � ��, ��� �� ��� ���������.";
};


func int Info_Thorus_TryMeICanDoIt_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_TryMeAgain))
	{
		return 1;
	};
};

func void Info_Thorus_TryMeICanDoIt_Info()
{
	AI_Output(other,self,"Info_Thorus_TryMeICanDoIt_15_00");	//� ������ ���� ������ � ��, ��� �� ��� ���������.
	AI_Output(self,other,"Info_Thorus_TryMeICanDoIt_09_01");	//�� ��? ����, �� �������� ����� ������, ��? ���� ���� ������� - ��� ��� ��� ����, ��� �� �������� �� ������.
	AI_Output(self,other,"Info_Thorus_TryMeICanDoIt_09_02");	//�� ������������ ���� - ���� ��������� ����, �� ����������� ������� ���� �������������.
};


var int Thorus_MordragKo;

instance Info_Thorus_MordragKo_Offer(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_MordragKo_Offer_Condition;
	information = Info_Thorus_MordragKo_Offer_Info;
	permanent = 0;
	description = "� ����� ��������� ���� �������.";
};


func int Info_Thorus_MordragKo_Offer_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_TryMeICanDoIt))
	{
		return 1;
	};
};

func void Info_Thorus_MordragKo_Offer_Info()
{
	var C_Npc Mordrag;
	AI_Output(other,self,"Info_Thorus_MordragKo_Offer_15_00");	//� ����� ��������� ���� �������.
	AI_Output(self,other,"Info_Thorus_MordragKo_Offer_09_01");	//��, ��� � ���� ������ �����, ������ �������� ����� ����, ����� ������ �� ������ ����� �� ����. �����?
	AI_Output(other,self,"Info_Thorus_MordragKo_Offer_15_02");	//�������.
	AI_Output(self,other,"Info_Thorus_MordragKo_Offer_09_03");	//� ��� �������� �������� � ����� ����� �� ������ ������. ��� ����� �������. �� ������ � �������.
	AI_Output(self,other,"Info_Thorus_MordragKo_Offer_09_04");	//����������, �� �� ����� ������� � � ����������� ����� �� ������ ������, �� � ����� ���� ������� �������� ��������� � ��� � ��������� ���� �� ���� ����� �� �����!
	AI_Output(self,other,"Info_Thorus_MordragKo_Offer_09_05");	//��� ����� ������� ������. �� �� �����, ��� � �� ���� ������ �������.
	AI_Output(other,self,"Info_Thorus_MordragKo_Offer_15_06");	//������?
	AI_Output(self,other,"Info_Thorus_MordragKo_Offer_09_07");	//��� �������� ���� ����.
	Info_ClearChoices(Info_Thorus_MordragKo_Offer);
	Info_AddChoice(Info_Thorus_MordragKo_Offer,"� ���������� �� ����.",Info_Thorus_MordragKo_OFFER_BACK);
	Info_AddChoice(Info_Thorus_MordragKo_Offer,"�� ������, ����� � ��������� ����� ����?",Info_Thorus_MordragKo_KillHim);
	Info_AddChoice(Info_Thorus_MordragKo_Offer,"��� � ���� ����� ��������?",Info_Thorus_MordragKo_Where);
	Info_AddChoice(Info_Thorus_MordragKo_Offer,"������ ���� �������� ����� ��������?",Info_Thorus_MordragKo_MagesProtect);
	Info_AddChoice(Info_Thorus_MordragKo_Offer,"������ �� ��, ��� ������� ��������� ��� ���� �������� ����...",Info_Thorus_MordragKo_MageProblem);
	Thorus_MordragKo = LOG_RUNNING;
	Log_CreateTopic(CH1_MordragKO,LOG_MISSION);
	B_LogEntry(CH1_MordragKO,"����� ������� ��� ���������� �� ��������, ���� �� ������. ������ � ������ ������� ���. �� ����� �� ������ �����, ��� ����� ������� � ����.");
	Log_SetTopicStatus(CH1_MordragKO,LOG_RUNNING);
	Mordrag = Hlp_GetNpc(ORG_826_Mordrag);
};

func void Info_Thorus_MordragKo_OFFER_BACK()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_OFFER_BACK_15_00");	//� ���������� �� ����.
	Info_ClearChoices(Info_Thorus_MordragKo_Offer);
};

func void Info_Thorus_MordragKo_KillHim()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_KillHim_15_00");	//�� ������, ����� � ��������� ����� ����?
	AI_Output(self,other,"Info_Thorus_MordragKo_KillHim_09_01");	//� ������ �� ���� ������ ������ ����� ��� ����. ��� �� ����� ��������� - ��� ��� �����.
};

func void Info_Thorus_MordragKo_Where()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_Where_15_00");	//��� � ���� ����� ��������?
	AI_Output(self,other,"Info_Thorus_MordragKo_Where_09_01");	//�� ������� ��� ����� ����� ����� �� ������ ������� �����. ���� ������� �� ����� �������� ������ � ������.
	B_LogEntry(CH1_MordragKO,"������� ��������� � ����� �����, ������ �����.");
};

func void Info_Thorus_MordragKo_MagesProtect()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_MagesProtect_15_00");	//������ ���� �������� ����� ��������?
	AI_Output(self,other,"Info_Thorus_MordragKo_MagesProtect_09_01");	//��� ���������� ��� � ���� ����������. ���� ���� ������������ ����� � ������ �� ������ ������ � ����� ���������� ���� ����� ������.
	AI_Output(self,other,"Info_Thorus_MordragKo_MagesProtect_09_02");	//������ �����, �� ����� �� ����������, ���� � �������� ������ �� ������ �� ������ ������ ��� ���� ���.
	AI_Output(other,self,"Info_Thorus_MordragKo_MagesProtect_15_03");	//� ��� ������ ����? ��� ���� ������� �� ����?
	AI_Output(self,other,"Info_Thorus_MordragKo_MagesProtect_09_04");	//�� ����� ���������. ��� ����� ���������. �� � ������� �� ����� �����. ��� ������ ����� �����, ����� �� ������ ���� ��� �� �����.
	Thorus_MordragMageMessenger = TRUE;
};

func void Info_Thorus_MordragKo_MageProblem()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_MageProblem_15_00");	//������ �� ��, ��� ������� ��������� ��� ���� �������� ����...
	AI_Output(self,other,"Info_Thorus_MordragKo_MageProblem_09_01");	//��, � ��� �������� �� ���-�� ����� ������. ��������� ��� ����� ���� �� ��������� ��������� ��������� ���������� ���� ����� ����, ���� ��� ����.
	AI_Output(self,other,"Info_Thorus_MordragKo_MageProblem_09_02");	//����� �������� ����� ����� �� ������� ������... ������, ��, ��� �� ���� ��������, ���� ���������� �� ����� �������� ������...
};


instance Info_Thorus_MordragKo_Analyze(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_MordragKo_Analyze_Condition;
	information = Info_Thorus_MordragKo_Analyze_Info;
	permanent = 1;
	description = "�� ������ ��������...";
};


func int Info_Thorus_MordragKo_Analyze_Condition()
{
	if((Thorus_MordragKo == LOG_RUNNING) && (MordragKO_PlayerChoseThorus != TRUE))
	{
		return 1;
	};
};

func void Info_Thorus_MordragKo_Analyze_Info()
{
	var C_Npc Mordrag;
	Info_ClearChoices(Info_Thorus_MordragKo_Analyze);
	Info_AddChoice(Info_Thorus_MordragKo_Analyze,"� ���������� �� ����.",Info_Thorus_MordragKo_ANALYZE_BACK);
	Info_AddChoice(Info_Thorus_MordragKo_Analyze,"��� � ���� ����� ��������?",Info_Thorus_MordragKo_Where);
	Mordrag = Hlp_GetNpc(ORG_826_Mordrag);
	if(Npc_IsDead(Mordrag))
	{
		Info_AddChoice(Info_Thorus_MordragKo_Analyze,"������, ��� ������� �������� ���� ��������� �����!",Info_Thorus_MordragKo_MordragDead);
	}
	else if((MordragKO_HauAb == TRUE) || (MordragKO_StayAtNC == TRUE))
	{
		Info_AddChoice(Info_Thorus_MordragKo_Analyze,"������ �� �� ��������� ��������� �����!",Info_Thorus_MordragKo_MordragGone);
	};
};

func void Info_Thorus_MordragKo_ANALYZE_BACK()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_ANALYZE_BACK_15_00");	//� ���������� �� ����.
	Info_ClearChoices(Info_Thorus_MordragKo_Analyze);
};

func void Info_Thorus_MordragKo_MordragDead()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_MordragDead_15_00");	//������, ��� ������� �������� ���� ��������� �����!
	AI_Output(self,other,"Info_Thorus_MordragKo_MordragDead_09_01");	//������ �������, �� ������� ���? �������, �����!
	Thorus_MordragKo = LOG_SUCCESS;
	Log_SetTopicStatus(CH1_MordragKO,LOG_SUCCESS);
	B_LogEntry(CH1_MordragKO,"�� ������ ��������� ����������� ��, ��� � ����� �������� � ���������.");
	B_GiveXP(XP_Thorusmordragdead);
	Info_ClearChoices(Info_Thorus_MordragKo_Analyze);
};

func void Info_Thorus_MordragKo_MordragGone()
{
	AI_Output(other,self,"Info_Thorus_MordragKo_MordragGone_15_00");	//������ �� �� ��������� ��������� �����!
	AI_Output(self,other,"Info_Thorus_MordragKo_MordragGone_09_01");	//���� �� �����, ���� �� �� ���� ���.
	Thorus_MordragKo = LOG_SUCCESS;
	Log_SetTopicStatus(CH1_MordragKO,LOG_SUCCESS);
	B_LogEntry(CH1_MordragKO,"������, ����� ���, ��� ������� ������ �� �������� �� ������.");
	B_GiveXP(XP_Thorusmordragko);
	Info_ClearChoices(Info_Thorus_MordragKo_Analyze);
};


instance Info_Thorus_MordragFailed(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_MordragFailed_Condition;
	information = Info_Thorus_MordragFailed_Info;
	permanent = 0;
	important = 1;
};


func int Info_Thorus_MordragFailed_Condition()
{
	if(MordragKO_PlayerChoseThorus == TRUE)
	{
		return 1;
	};
};

func void Info_Thorus_MordragFailed_Info()
{
	AI_Output(self,other,"Info_Thorus_MordragFailed_09_00");	//�� �������� ��� ����! � ������� ���� �� �������� ����� �����!!!
	AI_Output(self,other,"Info_Thorus_MordragFailed_09_01");	//�� �������� �������! ������ ��� ����, ��� � ���� �������! ������ �� ���� ������ ��� � ��� ����!
	Thorus_MordragKo = LOG_FAILED;
	Log_SetTopicStatus(CH1_MordragKO,LOG_FAILED);
	B_LogEntry(CH1_MordragKO,"����� ��������� ���, ��� � �������� ��� ��� � ��������� � ���������. ������, ��� ����� �� ������������ ��� �� ����� ��������� �����.");
	AI_StopProcessInfos(self);
};


instance Info_Thorus_BribeGuard(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_BribeGuard_Condition;
	information = Info_Thorus_BribeGuard_Info;
	permanent = 0;
	description = "���� � �������� �����, �� ��������� ����� � �����?";
};


func int Info_Thorus_BribeGuard_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_EnterCastle) && (Npc_GetTrueGuild(other) != GIL_STT) && (Npc_GetTrueGuild(other) != GIL_GRD))
	{
		return 1;
	};
};

func void Info_Thorus_BribeGuard_Info()
{
	AI_Output(other,self,"Info_Thorus_BribeGuard_15_00");	//���� �� � ��������� � ����� ����� ������� ����, �� �� �������� ��� ����� � �����?
	AI_Output(self,other,"Info_Thorus_BribeGuard_09_01");	//����� �������...
	AI_Output(other,self,"Info_Thorus_BribeGuard_15_02");	//�������?
	AI_Output(self,other,"Info_Thorus_BribeGuard_09_02");	//��... �������� ���� ���� ������ ������ ����� �������. �� � �������� ������ ������� ���������� �����, ����� �� ����� ���������� ������������.
	AI_Output(other,self,"Info_Thorus_BribeGuard_15_03");	//� ������������?
	AI_Output(self,other,"Info_Thorus_BribeGuard_09_03");	//������ ������ ������ ���� ����������.
	AI_Output(other,self,"Info_Thorus_BribeGuard_15_04");	//������ ������?!
	AI_Output(self,other,"Info_Thorus_BribeGuard_09_04");	//��, �� ������ ����� ����� �� ����� ������ � ������ � ����� �������.
};


instance Info_Thorus_Give1000Ore(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_Give1000Ore_Condition;
	information = Info_Thorus_Give1000Ore_Info;
	permanent = 1;
	description = "� ���� ���� ������ ������ ����. �������� ����!";
};


func int Info_Thorus_Give1000Ore_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_BribeGuard))
	{
		return 1;
	};
};

func void Info_Thorus_Give1000Ore_Info()
{
	var C_Npc wache212;
	var C_Npc wache213;
	AI_Output(other,self,"Info_Thorus_Give1000Ore_15_00");	//� ���� ���� ������ ������ ����. �������� ����!
	if(Npc_HasItems(other,ItMiNugget) >= 1000)
	{
		B_GiveInvItems(other,self,ItMiNugget,1000);
		AI_Output(self,other,"Info_Thorus_Give1000Ore_09_01");	//������, �������. ���� �� � �����, ���������� �� ������ ������� ���������, �����?
		wache212 = Hlp_GetNpc(Grd_212_Torwache);
		wache213 = Hlp_GetNpc(Grd_213_Torwache);
		wache212.aivar[AIV_PASSGATE] = TRUE;
		wache213.aivar[AIV_PASSGATE] = TRUE;
	}
	else
	{
		AI_Output(self,other,"Info_Thorus_Give1000Ore_09_02");	//�� ������� ������ ����, �����! � ���� ��� ������ ������!
	};
};


instance Info_Thorus_LetterForMages(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_LetterForMages_Condition;
	information = Info_Thorus_LetterForMages_Info;
	permanent = 1;
	description = "��� ����� ������� � �����. � ���� ���� ������.";
};


func int Info_Thorus_LetterForMages_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Thorus_EnterCastle) && (Npc_HasItems(hero,ItWr_Fire_Letter_01) || Npc_HasItems(hero,ItWr_Fire_Letter_02)))
	{
		return 1;
	};
};

func void Info_Thorus_LetterForMages_Info()
{
	AI_Output(other,self,"Info_Thorus_LetterForMages_15_00");	//��� ����� ������� � �����. � ���� ���� ������ ��� ���������� ���� ����� ����.
	AI_Output(self,other,"Info_Thorus_LetterForMages_09_01");	//� �� ���������, ��� � ������ ������� ���� � �����, ����� �� ��� �������� ���� �������?
	AI_Output(other,self,"Info_Thorus_LetterForMages_15_02");	//��.
	AI_Output(self,other,"Info_Thorus_LetterForMages_09_03");	//�����, ������ ��� ������.
	AI_Output(other,self,"Info_Thorus_LetterForMages_15_04");	//������ �� ���� - � �� ������� ���� ������������ ���!
	AI_Output(self,other,"Info_Thorus_LetterForMages_09_05");	//�����, ��� �����.
};


instance Info_Thorus_ReadyForGomez(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_ReadyForGomez_Condition;
	information = Info_Thorus_ReadyForGomez_Info;
	permanent = 0;
	description = "����� ������, ��� � ���� ������� ������!";
};


func int Info_Thorus_ReadyForGomez_Condition()
{
	if(Diego_GomezAudience == TRUE)
	{
		return 1;
	};
};

func void Info_Thorus_ReadyForGomez_Info()
{
	var C_Npc wache212;
	var C_Npc wache213;
	var C_Npc wache218;
	AI_Output(other,self,"Info_Thorus_ReadyForGomez_15_00");	//����� ������, ��� � ���� ������� ������!
	AI_Output(self,other,"Info_Thorus_ReadyForGomez_09_01");	//��� ���� ������ �!
	AI_Output(other,self,"Info_Thorus_ReadyForGomez_15_02");	//� ��� �� �����?
	AI_Output(self,other,"Info_Thorus_ReadyForGomez_09_03");	//�-���...
	AI_Output(self,other,"Info_Thorus_ReadyForGomez_09_04");	//������ ��������, ��� �� ��� ��� �� ���������� �������.
	AI_Output(self,other,"Info_Thorus_ReadyForGomez_09_05");	//������! � ������� ���� ����������� � �������. ������� �� ����� ����� �� ��� ��� ��� - ������ ���. 
	AI_Output(self,other,"Info_Thorus_ReadyForGomez_09_06");	//� ���� ������, ������, ��� ������� ������ �� ����.
	wache212 = Hlp_GetNpc(Grd_212_Torwache);
	wache213 = Hlp_GetNpc(Grd_213_Torwache);
	wache218 = Hlp_GetNpc(Grd_218_Gardist);
	wache212.aivar[AIV_PASSGATE] = TRUE;
	wache213.aivar[AIV_PASSGATE] = TRUE;
	wache218.aivar[AIV_PASSGATE] = TRUE;
};


instance Info_Thorus_Krautbote(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 4;
	condition = Info_Thorus_Krautbote_Condition;
	information = Info_Thorus_Krautbote_Info;
	permanent = 0;
	description = "� ������ ��������� ���� ��������� ������ �� ��� ������.";
};


func int Info_Thorus_Krautbote_Condition()
{
	if(Kalom_Krautbote == LOG_RUNNING)
	{
		return 1;
	};
};

func void Info_Thorus_Krautbote_Info()
{
	var C_Npc wache212;
	var C_Npc wache213;
	var C_Npc wache218;
	AI_Output(other,self,"Info_Thorus_Krautbote_15_00");	//� ������ ��������� ���� ��������� ������ �� ��� ������.
	AI_Output(self,other,"Info_Thorus_Krautbote_09_01");	//������!
	if(Npc_HasItems(other,ItMiJoint_3) >= 30)
	{
		AI_Output(self,other,"Info_Thorus_Krautbote_09_02");	//�-�������...
		AI_Output(self,other,"Info_Thorus_Krautbote_09_03");	//������! �� ������ ������. ����������� � ���� ������� - ��� ���� �������� �������.
		wache212 = Hlp_GetNpc(Grd_212_Torwache);
		wache213 = Hlp_GetNpc(Grd_213_Torwache);
		wache218 = Hlp_GetNpc(Grd_218_Gardist);
		wache212.aivar[AIV_PASSGATE] = TRUE;
		wache213.aivar[AIV_PASSGATE] = TRUE;
		wache218.aivar[AIV_PASSGATE] = TRUE;
	}
	else
	{
		AI_Output(self,other,"Info_Thorus_Krautbote_09_04");	//��� ���������� � ���� ������� ���� ���������! �������, ��� �� �� ������ ��� �� �������. ����������� � ���������� �������!
	};
};


var int thorus_Amulettgezeigt;

instance Info_Thorus_KdWSiegel(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 4;
	condition = Info_Thorus_KdWSiegel_Condition;
	information = Info_Thorus_KdWSiegel_Info;
	permanent = 1;
	description = "� �� ��������� ����� ����. ��� ����� ������� � �����!";
};


func int Info_Thorus_KdWSiegel_Condition()
{
	if((Npc_KnowsInfo(hero,Org_826_Mordrag_Courier) || (Npc_HasItems(other,KdW_Amulett) >= 1)) && (thorus_Amulettgezeigt == FALSE))
	{
		return 1;
	};
};

func void Info_Thorus_KdWSiegel_Info()
{
	var C_Npc wache212;
	var C_Npc wache213;
	AI_Output(other,self,"Info_Thorus_KdWSiegel_15_00");	//� �� ��������� ����� ����. ��� ����� ������� � �����!
	if(Npc_HasItems(other,KdW_Amulett) >= 1)
	{
		AI_Output(self,other,"Info_Thorus_KdWSiegel_09_01");	//� ���� ���� ������ �����. � ��� �� ������ ������ ���� ������.
		AI_Output(self,other,"Info_Thorus_KdWSiegel_09_02");	//� �� ���� ����� ���� � ������, ��� ��� ��������� ��������� ����, �����?
		wache212 = Hlp_GetNpc(Grd_212_Torwache);
		wache213 = Hlp_GetNpc(Grd_213_Torwache);
		wache212.aivar[AIV_PASSGATE] = TRUE;
		wache213.aivar[AIV_PASSGATE] = TRUE;
		thorus_Amulettgezeigt = TRUE;
	}
	else
	{
		AI_Output(self,other,"Info_Thorus_KdWSiegel_09_03");	//���������, ��� ��! � ������ ���� �� ���-�� �����, ���?
	};
};


instance Info_Thorus_SttGeschafft(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_SttGeschafft_Condition;
	information = Info_Thorus_SttGeschafft_Info;
	permanent = 0;
	description = "� ������ ���! ������ � ���������� � ����� ������!";
};


func int Info_Thorus_SttGeschafft_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_STT)
	{
		return 1;
	};
};

func void Info_Thorus_SttGeschafft_Info()
{
	AI_Output(other,self,"Info_Thorus_SttGeschafft_15_00");	//� ������ ���! ������ � ���������� � ����� ������!
	AI_Output(self,other,"Info_Thorus_SttGeschafft_09_01");	//����������, ������! � ����� ������� �������� ��������� ������� � �����.
	AI_Output(self,other,"Info_Thorus_SttGeschafft_09_02");	//������ � ������ ����� ���������� ������ �� ����� ������� ������.
};


instance Info_Thorus_PERM2(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 1;
	condition = Info_Thorus_PERM2_Condition;
	information = Info_Thorus_PERM2_Info;
	permanent = 0;
	description = "��� ���� ����?";
};


func int Info_Thorus_PERM2_Condition()
{
	if((Npc_GetTrueGuild(other) == GIL_STT) && (Kapitel < 4))
	{
		return 1;
	};
};

func void Info_Thorus_PERM2_Info()
{
	AI_Output(other,self,"Info_Thorus_PERM2_15_00");	//��� ���� ����?
	AI_Output(self,other,"Info_Thorus_PERM2_09_01");	//� ��� �� ��� ����� ������� � ����� �������. ���� ������ ���� ��������� ��� �������� ��������.
};


instance GRD_200_Thorus_GARDIST(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_GARDIST_Condition;
	information = GRD_200_Thorus_GARDIST_Info;
	important = 0;
	permanent = 0;
	description = "�� ����� ��� ���-�� �������?";
};


func int GRD_200_Thorus_GARDIST_Condition()
{
	if(((CorKalom_BringMCQBalls == LOG_SUCCESS) || Npc_KnowsInfo(hero,Grd_214_Torwache_SEETHORUS) || Npc_KnowsInfo(hero,GRD_216_Torwache_SEETHORUS)) && (Npc_GetTrueGuild(hero) == GIL_STT) && !Npc_KnowsInfo(hero,GRD_200_Thorus_WANNABEMAGE))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_GARDIST_Info()
{
	var C_Npc KDFWache;
	KDFWache = Hlp_GetNpc(GRD_245_Gardist);
	KDFWache.aivar[AIV_PASSGATE] = TRUE;
	AI_Output(other,self,"GRD_200_Thorus_GARDIST_Info_15_01");	//�� ����� ��� ���-�� �������?
	AI_Output(self,other,"GRD_200_Thorus_GARDIST_Info_09_02");	//��. ��, ��� �� ������ � �����, ���������� �� ������ ���� ��������. �� ����� � ������ ������ �������.
	AI_Output(self,other,"GRD_200_Thorus_GARDIST_Info_09_03");	//� ����� ������� ���� � ���� ����������.
	if(hero.level < 10)
	{
		AI_Output(self,other,"GRD_200_Thorus_GARDIST_Info_09_04");	//�� �� ���� ��� �� ������ ����� ����� ��. ������ ���� ����� ��������� �����.
		AI_StopProcessInfos(self);
		B_PrintGuildCondition(10);
	}
	else if(hero.level >= 10)
	{
		AI_Output(self,other,"GRD_200_Thorus_GARDIST_Info_09_05");	//� ��� ���� ����. ��� �������?
	};
};


instance GRD_200_Thorus_AUFNAHME(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_AUFNAHME_Condition;
	information = GRD_200_Thorus_AUFNAHME_Info;
	permanent = 0;
	description = "� ���� ����� ����������.";
};


func int GRD_200_Thorus_AUFNAHME_Condition()
{
	if(Npc_KnowsInfo(hero,GRD_200_Thorus_GARDIST) && (hero.level >= 10) && (Npc_GetTrueGuild(hero) == GIL_STT))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_AUFNAHME_Info()
{
	var C_Npc KDFWache;
	AI_Output(other,self,"GRD_200_Thorus_AUFNAHME_Info_15_01");	//� ���� ����� ����������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_02");	//��� ������� ���. �� ������ � ������ ������� ���� ��, ��� ������ ������ ��������. ������ �����������, ��������� � �� ����.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_03");	//���� �����, ����� �� ��� ��� �� ����. ������ ��� � �������. ��� ���� �������� ���� �����. ��, ���������, �������� ����� �������, ����, ����� � ������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_04");	//�������� �������� ����, �� ��� �� ������ �� ���, ����� �� �� ������� �������. ���������� � ������� ����� ������, �� ��� �� �������� ��.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_05");	//���� � ����� �� ��������� � �����. ���� � ����� �� ����� �� ������ � ����� ������ � ������ �� ���, ����� ��� ��������� ����� ����� ��������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_06");	//�� �������� ��� ����� �����, �� ������ �� - ����, � ������� ������ �� ���������. � �� ����� ��������, ��� ���� ����� ������� ���� ����� �����, ����� ��� ����.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_07");	//�� ����� ����� � ��� ������ ������: ����� ��� ������ ��������� ������. ������ ������ �� ������ ���������� � ������ ����������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_08");	//� ������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_09");	//�� ��������� ����� �� ���� ����. ���� ����� ������� ������ ����, ���� ��� �����, � ������ ��, ��� �� ���� �����������.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_10");	//��� � ������� ������ ���� ���� ������� � ���.
	AI_Output(self,other,"GRD_200_Thorus_AUFNAHME_Info_09_11");	//�� ������� ��� � ��������� ����� �� ���������� ������.
	KDFWache = Hlp_GetNpc(GRD_245_Gardist);
	KDFWache.aivar[AIV_PASSGATE] = FALSE;
	Npc_SetTrueGuild(hero,GIL_GRD);
	hero.guild = GIL_GRD;
};


instance GRD_200_Thorus_NOCHWAS(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_NOCHWAS_Condition;
	information = GRD_200_Thorus_NOCHWAS_Info;
	important = 1;
	permanent = 0;
};


func int GRD_200_Thorus_NOCHWAS_Condition()
{
	if(Npc_KnowsInfo(hero,GRD_200_Thorus_AUFNAHME) && (Npc_GetTrueGuild(hero) == GIL_GRD))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_NOCHWAS_Info()
{
	AI_Output(self,other,"GRD_200_Thorus_NOCHWAS_Info_09_01");	//��, � ��� ��� ���...
	AI_Output(self,other,"GRD_200_Thorus_NOCHWAS_Info_09_02");	//����� ���������� � ������!
	AI_StopProcessInfos(self);
	Log_CreateTopic(GE_BecomeGuard,LOG_NOTE);
	B_LogEntry(GE_BecomeGuard,"������� ����� ������ ���� � ���������. � ���� ����� � ������� ���� ������� � ������� ������, � �����.");
};


instance GRD_200_Thorus_WANNABEMAGE(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_WANNABEMAGE_Condition;
	information = GRD_200_Thorus_WANNABEMAGE_Info;
	permanent = 0;
	description = "���� ������ �������� ���� �����.";
};


func int GRD_200_Thorus_WANNABEMAGE_Condition()
{
	if(Npc_KnowsInfo(hero,GRD_200_Thorus_GARDIST) && !Npc_KnowsInfo(hero,GRD_200_Thorus_AUFNAHME))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_WANNABEMAGE_Info()
{
	var C_Npc Corristo;
	AI_Output(other,self,"GRD_200_Thorus_WANNABEMAGE_Info_15_01");	//���� ������ �������� ���� �����.
	AI_Output(self,other,"GRD_200_Thorus_WANNABEMAGE_Info_09_02");	//�����, ��������, ���� ����� ���������� � ��������. �� ���� ��������. ������, ���� ����� �� ���������.
	Corristo = Hlp_GetNpc(Kdf_402_Corristo);
	Npc_ExchangeRoutine(Corristo,"WAITFORSC");
	AI_ContinueRoutine(Corristo);
};


instance GRD_200_Thorus_Teach(C_Info)
{
	npc = GRD_200_Thorus;
	nr = 10;
	condition = GRD_200_Thorus_Teach_Condition;
	information = GRD_200_Thorus_Teach_Info;
	permanent = 1;
	description = "�� ������ ����-������ ������� ����?";
};


func int GRD_200_Thorus_Teach_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_GRD)
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_Teach_Info()
{
	AI_Output(other,self,"GRD_200_Thorus_Teach_15_00");	//�� ������ ����� ����?
	AI_Output(self,other,"GRD_200_Thorus_Teach_09_01");	//� ���� �������� ����, ��� �������� ���� ������ � ����� �������.
	if(log_thorustrain == FALSE)
	{
		Log_CreateTopic(GE_TeacherOC,LOG_NOTE);
		B_LogEntry(GE_TeacherOC,"����� ������� ��� � ���������� ���� � ��������.");
		log_thorustrain = TRUE;
	};
	Info_ClearChoices(GRD_200_Thorus_Teach);
	Info_AddChoice(GRD_200_Thorus_Teach,DIALOG_BACK,GRD_200_Thorus_Teach_BACK);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_1);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_1);
};

func void GRD_200_Thorus_Teach_BACK()
{
	Info_ClearChoices(GRD_200_Thorus_Teach);
};

func void GRD_200_Thorus_Teach_STR_1()
{
	B_BuyAttributePoints(other,ATR_STRENGTH,LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(GRD_200_Thorus_Teach);
	Info_AddChoice(GRD_200_Thorus_Teach,DIALOG_BACK,GRD_200_Thorus_Teach_BACK);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_1);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_1);
};

func void GRD_200_Thorus_Teach_STR_5()
{
	B_BuyAttributePoints(other,ATR_STRENGTH,5 * LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(GRD_200_Thorus_Teach);
	Info_AddChoice(GRD_200_Thorus_Teach,DIALOG_BACK,GRD_200_Thorus_Teach_BACK);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_1);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_1);
};

func void GRD_200_Thorus_Teach_DEX_1()
{
	B_BuyAttributePoints(other,ATR_DEXTERITY,LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(GRD_200_Thorus_Teach);
	Info_AddChoice(GRD_200_Thorus_Teach,DIALOG_BACK,GRD_200_Thorus_Teach_BACK);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_1);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_1);
};

func void GRD_200_Thorus_Teach_DEX_5()
{
	B_BuyAttributePoints(other,ATR_DEXTERITY,5 * LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(GRD_200_Thorus_Teach);
	Info_AddChoice(GRD_200_Thorus_Teach,DIALOG_BACK,GRD_200_Thorus_Teach_BACK);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_5,5 * LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnStrength_1,LPCOST_ATTRIBUTE_STRENGTH,0),GRD_200_Thorus_Teach_STR_1);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_5,5 * LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_5);
	Info_AddChoice(GRD_200_Thorus_Teach,B_BuildLearnString(NAME_LearnDexterity_1,LPCOST_ATTRIBUTE_DEXTERITY,0),GRD_200_Thorus_Teach_DEX_1);
};


instance GRD_200_Thorus_ZWEIHAND1(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_ZWEIHAND1_Condition;
	information = GRD_200_Thorus_ZWEIHAND1_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_Learn2h_1,LPCOST_TALENT_2H_1,0);
};


func int GRD_200_Thorus_ZWEIHAND1_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_1H) == 2) && (Npc_GetTalentSkill(hero,NPC_TALENT_2H) < 1) && (Npc_GetTrueGuild(hero) == GIL_GRD))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_ZWEIHAND1_Info()
{
	if(log_thorusfight == FALSE)
	{
		Log_CreateTopic(GE_TeacherOC,LOG_NOTE);
		B_LogEntry(GE_TeacherOC,"����� ����� ������� ���� ��������� ��������� �������, ��� ������ � ����� ����������.");
		log_thorusfight = TRUE;
	};
	AI_Output(other,self,"GRD_200_Thorus_ZWEIHAND1_Info_15_01");	//� ���� ��������� ������� ��������� �����.
	if(B_GiveSkill(other,NPC_TALENT_2H,1,LPCOST_TALENT_2H_1))
	{
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_02");	//�����, ������ � ������ ��������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_03");	//����� ��� �������������. ���� ����������� ������� �����, ����� ��������� ���������� ������� �������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_04");	//������� ���� � ��� ����������� ����. �������� ����� ����������, ����� ���������� �� ������ �����.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_05");	//��������� ������� �������� ����� ��������� � �������� �������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_06");	//��������� ��� ������ ������� ��� ������� ������, ����� ������� ���������� �� ����������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND1_Info_09_07");	//�������, ������ � �����. ����������.
		GRD_200_Thorus_ZWEIHAND1.permanent = 0;
	};
};


instance GRD_200_Thorus_ZWEIHAND2(C_Info)
{
	npc = GRD_200_Thorus;
	condition = GRD_200_Thorus_ZWEIHAND2_Condition;
	information = GRD_200_Thorus_ZWEIHAND2_Info;
	important = 0;
	permanent = 1;
	description = B_BuildLearnString(NAME_Learn2h_2,LPCOST_TALENT_2H_2,0);
};


func int GRD_200_Thorus_ZWEIHAND2_Condition()
{
	if((Npc_GetTalentSkill(hero,NPC_TALENT_2H) == 1) && (Npc_GetTrueGuild(hero) == GIL_GRD))
	{
		return TRUE;
	};
};

func void GRD_200_Thorus_ZWEIHAND2_Info()
{
	AI_Output(other,self,"GRD_200_Thorus_ZWEIHAND2_Info_15_01");	//� ���� ������ ������ � ��������� ����.
	if(B_GiveSkill(other,NPC_TALENT_2H,2,LPCOST_TALENT_2H_2))
	{
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_02");	//������ �����, ����� �������� ������. ����� ��� �����������, �������� �� ������� ������ ������ � ������ ��� � �������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_03");	//������ ������ ���� ��� ����, ����� �� �����. � ������ - ������� ���� ������!
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_04");	//� ���������� �� ����� �� ������� ����� � ���� �����������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_05");	//�� ����� �� ��������� ����� ������� ������ ������� ���� ������, ����� �������� �����.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_06");	//����������, ����� ������� ���� ������� ������, - � ��� ���� ������� ����!
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_07");	//���� ����� �������� ������������, ��� �� ������� ����� �������� � �������� ���������.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_08");	//�������� �����, ��������� � ��� �������, ����� ��������� �����.
		AI_Output(self,other,"GRD_200_Thorus_ZWEIHAND2_Info_09_09");	//������ ������ ������� � ����������� ������ � ������ �����.
		GRD_200_Thorus_ZWEIHAND2.permanent = 0;
	};
};

