
const string SLD_723_CHECKPOINT = "NC_PLACE02";

instance Info_SLD_723_FirstWarn(C_Info)
{
	npc = SLD_723_Soeldner;
	nr = 1;
	condition = Info_SLD_723_FirstWarn_Condition;
	information = Info_SLD_723_FirstWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_SLD_723_FirstWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_BEGIN) && (self.aivar[AIV_PASSGATE] == FALSE) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SLD_723_FirstWarn_Info()
{
	PrintGlobals(PD_MISSION);
	AI_Output(self,hero,"Info_SLD_723_FirstWarn_11_01");	//����! ������ ��� � ������� ����, �� ������ ������� ������!
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,SLD_723_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_FIRSTWARN;
	if(Npc_KnowsInfo(hero,Info_Cronos_SLEEPER))
	{
		Info_ClearChoices(Info_SLD_723_FirstWarn);
		Info_AddChoice(Info_SLD_723_FirstWarn,"� ����� � ���������� �������!",Info_SLD_723_Parole_CRONOS);
		Info_AddChoice(Info_SLD_723_FirstWarn,"����, � ����� ���!",Info_SLD_723_Parole_FORGOT);
		Info_AddChoice(Info_SLD_723_FirstWarn,"������: '����������'.",Info_SLD_723_Parole_FALSE2);
		Info_AddChoice(Info_SLD_723_FirstWarn,"������: '����������'.",Info_SLD_723_Parole_TRUE);
		Info_AddChoice(Info_SLD_723_FirstWarn,"������: '����������'.",Info_SLD_723_Parole_FALSE1);
	}
	else
	{
		AI_StopProcessInfos(self);
	};
};

func void Info_SLD_723_Parole_CRONOS()
{
	AI_Output(hero,self,"Info_SLD_723_Parole_CRONOS_15_01");	//� ����� � ���������� �������!
	AI_Output(self,hero,"Info_SLD_723_Parole_CRONOS_11_02");	//���� �� ��� ���� ���, �� �� ������ �� ���� ������. �������� ������, ����!
	AI_StopProcessInfos(self);
};

func void Info_SLD_723_Parole_FORGOT()
{
	AI_Output(hero,self,"Info_SLD_723_Parole_FORGOT_15_01");	//����, � ����� ���!
	AI_Output(self,hero,"Info_SLD_723_Parole_FORGOT_11_02");	//�����������, ����� ���������, � �� ����� ������� ��� �����!
	AI_StopProcessInfos(self);
};

func void Info_SLD_723_Parole_FALSE1()
{
	AI_Output(hero,self,"Info_SLD_723_Parole_FALSE1_15_01");	//������: '����������'.
	AI_Output(self,hero,"Info_SLD_723_Parole_FALSE1_11_02");	//�������!
	AI_StopProcessInfos(self);
};

func void Info_SLD_723_Parole_FALSE2()
{
	AI_Output(hero,self,"Info_SLD_723_Parole_FALSE2_15_01");	//������: '����������'.
	AI_Output(self,hero,"Info_SLD_723_Parole_FALSE2_11_02");	//�������!
	AI_StopProcessInfos(self);
};

func void Info_SLD_723_Parole_TRUE()
{
	var C_Npc guard;
	AI_Output(hero,self,"Info_SLD_723_Parole_TRUE_15_01");	//������: '����������'.
	AI_Output(self,hero,"Info_SLD_723_Parole_TRUE_11_02");	//�����. �� ������ ������.
	AI_StopProcessInfos(self);
	guard = Hlp_GetNpc(SLD_732_Soeldner);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_BEGIN;
	self.aivar[AIV_PASSGATE] = 1;
	guard.aivar[AIV_PASSGATE] = 1;
	B_GiveXP(XP_SayCorrectParole);
};


instance Info_SLD_723_LastWarn(C_Info)
{
	npc = SLD_723_Soeldner;
	nr = 2;
	condition = Info_SLD_723_LastWarn_Condition;
	information = Info_SLD_723_LastWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_SLD_723_LastWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_FIRSTWARN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,SLD_723_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SLD_723_LastWarn_Info()
{
	AI_Output(self,hero,"Info_SLD_723_LastWarn_11_01");	//�� ���� ������! ��������� �� ����!
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,SLD_723_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_LASTWARN;
	AI_StopProcessInfos(self);
};


instance Info_SLD_723_Attack(C_Info)
{
	npc = SLD_723_Soeldner;
	nr = 3;
	condition = Info_SLD_723_Attack_Condition;
	information = Info_SLD_723_Attack_Info;
	permanent = 1;
	important = 1;
};


func int Info_SLD_723_Attack_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_LASTWARN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,SLD_723_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SLD_723_Attack_Info()
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


instance Info_SLD_723_PAROLE(C_Info)
{
	npc = SLD_723_Soeldner;
	nr = 10;
	condition = Info_SLD_723_PAROLE_Condition;
	information = Info_SLD_723_PAROLE_Info;
	permanent = 0;
	important = 1;
};


func int Info_SLD_723_PAROLE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_Cronos_SLEEPER) && (self.aivar[AIV_PASSGATE] == FALSE))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_SLD_723_PAROLE_Info()
{
	Info_ClearChoices(Info_SLD_723_PAROLE);
	Info_AddChoice(Info_SLD_723_PAROLE,"� ����� � ���������� �������!",Info_SLD_723_Parole_CRONOS);
	Info_AddChoice(Info_SLD_723_PAROLE,"����, � ����� ���!",Info_SLD_723_Parole_FORGOT);
	Info_AddChoice(Info_SLD_723_PAROLE,"������: '����������'.",Info_SLD_723_Parole_FALSE2);
	Info_AddChoice(Info_SLD_723_PAROLE,"������: '����������'.",Info_SLD_723_Parole_TRUE);
	Info_AddChoice(Info_SLD_723_PAROLE,"������: '����������'.",Info_SLD_723_Parole_FALSE1);
};

