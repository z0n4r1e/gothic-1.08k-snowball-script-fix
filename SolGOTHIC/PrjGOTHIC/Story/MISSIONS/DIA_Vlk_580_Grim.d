
instance DIA_Grim_Exit(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 999;
	condition = DIA_Grim_Exit_Condition;
	information = DIA_Grim_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_Grim_Exit_Condition()
{
	return 1;
};

func void DIA_Grim_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Grim_Falle(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 2;
	condition = DIA_Grim_Falle_Condition;
	information = DIA_Grim_Falle_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Grim_Falle_Condition()
{
	if((Grim_ProtectionBully == TRUE) && (Npc_GetTrueGuild(hero) == GIL_None))
	{
		return 1;
	};
};

func void DIA_Grim_Falle_Info()
{
	AI_Output(self,other,"DIA_Grim_Falle_06_00");	//��! �� ��� ����� ������, ������� ����� �������������� � ������ ������?
	AI_Output(other,self,"DIA_Grim_Falle_15_01");	//� ��� ���� ���?
	AI_Output(self,other,"DIA_Grim_Falle_06_02");	//� ��� �� ������ ����...
	AI_Output(other,self,"DIA_Grim_Falle_15_03");	//� ���?
	AI_Output(self,other,"DIA_Grim_Falle_06_04");	//�� ������� ������������� ���� �����, ���� �� ������� ����� ���-��� � �������. ��� ����������� ������, ������� ������ ���� �������� � ��������� ������.
	AI_Output(self,other,"DIA_Grim_Falle_06_05");	//���� �� ��� � ���. � � �����, ������ �� � ���� ���������. ��� �������?
	Info_ClearChoices(DIA_Grim_Falle);
	Info_AddChoice(DIA_Grim_Falle,"���� ��� �� ����������. �������� � ���-������ ���.",DIA_Grim_Falle_Deny);
	Info_AddChoice(DIA_Grim_Falle,"� ��� �����, ����� �� ������� � ��� ������?",DIA_Grim_Falle_HowShare);
	Info_AddChoice(DIA_Grim_Falle,"������.",DIA_Grim_Falle_Accepr);
};

func void DIA_Grim_Falle_Deny()
{
	AI_Output(other,self,"DIA_Grim_Falle_Deny_15_00");	//���� ��� �� ����������. �������� � ���-������ ���.
	AI_Output(self,other,"DIA_Grim_Falle_Deny_06_01");	//� ����� ���������� �� ����� ����� �� ���������. ��� ��� �����, ���� �����������.
	Info_ClearChoices(DIA_Grim_Falle);
};

func void DIA_Grim_Falle_HowShare()
{
	AI_Output(other,self,"DIA_Grim_Falle_HowShare_15_00");	//� ��� �����, ����� �� ������� � ��� ������?
	AI_Output(self,other,"DIA_Grim_Falle_HowShare_06_01");	//������ ��� ������! � ����� ������ � ������ ���� �������. ��� � ����� ��, ��� �� ������� ���. � �� ������ � ������ �� ������� �����...
	Info_ClearChoices(DIA_Grim_Falle);
	Info_AddChoice(DIA_Grim_Falle,"���� ��� �� ����������. �������� � ���-������ ���.",DIA_Grim_Falle_Deny);
	Info_AddChoice(DIA_Grim_Falle,"���! ����� ������� �������!",DIA_Grim_Falle_HalfHalf);
	Info_AddChoice(DIA_Grim_Falle,"������.",DIA_Grim_Falle_Accepr);
};

func void DIA_Grim_Falle_HalfHalf()
{
	AI_Output(other,self,"DIA_Grim_Falle_HalfHalf_15_00");	//���! ���� ����� ������� �������, ���� ������ ������������ ���� ����.
	AI_Output(self,other,"DIA_Grim_Falle_HalfHalf_06_01");	//�����, �����, ������� - ��� �������. �����, ��� ����� ������. ��� ���, � ���� �� ���� ������������?
};

func void DIA_Grim_Falle_Accepr()
{
	AI_Output(other,self,"DIA_Grim_Falle_Accepr_15_00");	//������.
	AI_Output(self,other,"DIA_Grim_Falle_Accepr_06_01");	//�����, ��� �����, ����� ������ �����.
	Info_ClearChoices(DIA_Grim_Falle);
};


instance DIA_Grim_ReadyToGo(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 2;
	condition = DIA_Grim_ReadyToGo_Condition;
	information = DIA_Grim_ReadyToGo_Info;
	permanent = 0;
	description = "� �����. ����� �� ��������!";
};


func int DIA_Grim_ReadyToGo_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_Falle))
	{
		return 1;
	};
};

func void DIA_Grim_ReadyToGo_Info()
{
	AI_Output(other,self,"DIA_Grim_ReadyToGo_15_00");	//� �����. ����� �� ��������!
	AI_Output(self,other,"DIA_Grim_ReadyToGo_06_01");	//�����, ����...
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"GUIDE");
};


instance DIA_Grim_AtOCdraussen(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 3;
	condition = DIA_Grim_AtOCdraussen_Condition;
	information = DIA_Grim_AtOCdraussen_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Grim_AtOCdraussen_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_ReadyToGo) && (Npc_GetDistToWP(hero,"OC_ROUND_22_CF_2_MOVEMENT") < 500))
	{
		return 1;
	};
};

func void DIA_Grim_AtOCdraussen_Info()
{
	var C_Npc Bu520;
	var C_Npc Bu534;
	AI_Output(self,other,"DIA_Grim_AtOCdraussen_06_00");	//��, ��� �� � ������ - �������� �� ������ ����� �����...
	if(((Npc_GetDistToNpc(self,Bu520) < 1000) && !Npc_IsDead(Bu520)) || ((Npc_GetDistToNpc(self,Bu534) < 1000) && !Npc_IsDead(Bu534)))
	{
		AI_Output(self,other,"DIA_Grim_AtOCdraussen_06_01");	//�� ������ �������� ���� ������ �� ��������!
	}
	else
	{
		AI_Output(self,other,"DIA_Grim_AtOCdraussen_06_02");	//� ������ �������� ���� ������ �� ��������!
	};
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self,"START");
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
	Bu520 = Hlp_GetNpc(VLK_520_Buddler);
	Bu534 = Hlp_GetNpc(VLK_534_Buddler);
	if((Npc_GetDistToNpc(self,Bu520) < 1000) && !Npc_IsDead(Bu520))
	{
		Npc_SetTarget(Bu520,other);
		AI_StartState(Bu520,ZS_Attack,1,"");
	};
	if((Npc_GetDistToNpc(self,Bu534) < 1000) && !Npc_IsDead(Bu534))
	{
		Npc_SetTarget(Bu534,other);
		AI_StartState(Bu534,ZS_Attack,1,"");
	};
};


instance DIA_Grim_NACHFalle(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 2;
	condition = DIA_Grim_NACHFalle_Condition;
	information = DIA_Grim_NACHFalle_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Grim_NACHFalle_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_AtOCdraussen) && (Npc_GetDistToNpc(self,other) < ZivilAnquatschDist))
	{
		return 1;
	};
};

func void DIA_Grim_NACHFalle_Info()
{
	AI_Output(other,self,"DIA_Grim_NACHFalle_15_01");	//������ ��, �������, ������ ������� ���� ����...
	AI_Output(self,other,"DIA_Grim_NACHFalle_06_02");	//��, ������! �� �� ������ ���� ������! ������ � ���� �� ���� ����� ����� � �����.
	AI_Output(self,other,"DIA_Grim_NACHFalle_06_03");	//���� � ������ ��������� � ���� ����������, ���� ������� ����������.
	AI_Output(self,other,"DIA_Grim_NACHFalle_06_04");	//� ��, ��� ��� �������� ������ ������ ����, ������� � ��������� ���� �� ����. ����� ���� ������������ �������� ������ ����� ����������?
	AI_Output(self,other,"DIA_Grim_NACHFalle_06_05");	//����� � ������ ���� ������ �� ����. ��� ��� �� ������������� - ��� ��� �����?
	Info_ClearChoices(DIA_Grim_NACHFalle);
	Info_AddChoice(DIA_Grim_NACHFalle,"�����.",DIA_Grim_NACHFalle_Weiterpruegeln);
	Info_AddChoice(DIA_Grim_NACHFalle,"���.",DIA_Grim_NACHFalle_Frieden);
};

func void DIA_Grim_NACHFalle_Weiterpruegeln()
{
	AI_Output(other,self,"DIA_Grim_NACHFalle_Weiterpruegeln_15_00");	//�� ����� �������!
	AI_Output(self,other,"DIA_Grim_NACHFalle_Weiterpruegeln_06_01");	//������, �� ���� �����������...
	Info_ClearChoices(DIA_Grim_NACHFalle);
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void DIA_Grim_NACHFalle_Frieden()
{
	AI_Output(other,self,"DIA_Grim_NACHFalle_Frieden_15_00");	//��� ������ ����� �����.
	AI_Output(self,other,"DIA_Grim_NACHFalle_Frieden_06_01");	//� ���, ��� �� �������� ���� �����. ������� �� ����. ������ � �� ����� �������.
	AI_Output(self,other,"DIA_Grim_NACHFalle_Frieden_06_02");	//���� �����-������ ��� �������� � ������������, ������ �� ���� ������������ - � ����� ������, � ���� �������.
	Info_ClearChoices(DIA_Grim_NACHFalle);
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
};


var int FirstOver;

instance DIA_Grim_Hallo(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 1;
	condition = DIA_Grim_Hallo_Condition;
	information = DIA_Grim_Hallo_Info;
	permanent = 0;
	description = "� ����� ���������.";
};


func int DIA_Grim_Hallo_Condition()
{
	if(Grim_ProtectionBully == TRUE)
	{
		FirstOver = TRUE;
	};
	if(FirstOver == FALSE)
	{
		return 1;
	};
};

func void DIA_Grim_Hallo_Info()
{
	AI_Output(other,self,"DIA_Grim_Hallo_15_00");	//� ����� ���������.
	AI_Output(self,other,"DIA_Grim_Hallo_06_01");	//������ ��� ������, ��? ���� ����� ����. � ���� ����� �������: ���� ��������� � ������� ���������.
};


instance DIA_Grim_Leben(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 2;
	condition = DIA_Grim_Leben_Condition;
	information = DIA_Grim_Leben_Info;
	permanent = 0;
	description = "� ��� ����� �������?";
};


func int DIA_Grim_Leben_Condition()
{
	return 1;
};

func void DIA_Grim_Leben_Info()
{
	AI_Output(other,self,"DIA_Grim_Leben_15_00");	//� ��� ����� �������?
	AI_Output(self,other,"DIA_Grim_Leben_06_01");	//�� ��� �� �������, ���� �� ������� ���������� �� ������.
};


instance DIA_Grim_Aufnahme(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 3;
	condition = DIA_Grim_Aufnahme_Condition;
	information = DIA_Grim_Aufnahme_Info;
	permanent = 0;
	description = "��� ����� �������, ����� ���� ������� � ���� ������?";
};


func int DIA_Grim_Aufnahme_Condition()
{
	return 1;
};

func void DIA_Grim_Aufnahme_Info()
{
	AI_Output(other,self,"DIA_Grim_Aufnahme_15_00");	//��� ����� �������, ����� ���� ������� � ���� ������?
	AI_Output(self,other,"DIA_Grim_Aufnahme_06_01");	//��, ������ ����� ���� ����� ����� ����� �� ���������. ����� ����� ����-������, ��� �� ���� ��������� � ����� �������� ����.
	AI_Output(self,other,"DIA_Grim_Aufnahme_06_02");	//�� ����� ����� � �� �������� ������� � �����. � ��� ��� ����� - �� ����� ��� ����.
	AI_Output(self,other,"DIA_Grim_Aufnahme_06_03");	//�� �������� ���� ������ ��������� - ��� ������� ��� ����. ����� ����� �����-������ ������ ��������� �� ��������� ���������.
	AI_Output(self,other,"DIA_Grim_Aufnahme_06_04");	//���� ����������, ������� ����� �� ���.
};


var int Grim_Tests;

instance DIA_Grim_HowFarAreYou(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 4;
	condition = DIA_Grim_HowFarAreYou_Condition;
	information = DIA_Grim_HowFarAreYou_Info;
	permanent = 1;
	description = "� ��� ������������ ���� ���������?";
};


func int DIA_Grim_HowFarAreYou_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_Aufnahme) && Npc_KnowsInfo(hero,Info_Diego_Rules))
	{
		return 1;
	};
};

func void DIA_Grim_HowFarAreYou_Info()
{
	AI_Output(other,self,"DIA_Grim_HowFarAreYou_15_00");	//� ��� ������������ ���� ���������?
	AI_Output(self,other,"DIA_Grim_HowFarAreYou_06_01");	//� ��� �������� � ���������, ����� � ��������� - ��� ����� ����������� �������� � ���� ������.
	if(!Grim_Tests)
	{
		B_LogEntry(CH1_JoinOC,"�������, ���� � ������� - ������ ����������� ��������.");
		Grim_Tests = TRUE;
	};
};


instance DIA_Grim_YourPDV(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 5;
	condition = DIA_Grim_YourPDV_Condition;
	information = DIA_Grim_YourPDV_Info;
	permanent = 0;
	description = "��� ���������� ����?";
};


func int DIA_Grim_YourPDV_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_Aufnahme))
	{
		return 1;
	};
};

func void DIA_Grim_YourPDV_Info()
{
	AI_Output(other,self,"DIA_Grim_YourPDV_15_00");	//��� ���������� ����?
	AI_Output(self,other,"DIA_Grim_YourPDV_06_01");	//� �� ���� ������� ����, ������. � ����� ����� ����� �� �������!
};


instance DIA_Grim_INEXTREMO(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 1;
	condition = DIA_Grim_INEXTREMO_Condition;
	information = DIA_Grim_INEXTREMO_Info;
	permanent = 0;
	important = 1;
};


func int DIA_Grim_INEXTREMO_Condition()
{
	return FALSE;
};

func void DIA_Grim_INEXTREMO_Info()
{
	AI_Output(self,other,"DIA_Grim_INEXTREMO_06_01");	//��, ������ �������?
	AI_Output(self,other,"DIA_Grim_INEXTREMO_06_02");	//In Extremo �����! ��� ���, �� �����.
	AI_Output(self,other,"DIA_Grim_INEXTREMO_06_03");	//��������, � �� ���������� ��� ����������!
	Npc_ExchangeRoutine(self,"InExtremo");
	AI_StopProcessInfos(self);
};


instance DIA_Grim_INEXTREMOAWAY(C_Info)
{
	npc = Vlk_580_Grim;
	nr = 1;
	condition = DIA_Grim_INEXTREMOAWAY_Condition;
	information = DIA_Grim_INEXTREMOAWAY_Info;
	permanent = 0;
	important = 0;
	description = "��� In Extremo?";
};


func int DIA_Grim_INEXTREMOAWAY_Condition()
{
	if(Npc_KnowsInfo(hero,DIA_Grim_INEXTREMO) && (Kapitel == 3))
	{
		return TRUE;
	};
};

func void DIA_Grim_INEXTREMOAWAY_Info()
{
	AI_Output(hero,self,"DIA_Grim_INEXTREMOAWAY_15_01");	//��� In Extremo?
	AI_Output(self,hero,"DIA_Grim_INEXTREMOAWAY_06_02");	//��� ������. ����, � ��� ������ ��������� ������ ����� ������.
	AI_StopProcessInfos(self);
};

