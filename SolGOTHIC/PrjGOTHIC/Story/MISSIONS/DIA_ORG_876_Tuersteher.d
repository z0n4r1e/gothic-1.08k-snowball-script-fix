
instance DIA_Org_876_EXIT(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 999;
	condition = DIA_Org_876_EXIT_Condition;
	information = DIA_Org_876_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Org_876_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Org_876_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Org_876_AmSfb(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_AmSfb_Condition;
	information = DIA_Org_876_AmSfb_Info;
	permanent = 1;
	description = "� �������! � � ���� ����!";
};


func int DIA_Org_876_AmSfb_Condition()
{
	if((self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_AmSfb_Info()
{
	var C_Item myarmor;
	AI_Output(other,self,"DIA_Org_876_AmSfb_15_00");	//� �������! � � ���� ����!
	myarmor = Npc_GetEquippedArmor(hero);
	if(Hlp_IsItem(myarmor,sfb_armor_l))
	{
		AI_Output(self,other,"DIA_Org_876_AmSfb_06_01");	//��, �� ����� �� ���� ������� ����... �������!
		self.aivar[AIV_PASSGATE] = 1;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"DIA_Org_876_AmSfb_NOSFB_06_00");	//�� �� ����� �� ���� ��������. ��� �� ���� �� ��������, ��������.
	};
};


instance DIA_Org_876_Bribe(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_Bribe_Condition;
	information = DIA_Org_876_Bribe_Info;
	permanent = 1;
	description = "� ��� �� ������� �� ������ ��������� ����� �� ����?";
};


func int DIA_Org_876_Bribe_Condition()
{
	if((self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_Bribe_Info()
{
	AI_Output(other,self,"DIA_Org_876_Bribe_15_00");	//� ��� �� ������� �� ������ ��������� ����� �� ����?
	AI_Output(self,other,"DIA_Org_876_Bribe_06_01");	//��� ������� �� ����, ��� �� ��������� ��� '��������� ������'.
	Info_ClearChoices(DIA_Org_876_Bribe);
	Info_AddChoice(DIA_Org_876_Bribe,"����� ������ ���� ������ ���� ����������.",DIA_Org_876_Bribe_100Erz);
	Info_AddChoice(DIA_Org_876_Bribe,"��� �� ������� �� ������ ���������� ������?",DIA_Org_876_Bribe_50Erz);
	Info_AddChoice(DIA_Org_876_Bribe,"� ���� ���� ������ ������ ���� - ���.",DIA_Org_876_Bribe_10Erz);
};

func void DIA_Org_876_Bribe_10Erz()
{
	AI_Output(other,self,"DIA_Org_876_Bribe_10Erz_15_00");	//� ���� ���� ������ ������ ���� - ���.
	if(Npc_HasItems(other,ItMiNugget) >= 10)
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_10Erz_06_01");	//������ ������, �? �� ��� � ������� ���� ����������� ��� ���.
	}
	else
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_10Erz_06_02");	//� ��� ���? � �� ���� ������ ������.
	};
	AI_StopProcessInfos(self);
};

func void DIA_Org_876_Bribe_50Erz()
{
	AI_Output(other,self,"DIA_Org_876_Bribe_50Erz_15_00");	//��� �� ������� �� ������ ���������� ������?
	if(Npc_HasItems(other,ItMiNugget) >= 50)
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_50Erz_06_01");	//��� �������� �������� ����, ��� � ������� '������� ����'.
	}
	else
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_50Erz_06_02");	//�� � ��� ���? � �� ���� ���������� ������.
	};
	AI_StopProcessInfos(self);
};

func void DIA_Org_876_Bribe_100Erz()
{
	AI_Output(other,self,"DIA_Org_876_Bribe_100Erz_15_00");	//����� ������ ���� ������ ���� ����������.
	if(Npc_HasItems(other,ItMiNugget) >= 100)
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_100Erz_06_01");	//�� ����. �������.
		self.aivar[AIV_PASSGATE] = 1;
		B_GiveInvItems(other,self,ItMiNugget,100);
	}
	else
	{
		AI_Output(self,other,"DIA_Org_876_Bribe_100Erz_06_02");	//�����. ������ �� ������, ����� � ���� ���� ��� �����.
	};
	AI_StopProcessInfos(self);
};


instance DIA_Org_876_PERM(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_PERM_Condition;
	information = DIA_Org_876_PERM_Info;
	permanent = 1;
	description = "��� ���� ���� �� �������?";
};


func int DIA_Org_876_PERM_Condition()
{
	if((self.aivar[AIV_PASSGATE] == TRUE) || (Npc_GetAttitude(self,hero) == ATT_FRIENDLY))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_PERM_Info()
{
	AI_Output(other,self,"DIA_Org_876_PERM_15_00");	//��� ���� ���� �� �������?
	AI_Output(self,other,"DIA_Org_876_PERM_06_01");	//������ � ������ ������. �� �� �� ��� �� ����� ������������.
};


instance DIA_Org_876_ScSld(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_ScSld_Condition;
	information = DIA_Org_876_ScSld_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Org_876_ScSld_Condition()
{
	if((other.guild == GIL_SLD) || (other.guild == GIL_KDW) || (other.guild == GIL_KDF))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_ScSld_Info()
{
	AI_Output(self,other,"DIA_Org_876_ScSld_06_00");	//����! �� ������ �������. ������ ����� ������ �������� � ����!
	AI_Output(other,self,"DIA_Org_876_ScSld_15_01");	//�� �� ������ �� �� ���������� ����?
	AI_Output(self,other,"DIA_Org_876_ScSld_06_02");	//���... �����, ���...
	self.aivar[AIV_PASSGATE] = 1;
};


instance DIA_Org_876_ScSekte(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_ScSekte_Condition;
	information = DIA_Org_876_ScSekte_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Org_876_ScSekte_Condition()
{
	if((other.guild == GIL_NOV) || (other.guild == GIL_TPL))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_ScSekte_Info()
{
	AI_Output(self,other,"DIA_Org_876_ScSekte_06_00");	//������ �� ���������� ������ �����, �� ����� ������ �� ����� ������ ������ ��������.
	AI_Output(self,other,"DIA_Org_876_ScSekte_06_01");	//�������� ����� � ��� � ����� ���� ������ ������!
};


var int Org_876_GotJoint;

instance DIA_Org_876_GibKraut(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = DIA_Org_876_GibKraut_Condition;
	information = DIA_Org_876_GibKraut_Info;
	permanent = 1;
	description = "� ���� � ����� ���� ��������� �������.";
};


func int DIA_Org_876_GibKraut_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Org_876_ScSekte))
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_Org_876_GibKraut_Info()
{
	AI_Output(other,self,"DIA_Org_876_GibKraut_15_00");	//� ���� � ����� ���� ��������� �������. ���, ��������.
	if((Npc_HasItems(other,ItMiJoint_1) > 0) || (Npc_HasItems(other,ItMiJoint_2) > 0) || (Npc_HasItems(other,ItMiJoint_3) > 0))
	{
		if(Npc_HasItems(other,ItMiJoint_1))
		{
			B_GiveInvItems(other,self,ItMiJoint_1,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_2))
		{
			B_GiveInvItems(other,self,ItMiJoint_2,1);
		}
		else if(Npc_HasItems(other,ItMiJoint_3))
		{
			B_GiveInvItems(other,self,ItMiJoint_3,1);
		};
		AI_Output(self,other,"DIA_Org_876_GibKraut_06_01");	//������ ����� ���� ����, ������!
		self.aivar[AIV_PASSGATE] = 1;
		Org_876_GotJoint = 1;
	}
	else
	{
		AI_Output(other,self,"DIA_Org_876_GibKraut_KEIN_15_00");	//��... ������-��. �������, � ���� ��� ������ �� ��������.
		AI_Output(self,other,"DIA_Org_876_GibKraut_KEIN_06_00");	//�����. � ��������� ��� ������� � ��� ���. 
		self.aivar[AIV_PASSGATE] = 1;
	};
};


const string Org_876_CHECKPOINT = "NC_TAVERN_BAR";

instance Info_Org_876_FirstWarn(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 2;
	condition = Info_Org_876_FirstWarn_Condition;
	information = Info_Org_876_FirstWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_Org_876_FirstWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_BEGIN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Org_876_FirstWarn_Info()
{
	PrintGlobals(PD_MISSION);
	AI_Output(self,hero,"Info_Org_876_FirstWarn_Info_06_00");	//� ���� ��� �� ��������?
	AI_Output(hero,self,"Info_Org_876_FirstWarn_Info_15_01");	//��, ����.
	AI_Output(self,hero,"Info_Org_876_FirstWarn_Info_06_02");	//������ �� ����! � ��� ������ ���������� ������ ��������� � �����.
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,Org_876_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_FIRSTWARN;
};


instance Info_Org_876_LastWarn(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = Info_Org_876_LastWarn_Condition;
	information = Info_Org_876_LastWarn_Info;
	permanent = 1;
	important = 1;
};


func int Info_Org_876_LastWarn_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_FIRSTWARN) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && (Npc_GetDistToWP(hero,Org_876_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Org_876_LastWarn_Info()
{
	AI_Output(self,hero,"Info_Org_876_LastWarn_06_00");	//�� ����� ��� ���, ��������?!
	hero.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToWP(hero,Org_876_CHECKPOINT);
	hero.aivar[AIV_GUARDPASSAGE_STATUS] = AIV_GPS_LASTWARN;
	AI_StopProcessInfos(self);
};


instance Info_Org_876_Attack(C_Info)
{
	npc = ORG_876_Tuersteher;
	nr = 1;
	condition = Info_Org_876_Attack_Condition;
	information = Info_Org_876_Attack_Info;
	permanent = 1;
	important = 1;
};


func int Info_Org_876_Attack_Condition()
{
	if((hero.aivar[AIV_GUARDPASSAGE_STATUS] == AIV_GPS_LASTWARN) && (Npc_GetAttitude(self,hero) != ATT_FRIENDLY) && (self.aivar[AIV_PASSGATE] == FALSE) && (Npc_GetDistToWP(hero,Org_876_CHECKPOINT) < (hero.aivar[AIV_LASTDISTTOWP] - 100)) && Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Org_876_Attack_Info()
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

