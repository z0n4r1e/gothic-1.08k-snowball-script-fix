
instance Tpl_1433_GorNaVid_Exit(C_Info)
{
	npc = TPL_1433_GorNaVid;
	nr = 999;
	condition = Tpl_1433_GorNaVid_Exit_Condition;
	information = Tpl_1433_GorNaVid_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Tpl_1433_GorNaVid_Exit_Condition()
{
	return TRUE;
};

func void Tpl_1433_GorNaVid_Exit_Info()
{
	AI_Output(self,other,"Tpl_1433_GorNaVid_Exit_Info_13_02");	//�� ���������� ������!
	AI_StopProcessInfos(self);
};


instance Tpl_1433_GorNaVid_HEALTH(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_HEALTH_Condition;
	information = Tpl_1433_GorNaVid_HEALTH_Info;
	important = 0;
	permanent = 0;
	description = "��� ����� ���� ������.";
};


func int Tpl_1433_GorNaVid_HEALTH_Condition()
{
	if(Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN_NOW))
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1433_GorNaVid_HEALTH_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_01");	//��� ����� ���� ������.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_02");	//� ��� ���-��� ��� ��� ������, � � ����, ��� ��������� ������ ��������.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_Info_15_03");	//�� �������� ���, ����� � ������ ������?
	AI_Output(self,other,"Tpl_1433_GorNaVid_HEALTH_Info_13_04");	//����� �� �������� ������ ������ �������. ���� �� ��������� ��� �������� �������, �� ������ �� ���� ������������.
};


instance Tpl_1433_GorNaVid_IAN(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_IAN_Condition;
	information = Tpl_1433_GorNaVid_IAN_Info;
	important = 0;
	permanent = 0;
	description = "� ��� ������ ��������.";
};


func int Tpl_1433_GorNaVid_IAN_Condition()
{
	if((CorKalom_BringMCQBalls == LOG_RUNNING) && !Npc_KnowsInfo(hero,Grd_263_Asghan_OPEN))
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1433_GorNaVid_IAN_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_IAN_Info_15_01");	//� ��� ������ ��������.
	AI_Output(self,other,"Tpl_1433_GorNaVid_IAN_Info_13_02");	//�� ������� ����� ������� ��������� �����, �� ������ ��� ���.
};


instance Tpl_1433_GorNaVid_HEALTH_SUC(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNaVid_HEALTH_SUC_Condition;
	information = Tpl_1433_GorNaVid_HEALTH_SUC_Info;
	important = 0;
	permanent = 0;
	description = "���, ����� ����, ��� �������.";
};


func int Tpl_1433_GorNaVid_HEALTH_SUC_Condition()
{
	if(Npc_KnowsInfo(hero,Tpl_1433_GorNaVid_HEALTH) && (Npc_HasItems(hero,ItFo_Potion_Health_01) || Npc_HasItems(hero,ItFo_Potion_Health_02) || Npc_HasItems(hero,ItFo_Potion_Health_03)))
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1433_GorNaVid_HEALTH_SUC_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_15_01");	//���, ����� ����, ��� �������.
	AI_Output(self,other,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_13_02");	//�������. ������ �� ���� ������������.  �� ����������� ����� � ��������.
	AI_Output(other,self,"Tpl_1433_GorNaVid_HEALTH_SUC_Info_15_03");	//� ���� ����.
	if(Npc_HasItems(hero,ItFo_Potion_Health_01))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_01,1);
	}
	else if(Npc_HasItems(hero,ItFo_Potion_Health_02))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_02,1);
	}
	else if(Npc_HasItems(hero,ItFo_Potion_Health_03))
	{
		B_GiveInvItems(hero,self,ItFo_Potion_Health_03,1);
	}
	else
	{
		PrintDebugNpc(PD_MISSION,"KEINE POTION= UNM�GLICH");
	};
	Npc_ExchangeRoutine(self,"GATE");
	Npc_SetPermAttitude(self,ATT_FRIENDLY);
	B_GiveXP(XP_HireGorNaVid);
	B_LogEntry(CH2_MCEggs,"��� ���� ������ �������� ������� ��� �� ����. ����� �� ������������� � ����� ����� � ����� �������.");
	AI_StopProcessInfos(self);
};


instance Tpl_1433_GorNavid_VICTORY(C_Info)
{
	npc = TPL_1433_GorNaVid;
	condition = Tpl_1433_GorNavid_VICTORY_Condition;
	information = Tpl_1433_GorNavid_VICTORY_Info;
	important = 0;
	permanent = 0;
	description = "� ����� ������ �������� ��������!";
};


func int Tpl_1433_GorNavid_VICTORY_Condition()
{
	if(Npc_HasItems(hero,ItAt_Crawlerqueen) >= 1)
	{
		return TRUE;
	};
	return FALSE;
};

func void Tpl_1433_GorNavid_VICTORY_Info()
{
	AI_Output(other,self,"Tpl_1433_GorNavid_VICTORY_Info_15_01");	//� ����� ������ �������� ��������!
	AI_Output(self,other,"Tpl_1433_GorNavid_VICTORY_Info_13_02");	//� ��������� ���� �� ����� ����� ��������!
	AI_Output(self,other,"Tpl_1433_GorNavid_VICTORY_Info_13_03");	//�� �������� ���� �������� ���� �������!
};

