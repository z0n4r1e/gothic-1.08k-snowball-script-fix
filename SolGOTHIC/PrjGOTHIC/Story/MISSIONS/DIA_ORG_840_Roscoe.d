
instance DIA_Roscoe_Exit(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 999;
	condition = DIA_Roscoe_Exit_Condition;
	information = DIA_Roscoe_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Roscoe_Exit_Condition()
{
	return TRUE;
};

func void DIA_Roscoe_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Roscoe_BringList(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 1;
	condition = DIA_Roscoe_BringList_Condition;
	information = DIA_Roscoe_BringList_Info;
	permanent = 0;
	description = "� ���� ������ �������� ��� ������ �����.";
};


func int DIA_Roscoe_BringList_Condition()
{
	if(Npc_HasItems(other,TheList) >= 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Roscoe_BringList_Info()
{
	AI_Output(other,self,"DIA_Roscoe_BringList_15_00");	//� ���� ������ �������� ��� ������ �����.
	AI_Output(self,other,"DIA_Roscoe_BringList_10_01");	//�������. ��� �� ��� ����?
	AI_Output(other,self,"DIA_Roscoe_BringList_15_02");	//��� ��� ��� ��.
	AI_Output(self,other,"DIA_Roscoe_BringList_10_03");	//�� ������� ������! ���� ��������, ����� �������� ����, �����? ����� ��� ������ � ���, � ������.
	AI_Output(other,self,"DIA_Roscoe_BringList_15_04");	//��� �������� �����.
	AI_Output(self,other,"DIA_Roscoe_BringList_10_05");	//����� ������ ��, ��� ����������� ��� �����. �� �� ���� �� �����, ���� �� �����, ��� �� ��� �����.
	AI_Output(other,self,"DIA_Roscoe_BringList_15_06");	//��� � ���� ����� ��� ���?
	AI_Output(self,other,"DIA_Roscoe_BringList_10_07");	//�� ������! ���� �� ������� ����� ������.
	self.aivar[AIV_PASSGATE] = 1;
};


instance DIA_Roscoe_Mordrag(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 2;
	condition = DIA_Roscoe_Mordrag_Condition;
	information = DIA_Roscoe_Mordrag_Info;
	important = 0;
	description = "���� ������� �������. ";
};


func int DIA_Roscoe_Mordrag_Condition()
{
	if(Npc_HasItems(hero,MordragsRing))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Roscoe_Mordrag_Info()
{
	AI_Output(other,self,"DIA_Roscoe_Mordrag_15_00");	//���� ������� �������. 
	AI_Output(self,other,"DIA_Roscoe_Mordrag_10_01");	//��������� ��� ����� �� ����. ������, �� ������������ � ������� ������.
	AI_Output(other,self,"DIA_Roscoe_Mordrag_15_02");	//�� ������ ���� ������.
	AI_Output(self,other,"DIA_Roscoe_Mordrag_10_03");	//������� ��������? ���� ��������� ���, �����, ��� ��� ����������� ����.
	AI_Output(other,self,"DIA_Roscoe_Mordrag_15_04");	//������� ������� ��� ���-��� ��� �����.
	AI_Output(self,other,"DIA_Roscoe_Mordrag_10_05");	//��� ������?
	AI_Output(other,self,"DIA_Roscoe_Mordrag_15_06");	//������.
	AI_Output(self,other,"DIA_Roscoe_Mordrag_10_07");	//������� ���������... �����, �� ������ ��������� � ���.
	self.aivar[AIV_PASSGATE] = 1;
};


instance DIA_Roscoe_WannaJoin(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 2;
	condition = DIA_Roscoe_WannaJoin_Condition;
	information = DIA_Roscoe_WannaJoin_Info;
	permanent = 0;
	description = "� ����� �� �������������� � ����� �����.";
};


func int DIA_Roscoe_WannaJoin_Condition()
{
	if(!Npc_KnowsInfo(hero,DIA_Roscoe_Mordrag) && !Npc_KnowsInfo(hero,DIA_Roscoe_BringList) && (Npc_GetTrueGuild(hero) == GIL_None) && (oldHeroGuild == 0))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Roscoe_WannaJoin_Info()
{
	AI_Output(other,self,"DIA_Roscoe_WannaJoin_15_00");	//� ����� �� �������������� � ����� �����.
	AI_Output(self,other,"DIA_Roscoe_WannaJoin_10_01");	//������ ����� �������������� � ���. ���� ������ ������ ����� ��� ������, ���� �������� ���������� ����� ���������.
};


instance DIA_Roscoe_ComeAgain(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 2;
	condition = DIA_Roscoe_ComeAgain_Condition;
	information = DIA_Roscoe_ComeAgain_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Roscoe_ComeAgain_Condition()
{
	if(((Npc_HasItems(other,TheList) >= 1) && Npc_KnowsInfo(hero,ORG_801_Lares_MordragSentMe)) || (Npc_KnowsInfo(hero,Org_826_Mordrag_AtNewcamp) && Npc_KnowsInfo(hero,ORG_801_Lares_BringList)))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Roscoe_ComeAgain_Info()
{
	AI_Output(self,other,"DIA_Roscoe_ComeAgain_10_00");	//����� ��. 
};


const string Roscoe_CHECKPOINT = "NC_HUT22_IN_MOVEMENT";

instance Info_Roscoe_FirstWarn(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 2;
	condition = Info_Roscoe_FirstWarn_Condition;
	information = Info_Roscoe_FirstWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_Roscoe_FirstWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_BEGIN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Roscoe_FirstWarn_Info()
{
	PrintGlobals(PD_MISSION);
	AI_Output(self,hero,"Info_Roscoe_FirstWarn_Info_10_00");	//���� ��������?
	AI_Output(hero,self,"Info_Roscoe_FirstWarn_Info_15_01");	//� ���� ����������� � ������.
	AI_Output(self,hero,"Info_Roscoe_FirstWarn_Info_10_02");	//���� �����, �� ����������� ������ �����, ����� �������� ��� �� ���.
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,Roscoe_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_FIRSTWARN;
};


instance Info_Roscoe_LastWarn(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 1;
	condition = Info_Roscoe_LastWarn_Condition;
	information = Info_Roscoe_LastWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_Roscoe_LastWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_FIRSTWARN) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,Roscoe_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Roscoe_LastWarn_Info()
{
	AI_Output(self,hero,"Info_Roscoe_LastWarn_10_00");	//�� ���, �����?
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,Roscoe_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_LASTWARN;
	AI_StopProcessInfos(self);
};


instance Info_Roscoe_Attack(C_Info)
{
	npc = ORG_840_Roscoe;
	nr = 1;
	condition = Info_Roscoe_Attack_Condition;
	information = Info_Roscoe_Attack_Info;
	permanent = 1;
	important = 1;
};


func int Info_Roscoe_Attack_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_LASTWARN) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,Roscoe_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Roscoe_Attack_Info()
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

