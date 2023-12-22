
instance GUR_1201_CorKalom_FIRST(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = GUR_1201_CorKalom_FIRST_Condition;
	information = GUR_1201_CorKalom_FIRST_Info;
	permanent = 1;
	important = 1;
};


func int GUR_1201_CorKalom_FIRST_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_FIRST_Info()
{
	AI_Output(self,other,"GUR_1201_CorKalom_FIRST_10_00");	//��� ���� �����?
	Kalom_TalkedTo = TRUE;
};


instance GUR_1201_CorKalom_WannaJoin(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = GUR_1201_CorKalom_WannaJoin_Condition;
	information = GUR_1201_CorKalom_WannaJoin_Info;
	permanent = 0;
	description = "� ���� ����� ����� �� ������ ��������.";
};


func int GUR_1201_CorKalom_WannaJoin_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_None)
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_WannaJoin_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_WannaJoin_15_00");	//� ���� ����� ����� �� ������ ��������.
	AI_Output(other,self,"GUR_1201_CorKalom_WannaJoin_15_01");	//� ������, �� ���������� ������������ � ��������� ����� ��� ���������.
	AI_Output(self,other,"GUR_1201_CorKalom_WannaJoin_10_02");	//� ���� ��� �������! ��� ������������ ������� �����, � �� ���� ������ ������� ����� �� ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_WannaJoin_10_03");	//� ��������� � �������� ������. �����������, ����� ��� ������, ��� �� ����� ������ ���� ����������.
	AI_StopProcessInfos(self);
	Log_CreateTopic(CH1_JoinPsi,LOG_MISSION);
	Log_SetTopicStatus(CH1_JoinPsi,LOG_RUNNING);
	B_LogEntry(CH1_JoinPsi,"��� ����� �������� ��� �������������� � �������� � �������� ����������, ���� � ����� ��������� ������� ������ ��������� � ��� ������.");
};


instance GUR_1201_CorKalom_Recipe(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 20;
	condition = GUR_1201_CorKalom_Recipe_Condition;
	information = GUR_1201_CorKalom_Recipe_Info;
	permanent = 0;
	description = "���� �������� �� ������� ������ ���� ������.";
};


func int GUR_1201_CorKalom_Recipe_Condition()
{
	if(Dexter_GetKalomsRecipe == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_Recipe_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_Recipe_15_00");	//���� �������� �� ������� ������ ���� ������ ��������� ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_Recipe_10_01");	//��� ������� �� ���������!
	B_LogEntry(CH1_KalomsRecipe,"��� ����� �� ���� ��� �������. �� � ��� ����������� ���� ������� � �� ��� ������� ������� ������");
};


instance GUR_1201_CorKalom_Experimente(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 2;
	condition = GUR_1201_CorKalom_Experimente_Condition;
	information = GUR_1201_CorKalom_Experimente_Info;
	permanent = 1;
	description = "��� �� ������������ �� ���������?";
};


func int GUR_1201_CorKalom_Experimente_Condition()
{
	if(Kapitel <= 2)
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_Experimente_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_Experimente_15_00");	//��� �� ������������ �� ���������?
	AI_Output(self,other,"GUR_1201_CorKalom_Experimente_10_01");	//��� ������������ ��������� �� ������, ����������� ��� ������ ���������, �������. �� ����� ������� ��� �����!
};


instance GUR_1201_CorKalom_BRINGWEED(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 2;
	condition = GUR_1201_CorKalom_BRINGWEED_Condition;
	information = GUR_1201_CorKalom_BRINGWEED_Info;
	permanent = 1;
	description = "� ������ ������� ���� ���������!";
};


func int GUR_1201_CorKalom_BRINGWEED_Condition()
{
	if(BaalOrun_FetchWeed == LOG_RUNNING)
	{
		return TRUE;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_BRINGWEED_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_BRINGWEED_15_00");	//� ������ ������� ���� ���������!
	if(Npc_HasItems(hero,ItMi_Plants_Swampherb_01) < 100)
	{
		AI_Output(self,other,"GUR_1201_CorKalom_BRINGWEED_10_01");	//� ��� - ���?! ��� ����� ������ ���� - ������� ����� �������!!!
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"GUR_1201_CorKalom_BRINGWEED_10_02");	//�, ����� ����. � �������� � ���� ����!
		B_GiveInvItems(hero,self,ItMi_Plants_Swampherb_01,100);
		Npc_RemoveInvItems(self,ItMi_Plants_Swampherb_01,100);
		BaalOrun_FetchWeed = LOG_SUCCESS;
		B_LogEntry(CH1_DeliverWeed,"����� � ������ ��� ����������� ������, ��� ����� ��� ����� ������ ���������.");
		Log_SetTopicStatus(CH1_DeliverWeed,LOG_SUCCESS);
		B_GiveXP(XP_DeliveredWeedHarvest);
		BaalOrun_FetchWeed = LOG_SUCCESS;
		AI_StopProcessInfos(self);
	};
};


instance GUR_1201_CorKalom_Crawlerzangen(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 800;
	condition = GUR_1201_CorKalom_Crawlerzangen_Condition;
	information = GUR_1201_CorKalom_Crawlerzangen_Info;
	permanent = 1;
	description = "� ������ ���� ����� ��������...";
};


func int GUR_1201_CorKalom_Crawlerzangen_Condition()
{
	if(Npc_HasItems(other,ItAt_Crawler_01) > 0)
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_Crawlerzangen_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_Crawlerzangen_15_00");	//� ������ ���� ����� ��������...
	if(Npc_HasItems(other,ItAt_Crawler_01) > 9)
	{
		AI_Output(self,other,"GUR_1201_CorKalom_Crawlerzangen_10_01");	//����� ������. � ������� � ��� ���� ��������� ������ ���������.
		CreateInvItems(self,ItFo_Potion_Mana_03,3);
		B_GiveInvItems(self,hero,ItFo_Potion_Mana_03,3);
	}
	else if(Npc_HasItems(other,ItAt_Crawler_01) > 2)
	{
		AI_Output(self,other,"GUR_1201_CorKalom_Crawlerzangen_10_02");	//������. � ������� � ��� ���� ��������� ���������.
		CreateInvItems(self,ItFo_Potion_Mana_02,2);
		B_GiveInvItems(self,hero,ItFo_Potion_Mana_02,2);
	}
	else
	{
		AI_Output(self,other,"GUR_1201_CorKalom_Crawlerzangen_10_03");	//�-�. � ��� ���? ���, ������� ���������� ������� � ����������.
		CreateInvItems(self,ItFo_Potion_Mana_01,1);
		B_GiveInvItems(self,hero,ItFo_Potion_Mana_01,1);
		AI_StopProcessInfos(self);
	};
	B_GiveInvItems(other,self,ItAt_Crawler_01,Npc_HasItems(other,ItAt_Crawler_01));
};


instance GUR_1201_CorKalom_JoinPSI(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = GUR_1201_CorKalom_JoinPSI_Condition;
	information = GUR_1201_CorKalom_JoinPSI_Info;
	permanent = 1;
	description = "������, ��� ������� ������� ������!";
};


func int GUR_1201_CorKalom_JoinPSI_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_None) && Npc_KnowsInfo(hero,GUR_1201_CorKalom_WannaJoin))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_JoinPSI_Info()
{
	var int counter;
	counter = 0;
	AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_00");	//������, ��� ������� ������� ������!
	if(Npc_KnowsInfo(hero,DIA_BaalOrun_GotWeed))
	{
		AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_01");	//���� ���� ������, ��� � ������� ����� ������ ������ �������.
		counter = counter + 1;
	};
	if(Npc_KnowsInfo(hero,DIA_BaalCadar_SleepSpell))
	{
		AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_02");	//���������...
		AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_03");	//���� ����� ������� ���� ��������� ��������.
		counter = counter + 1;
	};
	if(Npc_KnowsInfo(hero,DIA_BaalNamib_FirstTalk))
	{
		AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_04");	//���� ����� �������� ���� ������� ��������.
		counter = counter + 1;
	};
	if(Npc_KnowsInfo(hero,DIA_BaalTyon_Vision))
	{
		AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_05");	//��������� ��� ����� ����� �������� �������.
		counter = counter + 1;
	};
	if(Npc_KnowsInfo(hero,DIA_BaalTondral_SendToKalom))
	{
		AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_06");	//�?
		AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_07");	//���� ������� ������, ��� � ������ �������� ����. � ������ � ���� ������ �������.
		counter = counter + 1;
	};
	if(hero.level >= 5)
	{
		if(counter >= 4)
		{
			AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_08");	//������. ��� ���� ������ ���������� ����, ��� ���� ������������ �����.
			AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_09");	//���, ������ ���. � ������ ������ � ���������� ��������� ������.
			CreateInvItem(self,nov_armor_m);
			B_GiveInvItems(self,hero,nov_armor_m,1);
			AI_EquipBestArmor(other);
			Npc_SetTrueGuild(hero,GIL_NOV);
			hero.guild = GIL_NOV;
			B_LogEntry(CH1_JoinPsi,"������� ��� ����� ������ ���� �����������. �������, �� ����� ��� ������������� ���������, ������ ������ � ���������� � �������� �������.");
			B_LogEntry(GE_TraderPSI,"� ���� �������� ����� ������� ������� �� ����� ������.");
			Log_SetTopicStatus(CH1_JoinPsi,LOG_SUCCESS);
			B_GiveXP(XP_BecomeNovice);
			Log_CreateTopic(CH1_JoinOC,LOG_MISSION);
			Log_SetTopicStatus(CH1_JoinOC,LOG_FAILED);
			B_LogEntry(CH1_JoinOC,"��������� � ������� ����� ��������� � ��������, �� � �� ���� ������ ������������ �� ������ ������ �� ����� ������.");
			Log_CreateTopic(CH1_JoinNC,LOG_MISSION);
			Log_SetTopicStatus(CH1_JoinNC,LOG_FAILED);
			B_LogEntry(CH1_JoinNC,"��������� � ������� ����� ��������� � ��������, �� � �� ���� ������ ������������ �� ������ ������ �� ����� ������ ������.");
		}
		else
		{
			AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_NOT_10_00");	//�?
			AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_NOT_15_01");	//��� ���.
			AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_NOT_10_02");	//�� ������� ������� ��� ����������� �����. �����������, ����� ���� �� ������� ������ �������� ���� ���������!
		};
	}
	else
	{
		B_PrintGuildCondition(5);
	};
};


instance GUR_1201_CorKalom_JoinPSI2(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = GUR_1201_CorKalom_JoinPSI2_Condition;
	information = GUR_1201_CorKalom_JoinPSI2_Info;
	permanent = 0;
	description = "������, ���? �� �����������, �� ������ ��������� - ������?!";
};


func int GUR_1201_CorKalom_JoinPSI2_Condition()
{
	if(Npc_GetTrueGuild(hero) == GIL_NOV)
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_JoinPSI2_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_10");	//������, ���? �� ���� '����� ����������', �� ������ ��������� - ������?!
	AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_11");	//����� ����������.
	AI_Output(other,self,"GUR_1201_CorKalom_JoinPSI_15_12");	//��� �����.
	AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_13");	//��������� ������� ��� ����! ������� ���-������. ���, ������ ���� �������� � ������ ��� � ������ ������, ������.
	AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_14");	//���� ��� ���������� ��������� ���������� ����, ����� ��, ��� ���� ������ ��� �����.
	CreateInvItems(self,ItMiJoint_3,30);
	B_GiveInvItems(self,hero,ItMiJoint_3,30);
	Kalom_Krautbote = LOG_RUNNING;
	Log_CreateTopic(CH1_KrautBote,LOG_MISSION);
	Log_SetTopicStatus(CH1_KrautBote,LOG_RUNNING);
	B_LogEntry(CH1_KrautBote,"��� ����� ������ ���� � ������ � ������ ������, ����� � �������� ��������.");
	AI_Output(self,other,"GUR_1201_CorKalom_JoinPSI_10_15");	//���, �� ��� �����?
	AI_StopProcessInfos(self);
};


instance Info_Kalom_DrugMonopol(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_Kalom_DrugMonopol_Condition;
	information = Info_Kalom_DrugMonopol_Info;
	permanent = 0;
	description = "� ���� ���� ��� ���� ������ �������?";
};


func int Info_Kalom_DrugMonopol_Condition()
{
	if(Npc_GetTrueGuild(other) == GIL_NOV)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Kalom_DrugMonopol_Info()
{
	var C_Npc Renyu;
	var C_Npc Killian;
	AI_Output(other,self,"Mis_1_Psi_Kalom_DrugMonopol_15_00");	//� ���� ���� ��� ���� ������ �������?
	AI_Output(self,other,"Mis_1_Psi_Kalom_DrugMonopol_10_01");	//��������� ������� � ����� ������ ������ ���� �������� ��������.
	AI_Output(self,other,"Mis_1_Psi_Kalom_DrugMonopol_10_03");	//�������� �� ���, ����� ��� ���������� ������������.
	AI_Output(other,self,"Mis_1_Psi_Kalom_DrugMonopol_15_04");	//���...
	AI_Output(self,other,"Mis_1_Psi_Kalom_DrugMonopol_10_05");	//������ ���� �� ����������!
	AI_Output(self,other,"Mis_1_Psi_Kalom_DrugMonopol_10_06");	//�� ������ ������ ���������� ���-�� �� ��������� ������ ������. �� ������, ��� ������.
	Kalom_DrugMonopol = LOG_RUNNING;
	Log_CreateTopic(CH1_DrugMonopol,LOG_MISSION);
	Log_SetTopicStatus(CH1_DrugMonopol,LOG_RUNNING);
	B_LogEntry(CH1_DrugMonopol,"��� ����� �����, ����� � ���������� � ������������� ������������� ��������� � ����� ������. � �� ����������� ����, ��� ������. ������, �������� ������ ����� � ����� ������.");
	Renyu = Hlp_GetNpc(Org_860_Renyu);
	Renyu.aivar[AIV_WASDEFEATEDBYSC] = FALSE;
	Killian = Hlp_GetNpc(Org_861_Killian);
	Killian.aivar[AIV_WASDEFEATEDBYSC] = FALSE;
};


instance Info_Kalom_Success(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_Kalom_Success_Condition;
	information = Info_Kalom_Success_Info;
	permanent = 1;
	description = "�� ������ ��������� � ����� ������...";
};


func int Info_Kalom_Success_Condition()
{
	if(Kalom_DrugMonopol == LOG_RUNNING)
	{
		return 1;
	};
	return FALSE;
};

func void Info_Kalom_Success_Info()
{
	var C_Npc Killian;
	var C_Npc Renyu;
	var C_Npc Jacko;
	Killian = Hlp_GetNpc(Org_861_Killian);
	Renyu = Hlp_GetNpc(Org_860_Renyu);
	Jacko = Hlp_GetNpc(Org_862_Jacko);
	AI_Output(other,self,"Mis_1_Psi_Kalom_Success_15_00");	//�� ������ ��������� � ����� ������...
	AI_Output(self,other,"Mis_1_Psi_Kalom_Success_10_01");	//��?
	if(Stooges_Fled != TRUE)
	{
		AI_Output(other,self,"Mis_1_Psi_Kalom_Success_15_02");	//� �� ����� ���� �����.
		AI_Output(self,other,"Mis_1_Psi_Kalom_Success_10_03");	//������ ������� � �� ���� � �� ������.
	}
	else if((Stooges_Fled == TRUE) || (Npc_IsDead(Jacko) && Npc_IsDead(Renyu) && Npc_IsDead(Killian)))
	{
		AI_Output(other,self,"Mis_1_Psi_Kalom_Success_15_04");	//������ �����.
		AI_Output(self,other,"Mis_1_Psi_Kalom_Success_10_05");	//�� ��������� ����. � ������������ ���� �����������. ������, �� ������ ���� ��������.
		Kalom_DrugMonopol = LOG_SUCCESS;
		B_LogEntry(CH1_DrugMonopol,"� ��������������� ��� ������, ��� ��� ����������� �� ������ ������ �� ����� ������. �� ����� ��� ����� '����������'.");
		Log_SetTopicStatus(CH1_DrugMonopol,LOG_SUCCESS);
		B_GiveXP(XP_DrugMonopol);
	};
};


instance Info_Kalom_KrautboteBACK(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = Info_Kalom_KrautboteBACK_Condition;
	information = Info_Kalom_KrautboteBACK_Info;
	permanent = 1;
	description = "� �������� ��������.";
};


func int Info_Kalom_KrautboteBACK_Condition()
{
	if(Kalom_DeliveredWeed)
	{
		return TRUE;
	};
	return FALSE;
};

func void Info_Kalom_KrautboteBACK_Info()
{
	AI_Output(other,self,"Mis_1_Psi_Kalom_KrautboteBACK_15_00");	//� �������� ��������.
	if(Npc_HasItems(hero,ItMiNugget) >= 500)
	{
		AI_Output(self,other,"Mis_1_Psi_Kalom_KrautboteBACK_10_01");	//������. ����� ���� ������ �������.
		Kalom_DrugMonopol = LOG_SUCCESS;
		B_LogEntry(CH1_KrautBote,"��� ����� ������� ������ �� ������������ ������� ��������.");
		Log_SetTopicStatus(CH1_KrautBote,LOG_SUCCESS);
		B_GiveInvItems(hero,self,ItMiNugget,500);
		B_GiveXP(XP_WeedShipmentReported);
		Info_Kalom_KrautboteBACK.permanent = 0;
	}
	else
	{
		AI_Output(self,other,"Mis_1_Psi_Kalom_KrautboteBACK_10_02");	//��� ���� ����� ������ ����, �������? ����������, ����� � ������� �� ��� ����� �������!
	};
};


instance Info_CorKalom_BringFocus(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_CorKalom_BringFocus_Condition;
	information = Info_CorKalom_BringFocus_Info;
	permanent = 0;
	important = 0;
	description = "���� ������� �`������. � ������ ������.";
};


func int Info_CorKalom_BringFocus_Condition()
{
	if((YBerion_BringFocus == LOG_SUCCESS) && Npc_HasItems(hero,Focus_1))
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_BringFocus_Info()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BringFocus_Info3_15_01");	//���� ������� �`������. � ������ ������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info3_10_02");	//�-���, ������... �������-��. ������ � ����� ������� ���������� �������� ���� ����������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BringFocus_Info3_10_03");	//���� �� ������ � ���� ���� ���������� ����� ��������... ����!
	B_LogEntry(CH2_Focus,"� �������� ������ ��� ������!");
	Log_SetTopicStatus(CH2_Focus,LOG_SUCCESS);
	B_GiveInvItems(hero,self,Focus_1,1);
	Npc_RemoveInvItem(self,Focus_1);
	B_GiveXP(XP_BringFocusToCorKalom);
};


instance Info_CorKalom_BLUFF(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 10;
	condition = Info_CorKalom_BLUFF_Condition;
	information = Info_CorKalom_BLUFF_Info;
	permanent = 0;
	description = "�`������ ������, ��� �� ��������� ��� �� ������.";
};


func int Info_CorKalom_BLUFF_Condition()
{
	if(Npc_KnowsInfo(hero,Info_CorKalom_BringFocus) && (CorKalom_BringMCQBalls != LOG_SUCCESS))
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_BLUFF_Info()
{
	AI_Output(other,self,"Sit_2_PSI_Yberion_BLUFF_Info3_15_01");	//�`������ ������, ��� �� ��������� ��� �� ������.
	AI_Output(self,other,"Sit_2_PSI_Yberion_BLUFF_Info3_10_02");	//� ����� ����? �� ��� ������? ��, ������. �����, ���������� ������ ���� ����� ������ ����������!
	CreateInvItems(self,ItMiNugget,50);
	B_GiveInvItems(self,other,ItMiNugget,50);
};


instance GUR_1201_CorKalom_SACHE(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_SACHE_Condition;
	information = GUR_1201_CorKalom_SACHE_Info;
	important = 0;
	permanent = 0;
	description = "�����?";
};


func int GUR_1201_CorKalom_SACHE_Condition()
{
	if(Npc_KnowsInfo(hero,Info_CorKalom_BringFocus))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_SACHE_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_SACHE_Info_15_01");	//�����?
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_Info_10_02");	//��. �� ������ �����, ��� � ������� ���������� �������� ��� ������ �������. ��� ����� ��� ����� �����, ������� ���������� �� ���� ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_Info_10_03");	//�� ������, ��� ����� �������, ���� ���?
	Info_ClearChoices(GUR_1201_CorKalom_SACHE);
	Info_AddChoice(GUR_1201_CorKalom_SACHE,"���.",GUR_1201_CorKalom_SACHE_NEIN);
	Info_AddChoice(GUR_1201_CorKalom_SACHE,"��.",GUR_1201_CorKalom_SACHE_JA);
};

func void GUR_1201_CorKalom_SACHE_NEIN()
{
	AI_Output(other,self,"GUR_1201_CorKalom_SACHE_NEIN_15_01");	//���.
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_NEIN_10_02");	//��� ������ ����� ������� �� ���� ����� � �������� ������������ �����.
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_NEIN_10_03");	//�� ����� �������� ������ ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_NEIN_10_04");	//� ��������� �� ��� ������������� ��������, ������� ��������� ������������� ����� �� ������.
	Info_ClearChoices(GUR_1201_CorKalom_SACHE);
};

func void GUR_1201_CorKalom_SACHE_JA()
{
	AI_Output(other,self,"GUR_1201_CorKalom_SACHE_JA_15_01");	//��.
	AI_Output(self,other,"GUR_1201_CorKalom_SACHE_JA_10_02");	//����� ������!
	Info_ClearChoices(GUR_1201_CorKalom_SACHE);
};


instance GUR_1201_CorKalom_VISION(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_VISION_Condition;
	information = GUR_1201_CorKalom_VISION_Info;
	important = 0;
	permanent = 0;
	description = "���������!";
};


func int GUR_1201_CorKalom_VISION_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_SACHE))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_VISION_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_VISION_Info_15_01");	//���������!
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_02");	//������ ������� ���� �������� �������. ��� ������ ����� ��� ����.
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_03");	//� � �����, ��� ������ ����� �������� ���� � ������ ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_04");	//� �� ������ ���� ��� ���� ������. �� ��������� �� �� �� ����. �� ��������� ������� �� ������ �������!
	AI_Output(other,self,"GUR_1201_CorKalom_VISION_Info_15_05");	//����������!
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_06");	//�����, ������!
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_07");	//� ����� �, ��� �������� �� ���������� ����, �� ��� �������� ������������ ������.
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_08");	//����� ������� � ��������, �� ���� �� ���� ������������.
	AI_Output(self,other,"GUR_1201_CorKalom_VISION_Info_10_09");	//������ ���� ���-�� ���.
};


instance GUR_1201_CorKalom_NEST(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_NEST_Condition;
	information = GUR_1201_CorKalom_NEST_Info;
	important = 0;
	permanent = 0;
	description = "�� ���, ������� �� ������ ��������?";
};


func int GUR_1201_CorKalom_NEST_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_VISION))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_NEST_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_NEST_Info_15_01");	//�� ���, ������� �� ������ ��������? � ���� � ���� - ��������, � �����-�� ������ ����� �� ���� ���������� ������ ����� ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_NEST_Info_10_02");	//����������, � ������������ ��������, �� ������ ���� � �� ������ ���������� ����������� ��� ���������.
	AI_Output(self,other,"GUR_1201_CorKalom_NEST_Info_10_03");	//�� ������ ���� ���-�� ���... ����� �� ������ � �� ������� �����!
	CorKalom_BringMCQBalls = LOG_RUNNING;
};

func void GUR_1201_CorKalom_WEG_ACCEPT()
{
	Log_CreateTopic(CH2_MCEggs,LOG_MISSION);
	Log_SetTopicStatus(CH2_MCEggs,LOG_RUNNING);
	B_LogEntry(CH2_MCEggs,"���� ��� ����� �������� ���� �������� �������� ����� �������� � ������ �����. �� ��� ��� �������������� ������� ���� ��������, �� ��� ���� ����� �������� ����� ����������������� ��������.");
	if(PresseTourJanuar2001)
	{
		CreateInvItems(hero,ItAt_Crawlerqueen,3);
	};
};


instance GUR_1201_CorKalom_WEG(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_WEG_Condition;
	information = GUR_1201_CorKalom_WEG_Info;
	nr = 21;
	important = 0;
	permanent = 0;
	description = "������ �� ���� - ���� �������� � �������!";
};


func int GUR_1201_CorKalom_WEG_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_NEST) && !Npc_KnowsInfo(hero,GUR_1201_CorKalom_RAT))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_WEG_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_WEG_Info_15_01");	//������ �� ���� - ���� �������� � �������!
	AI_Output(self,other,"GUR_1201_CorKalom_WEG_Info_10_02");	//������ ��� ������ � ����������� ����� � ��������� �� �� ���� �����.
	AI_Output(self,other,"GUR_1201_CorKalom_WEG_Info_10_03");	//������ � ������ ������� ����.
	AI_Output(self,other,"GUR_1201_CorKalom_WEG_Info_10_04");	//�� ������� ���� ��� ������, � �� ��������� ���� ��� �� ���� ����, � ��������� �� ��� ���� � ������� ���� ����!
	CreateInvItems(self,ItArScrollLight,5);
	B_GiveInvItems(self,other,ItArScrollLight,5);
	GUR_1201_CorKalom_WEG_ACCEPT();
};


instance GUR_1201_CorKalom_RAT(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_RAT_Condition;
	information = GUR_1201_CorKalom_RAT_Info;
	nr = 20;
	important = 0;
	permanent = 0;
	description = "��� ������� ���� �������...";
};


func int GUR_1201_CorKalom_RAT_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_NEST) && !Npc_KnowsInfo(hero,GUR_1201_CorKalom_WEG))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_RAT_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_RAT_Info_15_01");	//��� ������� ���� �������...
	AI_Output(self,other,"GUR_1201_CorKalom_RAT_Info_10_02");	//������ ��� �������� ��������.
	AI_Output(self,other,"GUR_1201_CorKalom_RAT_Info_10_03");	//� ��� �� ���� �� ������, ��� ����, ����� �� ������, �� ������, ��� ������, ����������� �� ����, ������ ���� ���������.
	CreateInvItems(self,ItFo_Potion_Health_02,5);
	B_GiveInvItems(self,other,ItFo_Potion_Health_02,5);
	GUR_1201_CorKalom_WEG_ACCEPT();
};


instance GUR_1201_CorKalom_RUN(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_RUN_Condition;
	information = GUR_1201_CorKalom_RUN_Info;
	important = 0;
	permanent = 0;
	description = "��� ��� ������ ��������?";
};


func int GUR_1201_CorKalom_RUN_Condition()
{
	if((CorKalom_BringMCQBalls == LOG_RUNNING) && (Npc_HasItems(hero,ItAt_Crawlerqueen) < 1))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_RUN_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_RUN_Info_15_01");	//��� ��� ������ ��������?
	AI_Output(self,other,"GUR_1201_CorKalom_RUN_Info_10_02");	//� ������ �����.
	if(!EnteredOldMine)
	{
		AI_Output(other,self,"GUR_1201_CorKalom_RUN_Info_15_03");	//��� ��������� ������ �����?
		AI_Output(self,other,"GUR_1201_CorKalom_RUN_Info_10_04");	//������ ��� �����. �� ��� �������� ��� ������ �����, ������� ��������� ������ �������.
		CreateInvItem(self,ItWrWorldmap);
		B_GiveInvItems(self,other,ItWrWorldmap,1);
	};
};


instance GUR_1201_CorKalom_CRAWLER(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_CRAWLER_Condition;
	information = GUR_1201_CorKalom_CRAWLER_Info;
	important = 0;
	permanent = 0;
	description = "��� �������� ��������?";
};


func int GUR_1201_CorKalom_CRAWLER_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_RUN) && (CorKalom_BringMCQBalls != LOG_SUCCESS))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_CRAWLER_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_CRAWLER_Info_15_01");	//��� �������� ��������?
	AI_Output(self,other,"GUR_1201_CorKalom_CRAWLER_Info_10_02");	//� ����� �� ��������� �������. ��� �������� �� ������� � �������� ��� ���� �� �����. �������� � ��� �� ����� - �� ������� ����.
};


instance GUR_1201_CorKalom_FIND(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = GUR_1201_CorKalom_FIND_Condition;
	information = GUR_1201_CorKalom_FIND_Info;
	important = 0;
	permanent = 0;
	description = "��� �������� ������ �������� � �����?";
};


func int GUR_1201_CorKalom_FIND_Condition()
{
	if(Npc_KnowsInfo(hero,GUR_1201_CorKalom_CRAWLER))
	{
		return 1;
	};
	return FALSE;
};

func void GUR_1201_CorKalom_FIND_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_FIND_Info_15_01");	//��� �������� ������ �������� � �����?
	AI_Output(self,other,"GUR_1201_CorKalom_FIND_Info_10_02");	//��� ����� ����� ������� ������ ����� ������. � �� ���� ������� ����, ��� � ��� �� ������ ������. �� ����� � ����� ����� ������� �������������� ������.
	AI_Output(other,self,"GUR_1201_CorKalom_FIND_Info_15_03");	//��, ��� ����� ����� �����.
};


instance Info_CorKalom_BringMCQBalls_Success(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_CorKalom_BringMCQBalls_Success_Condition;
	information = Info_CorKalom_BringMCQBalls_Success_Info;
	permanent = 0;
	description = "� ����� ���� �� ������ �������� ��������.";
};


func int Info_CorKalom_BringMCQBalls_Success_Condition()
{
	if(Npc_HasItems(hero,ItAt_Crawlerqueen) >= 3)
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_BringMCQBalls_Success_Info()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_15_01");	//� ����� ���� �� ������ �������� ��������.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_10_02");	//� ���� ���! ��� ������� ���� ������ �������! � ��� ������������ ����� �������� ������ ���� ����� �������! 
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_10_03");	//�����������! ������ � ����� ������� �������, ������� ������� ��� �������� �������!
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_15_04");	//� ��� ������ �������?
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_10_05");	//��, ��... ��������� ����!
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_15_06");	//� ���� � ���� ����� ����� ������������...
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_10_07");	//������, ������. ���� �� ������?
	CorKalom_BringMCQBalls = LOG_SUCCESS;
	B_GiveInvItems(hero,self,ItAt_Crawlerqueen,3);
	Npc_RemoveInvItems(self,ItAt_Crawlerqueen,3);
	B_GiveXP(XP_BringMCEggs);
	B_LogEntry(CH2_MCEggs,"� ��� ��� ������ ��� ���� ��������. �� ��� ������ ������������: ��� �������� ������ ����������� ���� �������!");
	Log_SetTopicStatus(CH2_MCEggs,LOG_SUCCESS);
	B_LogEntry(CH1_GotoPsiCamp,"� ������, ��� ������ ���� ���������� � ����� �����. ����� ������������ � ��������.");
	B_LogEntry(CH1_GoToPsi,"� ������, ��� ������ ���� ���������� � ����� �����. ���� ���������� ������ ��� ����, ��� ������ ������� � ������ ������.");
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
	Info_AddChoice(Info_CorKalom_BringMCQBalls_Success,"����.",Info_CorKalom_BringMCQBalls_Success_RUNE);
	Info_AddChoice(Info_CorKalom_BringMCQBalls_Success,"������.",Info_CorKalom_BringMCQBalls_Success_WAFFE);
	Info_AddChoice(Info_CorKalom_BringMCQBalls_Success,"�������� �������.",Info_CorKalom_BringMCQBalls_Success_HEAL);
	Info_AddChoice(Info_CorKalom_BringMCQBalls_Success,"����.",Info_CorKalom_BringMCQBalls_Success_ORE);
	Info_AddChoice(Info_CorKalom_BringMCQBalls_Success,"����.",Info_CorKalom_BringMCQBalls_Success_MANA);
};

func void Info_CorKalom_BringMCQBalls_Success_RUNE()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_RUNE_15_01");	//����.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_RUNE_10_02");	//����� ���� ��� ������� ���� ����!
	CreateInvItem(self,ItArRuneLight);
	B_GiveInvItems(self,hero,ItArRuneLight,1);
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
};

func void Info_CorKalom_BringMCQBalls_Success_WAFFE()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_WAFFE_15_01");	//������.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_WAFFE_10_02");	//����� ��� ������ �������� ���� ����� ������!
	CreateInvItem(self,ItMw_1H_Mace_War_03);
	B_GiveInvItems(self,hero,ItMw_1H_Mace_War_03,1);
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
};

func void Info_CorKalom_BringMCQBalls_Success_HEAL()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_HEAL_15_01");	//�������� �������.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_HEAL_10_02");	//�� ������� �� ���� ����� � ������ ���������!
	CreateInvItem(self,ItFo_Potion_Health_Perma_01);
	B_GiveInvItems(self,hero,ItFo_Potion_Health_Perma_01,1);
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
};

func void Info_CorKalom_BringMCQBalls_Success_ORE()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_ORE_15_01");	//����.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_ORE_10_02");	//����� ��� ���� � ���� ��������������� ����� ��������!
	CreateInvItems(self,ItMiNugget,100);
	B_GiveInvItems(self,hero,ItMiNugget,100);
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
};

func void Info_CorKalom_BringMCQBalls_Success_MANA()
{
	AI_Output(other,self,"Mis_2_PSI_Kalom_BringMCQEggs_Success_MANA_15_01");	//����.
	AI_Output(self,other,"Mis_2_PSI_Kalom_BringMCQEggs_Success_MANA_10_02");	//����� ���� ������� ������ ���������� �����, ���������� ������ ����!
	CreateInvItem(self,ItFo_Potion_Mana_Perma_01);
	B_GiveInvItems(self,hero,ItFo_Potion_Mana_Perma_01,1);
	Info_ClearChoices(Info_CorKalom_BringMCQBalls_Success);
};


instance Info_CorKalom_BringBook(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_CorKalom_BringBook_Condition;
	information = Info_CorKalom_BringBook_Info;
	permanent = 0;
	description = "�����, �� ������ ��������� ������� ����� ������?";
};


func int Info_CorKalom_BringBook_Condition()
{
	if(CorKalom_BringMCQBalls == LOG_SUCCESS)
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_BringBook_Info()
{
	AI_Output(other,self,"Info_CorKalom_BringBook_Info_15_01");	//�����, �� ������ ��������� ������� ����� ������?
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_02");	//���! � ��� �� ����� ������� �������� ������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_03");	//������� ������ �� ���� ���������� �������.
	AI_Output(other,self,"Info_CorKalom_BringBook_Info_15_04");	//�� ������ �������, ��� � ������� ��� ���� �������?
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_05");	//���, �������� ����. ���� ��������, � ������� ���������� ��� ����������� ��� ������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_06");	//� ����� ��� ����� � ��������, ���� ���� �� ������� ������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_07");	//�� ��� ���� �������� �� ���� �� ������� ������ � �����������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_08");	//�� ������ � ������� ������, �������. ��� ��������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_09");	//�� ������ ����, �� � ��� ��� ��� ���� ����. �� ������ ������� ��������� ��������.
	AI_Output(self,other,"Info_CorKalom_BringBook_Info_10_10");	//�������� � ���. ��� ������ ����� ����� ������.
	CorKalom_BringBook = LOG_RUNNING;
	Log_CreateTopic(CH2_Book,LOG_MISSION);
	Log_SetTopicStatus(CH2_Book,LOG_RUNNING);
	B_LogEntry(CH2_Book,"��� ������ ����� ��������� ������� ��� ���������� ���������. ��� ����� �� ������������� ������-��������. ��������� ����� �� ���� �� �������, � ������� ������� ��������. ������ �� ���� �� �������� ������� ����-������, ��� ����� �� ��� ������� �����.");
	Info_ClearChoices(Info_CorKalom_BringBook);
	Info_AddChoice(Info_CorKalom_BringBook,DIALOG_BACK,Info_CorKalom_BringBook_BACK);
	Info_AddChoice(Info_CorKalom_BringBook,"��� � ������ �� ���?",Info_CorKalom_BringBook_EARN);
	Info_AddChoice(Info_CorKalom_BringBook,"��� ������� ��������?",Info_CorKalom_BringBook_WHO);
	Info_AddChoice(Info_CorKalom_BringBook,"��� � ���� ����� ������?",Info_CorKalom_BringBook_WHERE);
};

func void Info_CorKalom_BringBook_BACK()
{
	Info_ClearChoices(Info_CorKalom_BringBook);
};

func void Info_CorKalom_BringBook_WHERE()
{
	AI_Output(other,self,"Info_CorKalom_BringBook_Where_15_01");	//��� � ���� ����� ������?
	AI_Output(self,other,"Info_CorKalom_BringBook_Where_10_02");	//�� ������� ��� � �������� ����� - ��� �� �������� ��������� ����� ������ ���.
};

func void Info_CorKalom_BringBook_WHO()
{
	AI_Output(other,self,"Info_CorKalom_BringBook_Who_15_01");	//��� ������� ��������?
	AI_Output(self,other,"Info_CorKalom_BringBook_Who_10_02");	//����� ������, ��� �� ���� ������ ������ �������. ��� ��������� �������, �� ��� �� ������ �������������. 
};

func void Info_CorKalom_BringBook_EARN()
{
	AI_Output(other,self,"Info_CorKalom_BringBook_Earn_15_01");	//��� � ������ �� ���?
	AI_Output(self,other,"Info_CorKalom_BringBook_Earn_10_02");	//����� � ��� �� ������� ���� ���� ��������? �� �������� ��������� �������.
};


instance Info_CorKalom_BringBook_Success(C_Info)
{
	npc = GUR_1201_CorKalom;
	condition = Info_CorKalom_BringBook_Success_Condition;
	information = Info_CorKalom_BringBook_Success_Info;
	permanent = 0;
	description = "� ����� �����.";
};


func int Info_CorKalom_BringBook_Success_Condition()
{
	if(Npc_HasItems(hero,ItWrFokusbuch) && (CorKalom_BringBook == LOG_RUNNING))
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_BringBook_Success_Info()
{
	AI_Output(other,self,"Info_CorKalom_BringBook_Success_15_01");	//� ����� �����.
	AI_Output(self,other,"Info_CorKalom_BringBook_Success_10_02");	//�������� ������! ������ � ��� ���� ���, ��� �����.
	AI_Output(self,other,"Info_CorKalom_BringBook_Success_10_03");	//������ � ������� ��������� �������������.
	AI_Output(other,self,"Info_CorKalom_BringBook_Success_15_04");	//��� ��������� ���������?
	AI_Output(self,other,"Info_CorKalom_BringBook_Success_10_05");	//������� ���� � ������� �� ���� �����. �� ��������� ���, ��� ���� ����� �������� �������� �������.
	B_GiveInvItems(hero,self,ItWrFokusbuch,1);
	Npc_RemoveInvItem(self,ItWrFokusbuch);
	B_GiveXP(XP_BringBook);
	CorKalom_BringBook = LOG_SUCCESS;
	B_LogEntry(CH2_Book,"����� ���� ��� � ������ �������� ��� ������, ��  ����� ���������� � ������ �������. ��������� ������ ���������� �� �������� �������. �����.");
	Log_SetTopicStatus(CH2_Book,LOG_SUCCESS);
	AI_StopProcessInfos(self);
	B_Story_PrepareRitual();
};


instance Info_CorKalom_Belohnung(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 1;
	condition = Info_CorKalom_Belohnung_Condition;
	information = Info_CorKalom_Belohnung_Info;
	permanent = 0;
	description = "��� ������ ������?";
};


func int Info_CorKalom_Belohnung_Condition()
{
	if(Npc_KnowsInfo(hero,Info_CorKalom_BringBook_Success))
	{
		return 1;
	};
	return FALSE;
};

func void Info_CorKalom_Belohnung_Info()
{
	AI_Output(other,self,"Info_CorKalom_Belohnung_15_00");	//��� ������ ������?
	AI_Output(self,other,"Info_CorKalom_Belohnung_10_01");	//���� �� ������?
	Info_ClearChoices(Info_CorKalom_Belohnung);
	Info_AddChoice(Info_CorKalom_Belohnung,"���������� ������.",Info_CorKalom_Belohnung_SCROLL);
	Info_AddChoice(Info_CorKalom_Belohnung,"����.",Info_CorKalom_Belohnung_ORE);
	Info_AddChoice(Info_CorKalom_Belohnung,"���������� �������.",Info_CorKalom_Belohnung_MANA);
};

func void Info_CorKalom_Belohnung_SCROLL()
{
	AI_Output(other,self,"Info_CorKalom_Belohnung_SCROLL_15_00");	//����� ��� ��� ������ � ������������.
	AI_Output(self,other,"Info_CorKalom_Belohnung_SCROLL_10_01");	//��������� ��� ���������� �����.
	CreateInvItems(self,ItArScrollSleep,3);
	B_GiveInvItems(self,hero,ItArScrollSleep,3);
	Info_ClearChoices(Info_CorKalom_Belohnung);
};

func void Info_CorKalom_Belohnung_ORE()
{
	AI_Output(other,self,"Info_CorKalom_Belohnung_ORE_15_00");	//��� �� ����������� ����.
	AI_Output(self,other,"Info_CorKalom_Belohnung_ORE_10_01");	//��� ������������ ���� ������� � ��������.
	CreateInvItems(self,ItMiNugget,300);
	B_GiveInvItems(self,hero,ItMiNugget,300);
	Info_ClearChoices(Info_CorKalom_Belohnung);
};

func void Info_CorKalom_Belohnung_MANA()
{
	AI_Output(other,self,"Info_CorKalom_Belohnung_MANA_15_00");	//��� ����� ���������� ��������.
	AI_Output(self,other,"Info_CorKalom_Belohnung_MANA_10_01");	//�� �������� ��� ���� ����!
	CreateInvItems(self,ItFo_Potion_Mana_02,5);
	B_GiveInvItems(self,hero,ItFo_Potion_Mana_02,5);
	Info_ClearChoices(Info_CorKalom_Belohnung);
};


instance GUR_1201_CorKalom_Exit(C_Info)
{
	npc = GUR_1201_CorKalom;
	nr = 999;
	condition = GUR_1201_CorKalom_Exit_Condition;
	information = GUR_1201_CorKalom_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int GUR_1201_CorKalom_Exit_Condition()
{
	return 1;
};

func void GUR_1201_CorKalom_Exit_Info()
{
	AI_Output(other,self,"GUR_1201_CorKalom_Exit_15_01");	//�� �������!
	AI_Output(self,other,"GUR_1201_CorKalom_Exit_10_02");	//�� ��������� ���� ������!
	AI_StopProcessInfos(self);
};

