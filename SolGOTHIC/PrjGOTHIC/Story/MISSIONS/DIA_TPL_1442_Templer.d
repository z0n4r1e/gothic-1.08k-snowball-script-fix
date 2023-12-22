
const string TPL_1442_CHECKPOINT = "PSI_TEMPLE_IN";

instance Info_TPL_1442_FirstWarn(C_Info)
{
	npc = TPL_1442_Templer;
	nr = 1;
	condition = Info_TPL_1442_FirstWarn_Condition;
	information = Info_TPL_1442_FirstWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_TPL_1442_FirstWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_BEGIN) && (self.aivar[AIV_PASSGATE] == FALSE) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_TPL_1442_FirstWarn_Info()
{
	PrintGlobals(PD_MISSION);
	AI_Output(self,hero,"Info_TPL_1442_FirstWarn_13_01");	//����! �� ������ �������� �� ����� ����� ������ � ���������� ������ �� ����.
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,TPL_1442_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_FIRSTWARN;
	if(Npc_KnowsInfo(hero,PC_Psionic_SEND))
	{
		Info_ClearChoices(Info_TPL_1442_FirstWarn);
		Info_AddChoice(Info_TPL_1442_FirstWarn,"��� ��� ���������� ��� �`������.",Info_TPL_1442_FirstWarn_Condition_YBERION);
		Info_AddChoice(Info_TPL_1442_FirstWarn,"���� ������� ��������� ������. ",Info_TPL_1442_FirstWarn_Condition_LESTER);
	}
	else
	{
		AI_StopProcessInfos(self);
	};
};

func void Info_TPL_1442_FirstWarn_Condition_YBERION()
{
	AI_Output(hero,self,"Info_TPL_1442_FirstWarn_Condition_YBERION_15_01");	//��� ��� ���������� ��� �`������.
	AI_Output(self,hero,"Info_TPL_1442_FirstWarn_Condition_YBERION_13_02");	//������ � ��� ������ �������� ����, ��� ��� ���������� �������, ������ ��� ��������.
};

func void Info_TPL_1442_FirstWarn_Condition_LESTER()
{
	var C_Npc Templer;
	AI_Output(hero,self,"Info_TPL_1442_FirstWarn_Condition_LESTER_15_01");	//���� ������� ��������� ������. � ���� ���������� ���� ������ �`�������.
	AI_Output(self,hero,"Info_TPL_1442_FirstWarn_Condition_LESTER_13_02");	//� ���� �������. �� ��� ��������. �� ������ ������.
	Info_ClearChoices(Info_TPL_1442_FirstWarn);
	Templer = Hlp_GetNpc(TPL_1441_Templer);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_BEGIN;
	self.aivar[AIV_PASSGATE] = TRUE;
	Templer.aivar[AIV_PASSGATE] = TRUE;
};


instance Info_TPL_1442_LastWarn(C_Info)
{
	npc = TPL_1442_Templer;
	nr = 1;
	condition = Info_TPL_1442_LastWarn_Condition;
	information = Info_TPL_1442_LastWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_TPL_1442_LastWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_FIRSTWARN) && (Npc_GetDistToWP(hero,TPL_1442_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_TPL_1442_LastWarn_Info()
{
	AI_Output(self,hero,"Info_TPL_1442_LastWarn_13_01");	//��� ���� ���, � �� ��������!
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,TPL_1442_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_LASTWARN;
	AI_StopProcessInfos(self);
};


instance Info_TPL_1442_Attack(C_Info)
{
	npc = TPL_1442_Templer;
	nr = 1;
	condition = Info_TPL_1442_Attack_Condition;
	information = Info_TPL_1442_Attack_Info;
	permanent = 1;
	important = 1;
};


func int Info_TPL_1442_Attack_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_LASTWARN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,TPL_1442_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_TPL_1442_Attack_Info()
{
	hero.aivar[AIV_LASTDISTTOWP] = 0;
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_PUNISH;
	B_FullStop(self);
	AI_StopProcessInfos(self);
	B_IntruderAlert(self,other);
	B_SetAttackReason(self,AIV_AR_INTRUDER);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};

